//Resume_Game_Button_Draw_script1
draw_self();
ini_open("datafiles\Language\" + global.game_language + ".ini");

draw_text_transformed(x - sprite_width/4, y - sprite_height/3, 
    ini_read_string("MENU", "Game_Options", "Настройки"),
    image_xscale, image_yscale, image_angle);
//draw_text(x - 60, y - 30, ini_read_string("MENU", "Game_New", "Новая игра"));
ini_close();




