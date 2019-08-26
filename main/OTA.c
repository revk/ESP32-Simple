// Dumb OTA app

#include "revk.h"

static char    *otaurl;

const char     *
app_command(const char *tag, unsigned int len, const unsigned char *value)
{
	if (!strcmp(tag, "wifi") && *otaurl)
	{
		revk_ota(otaurl);
		revk_setting("otaurl",0,NULL); // Clear the URL
	}
	return "";
}

void
app_main()
{
	revk_init(&app_command);
	revk_register("otaurl", 0, 0, &otaurl, NULL, 0);
}
