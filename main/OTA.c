// OTA app, can be used to do an OTA from a small footprint. Also does partition update.
// Warning, moving NVS will typically mess reset all of the settings
// Copyright © 2019 Adrian Kennard, Andrews & Arnold Ltd. See LICENCE file for details. GPL 3.0
static const char TAG[] = "OTA";

#include "revk.h"
#include <esp_spi_flash.h>

static char *otaurl;

extern const uint8_t part_start[] asm ("_binary_partitions_2ota_bin_start");
extern const uint8_t part_end[] asm ("_binary_partitions_2ota_bin_end");

const char *
app_command (const char *tag, unsigned int len, const unsigned char *value)
{
   if (!strcmp (tag, "wifi") && *otaurl)
   {
      revk_ota (otaurl);
      revk_setting ("otaurl", 0, NULL); // Clear the URL
   }
   return "";
}

void
app_main ()
{
   revk_init (&app_command);
   revk_register ("otaurl", 0, 0, &otaurl, NULL, 0);
   // Update partition table if necessary
   // TODO, is it possible to simply compare the partition table with what we expect perhaps?
   const esp_partition_t *f = esp_partition_find_first (ESP_PARTITION_TYPE_APP, ESP_PARTITION_SUBTYPE_APP_FACTORY, "factory");
   const esp_partition_t *n = esp_partition_find_first (ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_NVS, "nvs");
   if (f || !n || n->size < 0xC000)
   {                            // Factory exists or nvs is smaller than expected.
      revk_error (TAG, "Updating partition table (%d) block %d", part_end - part_start, SPI_FLASH_SEC_SIZE);
      if ((part_end - part_start) > SPI_FLASH_SEC_SIZE)
         revk_error (TAG, "Block size error");
      uint8_t *mem = malloc (SPI_FLASH_SEC_SIZE);
      if (!mem)
         revk_error (TAG, "Malloc fail: %d", SPI_FLASH_SEC_SIZE);
      else
      {
         esp_err_t e;
         memset (mem, 0, SPI_FLASH_SEC_SIZE);
         memcpy (mem, part_start, part_end - part_start);
         if ((e = spi_flash_erase_range (CONFIG_PARTITION_TABLE_OFFSET, SPI_FLASH_SEC_SIZE)))
            revk_error (TAG, "Erase fail:%s", esp_err_to_name (e));
         else if ((e = spi_flash_write (CONFIG_PARTITION_TABLE_OFFSET, mem, SPI_FLASH_SEC_SIZE)))
            revk_error (TAG, "Write fail:%s", esp_err_to_name (e));
         else
            revk_restart ("New partition table loaded", 0);
      }
   }
}
