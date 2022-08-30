// OTA app, can be used to do an OTA from a small footprint. Also does partition update.
// Warning, moving NVS will typically mess reset all of the settings
// Copyright © 2019 Adrian Kennard, Andrews & Arnold Ltd. See LICENCE file for details. GPL 3.0
static const char __attribute__((unused)) TAG[] = "OTA";

#include "revk.h"
#include <esp_spi_flash.h>

static char *otaurl;

const char *app_callback(int client, const char *prefix, const char *target, const char *suffix, jo_t j)
{
   if (!strcmp(suffix, "wifi") && *otaurl)
   {
	revk_command("upgrade",NULL);
   }
   return "";
}

void app_main()
{
   revk_boot(&app_callback);
   revk_register("otaurl", 0, 0, &otaurl, NULL, 0);
   revk_start();
}
