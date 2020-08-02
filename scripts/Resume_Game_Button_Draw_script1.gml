//Resume_Game_Button_Draw_script1
draw_self();
ini_open("datafiles\Language\" + global.game_language + ".ini");

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(x, y, 
    ini_read_string("MENU", "Game_Resume", "Продолжить"),
    image_xscale, image_yscale, image_angle);
//draw_text(x - 60, y - 30, ini_read_string("MENU", "Game_New", "Новая игра"));
ini_close();




