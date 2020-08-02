//CREATE_ENEMY_script1
//(max_enemys, array_of_enemy[0] ... )
//ARRAY OF ENEMYS
if argument0 == 0 
    max_enemys = irandom_range(10, 20);
else
    max_enemys = random_range(argument0, 2 * argument0);
    
if argument1 == 0 
    array_of_enemy[0] = 0;
else
    array_of_enemy[0] = argument1;
    
if argument2 == 0 
    array_of_enemy[1] = 0;
else
    array_of_enemy[1] = argument2;
    
if argument3 == 0 
    array_of_enemy[2] = 0;
else
    array_of_enemy[2] = argument3;
    
if argument4 == 0 
    array_of_enemy[3] = 0;
else
    array_of_enemy[3] = argument4;

wview_index = 0;
min_random_xscale = 0.3;
min_random_angle = 5;
//show_message("CREATE_ENEMY_script1#" + string(array_length_1d(array_of_enemy))); obj_Rogach
//show_message("CREATE_ENEMY_script1#" + string(view_wview[wview_index]));//Shirina vida

//enemy = irandom_range(1, array_length_1d(array_of_enemy)) - 1;



for (var j = 0; j < array_length_1d(array_of_enemy); j++)
{
    i = 0;
    if array_of_enemy[j] <> 0
    {
        while instance_number(array_of_enemy[j]) < max_enemys + irandom(max_enemys/2)
        {
            enemys_array[i] = instance_create(random_range(view_wview[wview_index] + view_wview[wview_index]/6, 
                room_width), random_range(room_height/2.5, room_height/2.2), array_of_enemy[j]);
            rand_scale = random_range(min_random_xscale, 1);
            enemys_array[i].image_xscale = rand_scale;
            enemys_array[i].image_yscale = rand_scale;
            enemys_array[i].image_angle = random_range(-min_random_angle, min_random_angle);
            if irandom(1) = 0
            {
                enemys_array[i].image_xscale = -1;
            }
            /*
            current_enemy_sprite_width = sprite_get_width(enemys_array[i].sprite_index);
            //show_message("CREATE_ENEMY_script1#" + string(current_enemy_sprite_width));    
            platforms_array[i] = instance_create(random_range(enemys_array[i].x - current_enemy_sprite_width/2,
                enemys_array[i].x + current_enemy_sprite_width/2), 
                random_range((2/3) * room_height, room_height + 20), 
                array_of_platform[platform]);
            platforms_array[i].image_xscale = random_range(min_random_xscale, 1);
            platforms_array[i].image_yscale = platforms_array[i].image_xscale;
            platforms_array[i].image_angle = random_range(-min_random_angle/10, min_random_angle/10);
            if irandom(3) = 0
                platforms_array[i].image_xscale = -1;
            */
            current_enemy_sprite_width = sprite_get_width(enemys_array[i].sprite_index);
            script_execute(CREATE_PLATFORM_script1, current_enemy_sprite_width, enemys_array[i].x);
            
            i++;
        }
        //enemy = irandom_range(1, array_length_1d(array_of_enemy)) - 1;
    }
}

