//Panel_Message_Ok_Button_LeftReleased_script1
global.show_panel_message = false;

with (instance_find(obj_Panel_Message, instance_number(obj_Panel_Message)))
   {
    instance_destroy();
   }

instance_destroy();
