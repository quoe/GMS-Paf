#define api_init
global._api_init = external_define(temp_directory+"\LPWinAPI\LPWinAPI.dll","api_init",dll_cdecl,ty_real,1,ty_real);
global._api_deinit = external_define(temp_directory+"\LPWinAPI\LPWinAPI.dll","api_deinit",dll_cdecl,ty_real,0);
external_call(global._api_init,window_handle());
#define api_deinit
external_call(global._api_deinit);
external_free(global._api_dir);