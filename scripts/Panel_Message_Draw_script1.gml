//Panel_Message_Draw_script1
if global.show_panel_message
{
    draw_self();
    
    ok_button = obj_Panel_Message_Ok_Button;
    panel_message_ok_button = instance_create(x, y + 65, ok_button);
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    mess_capt = string(global.message_panel_caption);
    mess_text = string(global.message_panel_text);
    //show_message(mess_capt + mess_text);
    //draw_set_font(font_Jacob);
    draw_sprite(spr_Line, 1, x, y - 55);
    
    draw_text(x, y - 85, mess_capt);

    draw_text(x, y - 15, mess_text);
    
    //draw_set_font(font_Betina);
}
