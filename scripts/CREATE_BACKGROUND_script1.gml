//CREATE_BACKGROUND_script1
//(backgr_array[0], backgr_array[1] ... )
//OBJECTS
if argument0 == 0 
    backgr_array[0] = obj_Flower_1;
else
    backgr_array[0] = argument0;
    
if argument1 == 0 
    backgr_array[1] = obj_Flower_2;
else
    backgr_array[1] = argument1;

min_random_xscale = 0.4;
min_random_angle = 10;

element = irandom_range(0, array_length_1d(backgr_array) - 1);


element_width = sprite_get_width(backgr_array[element]);
//PRIMERNOE KOL-VO ELEMENTOV
count = round(room_width/element_width);
//show_message("CREATE_BACKGROUND_script1#" + "Shirina:" + string(element_width) + "#Kol-vo: " + string(count));
    
//ZAPOLNENIE ZADNEGO FONA
for (var i = 0; i < count + random_range(count/4, count/2) ; i++)
{
    rand_x = random(room_width);
    rand_y = room_height + random(20) - 10;
    //show_message("CREATE_BACKGROUND_script1#" + string(rand_x) + " " + string(rand_y));
    Obj_Array[i] = instance_create(rand_x, rand_y, backgr_array[element]);
    Obj_Array[i].image_xscale = random_range(min_random_xscale, 1);
    Obj_Array[i].image_yscale = Obj_Array[i].image_xscale;
    Obj_Array[i].image_angle = random_range(-min_random_angle, min_random_angle);
    element = irandom_range(0, array_length_1d(backgr_array) - 1);
}
