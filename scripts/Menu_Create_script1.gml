//MENU_Create_script1
draw_set_color(c_black);
//draw_set_font(font_Betina);
draw_set_font(font_Jacob);

menu_sound = snd_1_;

if !audio_is_playing(menu_sound)
   {
   audio_play_sound(menu_sound, 90, true);
   audio_sound_gain(menu_sound, 0.4, 0);
   }

if file_exists("datafiles\Language\ru.ini")
{
    //show_message("MENU_Create_script1#y");
}
    
randomize(); 

global.show_panel_message = false;

switch (os_get_language())
{
   case "ar": global.game_language = "ar"; break;   //Arabic ar 
   case "zh": global.game_language = "zh"; break;   //Chinese zh 
   case "da": global.game_language = "da"; break;   //Danish da 
   case "en": global.game_language = "en"; break;   //English en 
   case "fr": global.game_language = "fr"; break;   //French fr 
   case "de": global.game_language = "de"; break;   //German de 
   case "el": global.game_language = "el"; break;   //Greek el 
   case "it": global.game_language = "it"; break;   //Italian it 
   case "ja": global.game_language = "ja"; break;   //Japanese ja 
   case "no": global.game_language = "no"; break;   //Norwegian no 
   case "pl": global.game_language = "pl"; break;   //Polish pl 
   case "pt": global.game_language = "pt"; break;   //Portuguese pt 
   case "ru": global.game_language = "ru"; break;   //Russian ru 
   case "es": global.game_language = "es"; break;   //Spanish es 
   case "sv": global.game_language = "sv"; break;   //Swedish sv 

   default: global.game_language = "en"; break;
}

//show_message("MENU_Create_script1#" + global.game_language);

