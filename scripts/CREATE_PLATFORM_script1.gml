//CREATE_PLATFORMS 
//(current_enemy_sprite_width, enemy_x)
if argument0 == 0 
    current_enemy_sprite_width = random(200);
else
    current_enemy_sprite_width = argument0;
    
if argument1 == 0 
    enemy_x = random(room_width);
else
    enemy_x = argument1;

//ARRAY OF PLATFORMS
array_of_platform[0] = obj_Platform_Flower;
array_of_platform[1] = obj_Platform_Flower;

wview_index = 0;
min_random_xscale = 0.3;
min_random_angle = 5;
//show_message("CREATE_PLATFORM_script1#" + string(array_length_1d(array_of_enemy)));
//show_message("CREATE_PLATFORM_script1#" + string(view_wview[wview_index]));//Shirina vida

platform = irandom_range(1, array_length_1d(array_of_platform)) - 1;

//show_message("CREATE_ENEMY_script1#" + string(current_enemy_sprite_width));    
platforms_create = instance_create(random_range(enemy_x - current_enemy_sprite_width/2,
    enemy_x + current_enemy_sprite_width/2), 
    random_range((2/3) * room_height, room_height + 20), 
    array_of_platform[platform]);
platforms_create.image_xscale = random_range(min_random_xscale, 1);
platforms_create.image_yscale = platforms_create.image_xscale;
platforms_create.image_angle = random_range(-min_random_angle/10, min_random_angle/10);
if irandom(3) = 0
    platforms_create.image_xscale = -1;
    

