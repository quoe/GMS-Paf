//SHOW_MESSAGE_script1
//script_execute(SHOW_MESSAGE_script1, 0, 0, "Caption", "Text");
global.message_panel_caption = "";
global.message_panel_text = "";

global.show_panel_message = true;

if !global.show_panel_message exit;

if argument0 == 0 
    base_x = view_wport[0]/2;
else
    base_x = argument0;
    
if argument1 == 0 
    base_y = view_hport[0]/2;
else
    base_y = argument1;

    
global.message_panel_caption = argument2;
//show_message(global.message_panel_caption);
global.message_panel_text = argument3;
    
panel_message = instance_create(base_x, base_y, obj_Panel_Message);


