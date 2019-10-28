// Dumb OTA app
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
   if (esp_partition_find_first (ESP_PARTITION_TYPE_APP, ESP_PARTITION_SUBTYPE_ANY, "factory"))
   {                            // Factory exists, we want to change to new partition table.
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
         {
            revk_info (TAG, "Partition table loaded");
            revk_restart ("OTA complete", 5);
         }
      }
   }
}
