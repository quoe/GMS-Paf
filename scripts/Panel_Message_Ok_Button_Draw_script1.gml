//Panel_Message_Ok_Button_Draw_script1
draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//draw_set_font(font_Jacob);
draw_text_transformed(x, y, 
    "OK",
    image_xscale, image_yscale, image_angle);
