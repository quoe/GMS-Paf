//CONTROLS_DrawGUI_script1
if argument0 == 0 
    x_delta = 50;
else
    x_delta = argument0;
    
if argument1 == 0 
    y_delta = 30;
else
    y_delta = argument1;

if argument2 == 0 
    panel_sprite = spr_Panel;
else
    panel_sprite = argument1;
    
if pause
{
    
    instance_deactivate_all(true);//PAUSE
    //show_message(view_wview[0]/2);
    draw_sprite(panel_sprite, 0, view_wport[0]/2 - 3 * x_delta, view_hport/2 - y_delta); 
    draw_sprite(panel_sprite, 0, view_wport[0]/2 - 3 * x_delta, view_hport/2 - y_delta + sprite_get_height(panel_sprite)/2);
    
    for (var i = 1; i < 3 ; i++)
    {
        draw_sprite(panel_sprite, 1,  (view_wport[0]/2 - 3 * x_delta) + i * sprite_get_width(panel_sprite), view_hport/2 - y_delta);    //DRAW PANEL
        draw_sprite(panel_sprite, 1,  (view_wport[0]/2 - 3 * x_delta) + i * sprite_get_width(panel_sprite), view_hport/2 - y_delta + sprite_get_height(panel_sprite)/2);    //DRAW PANEL
    }
    
    ini_open("datafiles\Language\" + global.game_language + ".ini");
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(view_wport[0]/2 - x_delta, view_hport/2 - y_delta, ini_read_string("STATE", "Pause", "Пауза"));
    draw_text(view_wport[0]/2 - x_delta - x_delta/2, view_hport/2 - y_delta + 50, ini_read_string("STATE", "Resume", "Возобновить"));
    
    ini_close();
    
}

