//CREATE_HERO_script1
// ( object_Hero )
if argument0 == 0 
    object_Hero = obj_Hero;
else
    object_Hero = argument0;

min_random_xscale = 0.9;

obj_Create = instance_create(100, room_height/2, object_Hero);
obj_Create.image_xscale = random_range(min_random_xscale, 1);
obj_Create.image_yscale = obj_Create.image_xscale;

