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
#define BLOCK SPI_FLASH_SEC_SIZE        // flash block size
#define BLOCK_START (CONFIG_PARTITION_TABLE_OFFSET / BLOCK * BLOCK)
#define PART_OFFSET (CONFIG_PARTITION_TABLE_OFFSET-BLOCK_START)
#define	PART_SIZE (part_end-part_start)
      revk_error (TAG, "Updating partition table (%d) block %d", PART_SIZE, BLOCK);
      if (PART_OFFSET + PART_SIZE > BLOCK)
         revk_error (TAG, "Block size error");
      uint8_t *mem = malloc (BLOCK);
      if (!mem)
         revk_error (TAG, "Malloc fail: %d", BLOCK);
      esp_err_t e;
      if ((e = spi_flash_read (BLOCK_START, mem, BLOCK)))
         revk_error (TAG, "Read fail:%s", esp_err_to_name (e));
      memcpy (mem + PART_OFFSET, part_start, PART_SIZE);
      if ((e = spi_flash_erase_range (BLOCK_START, BLOCK)))
         revk_error (TAG, "Erase fail:%s", esp_err_to_name (e));
      if ((e = spi_flash_write (BLOCK_START, mem, BLOCK)))
         revk_error (TAG, "Write fail:%s", esp_err_to_name (e));

      esp_restart ();
   }
}
