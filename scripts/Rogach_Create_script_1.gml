//defaults
/*
arg0 - rogach_gravity = 0.5
arg1 - rogach_ready_range = 400
arg2 - rogach_attack_range = 500
arg3 - rogach_vspeed = 10
*/

if argument0 == 0 
    rogach_gravity = random_range(0.5, 1)
else
    rogach_gravity = random_range(argument0, (1/0.5) * argument0);
    
if argument1 == 0 
    rogach_ready_range = random_range(200, 400);
else
    rogach_ready_range = random_range(argument1, (400/200) * argument1);
    
if argument2 == 0 
    rogach_attack_range = random_range(50, 200);
else
    rogach_attack_range = random_range(argument2, (200/50) * argument2);
    
if argument3 == 0 
    rogach_vspeed = random_range(5, 10)
else
    rogach_vspeed = random_range(argument3, (10/5) * argument3);

rogach_rage = false;
rogach_attack = false;

gravity = rogach_gravity;
gravity_direction = -90;
