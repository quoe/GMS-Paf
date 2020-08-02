//BUTTON_CLASS_Create_script1
if argument0 == 0 
    button_sprite = spr_Button;
else
    button_sprite = argument0;
    
show_panel_message = false;

button_min_angle = 5;

//show_message("BUTTON_CLASS_Create_script1#" + string(sprite_get_number(button_sprite)));
element = irandom_range(0, sprite_get_number(button_sprite) - 1);

image_speed = 0;

image_index = element;

image_angle = random_range(-button_min_angle, button_min_angle);
