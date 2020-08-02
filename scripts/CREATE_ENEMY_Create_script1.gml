array_of_enemy[0] = obj_Rogach;
//show_message("CREATE_ENEMY_Create_script1#" + array_length_1d(array_of_enemy));

enemy = irandom_range(1, array_length_1d(array_of_enemy)) - 1;
if instance_number(array_of_enemy[enemy]) < 10    {
   instance_create(random(room_width), random(room_height), array_of_enemy[enemy]);
   }
