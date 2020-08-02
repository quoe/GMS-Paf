//Panel_Message_Cancel_Button_Draw_script1
draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//draw_set_font(font_Jacob);
ini_open("datafiles\Language\" + global.game_language + ".ini");

draw_text_transformed(x, y, 
    ini_read_string("SHOW MESSAGE", "Close", "Отмена"),
    image_xscale, image_yscale, image_angle);
    
ini_close();
