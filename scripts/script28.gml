//CONTROLS_DrawGUI_script1
if argument0 == 0 
    x_delta = 50;
else
    x_delta = argument0;
    
if argument1 == 0 
    y_delta = 30;
else
    y_delta = argument1;

if pause
{
    
    instance_deactivate_all(true);//PAUSE
    //show_message(view_wview[0]/2);
    ini_open("datafiles\Language\" + global.game_language + ".ini");
    draw_text(view_wport[0]/2 - x_delta, view_hport/2 - y_delta, ini_read_string("STATE", "Pause", "Пауза"));
    draw_text(view_wport[0]/2 - x_delta, view_hport/2 - y_delta + 50, ini_read_string("STATE", "Resume", "Возобновить"));
    
    ini_close();
    
}

