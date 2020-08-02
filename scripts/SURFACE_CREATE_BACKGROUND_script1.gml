//SURFACE_CREATE_BACKGROUND_script1
//NOT USED + NOT WORK!!!
//(backgr_array[0], backgr_array[1] ... )
//OBJECTS
if argument0 == 0 
    backgr_array[0] = spr_Flower_1;
else
    backgr_array[0] = argument0;
    
if argument1 == 0 
    backgr_array[1] = spr_Flower_2;
else
    backgr_array[1] = argument1;

min_random_xscale = 0.4;
min_random_angle = 20;

element = irandom_range(0, array_length_1d(backgr_array) - 1);


element_width = sprite_get_width(backgr_array[element]);
//PRIMERNOE KOL-VO ELEMENTOV
count = round(room_width/element_width);
//show_message("CREATE_BACKGROUND_script1#" + "Shirina:" + string(element_width) + "#Kol-vo: " + string(count));
    
surf = surface_create(room_width, room_height);
//ZAPOLNENIE ZADNEGO FONA
for (var i = 0; i < count + random_range(count/4, count/2) ; i++)
{

    surface_set_target(surf);
    //draw_clear_alpha(c_black, 0);
    draw_sprite_ext(backgr_array[element], -1, random(room_width), room_height + random(20) - 10, 
        random_range(min_random_xscale, 1), image_xscale, 
        random_range(-min_random_angle, min_random_angle), image_blend, image_alpha); 
    surface_reset_target();
    
    element = irandom_range(0, array_length_1d(backgr_array) - 1);
}
