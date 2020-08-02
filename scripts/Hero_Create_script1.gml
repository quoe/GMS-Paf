//Hero_Create_script1
//HEALTH
if argument0 == 0 
    hero_health = 100;
else
    hero_health = argument0;
//LIVES
if argument1 == 0 
    hero_lives = 3;//3
else
    hero_lives = argument1;
//HSPEED
if argument2 == 0 
    hspeed = random_range(4.9, 5.1);
else
    hspeed = random_range(argument2, (5.1/4.9) * argument2); 
//GRAVITY
if argument3 == 0 
{
    gravity = random_range(0.1, 0.15);
    gravity_direction = -90;
}
else
{
    gravity = random_range(argument3, (0.15/0.1) * argument3);
    gravity_direction = -90;
}   
//MAX LIVES
if argument4 == 0 
    max_lives = 3;//3
else
    max_lives = argument4;
    
sprite_index = spr_Hero_Idle;

cut_count = 0;

immortal = false;//Neuyazvimost' pri ranenii

get_health = false; //Podobral lechenie

take_plastir = false;

if hero_lives <= max_lives
{
    lives = hero_lives;
}

//RASPOLOZHENIE RAN (NACHALO)
//show_message("Hero_Create_script1#" + string((max_lives/3)));
i = 0;
while i < max_lives
{
    cut_allow_x[i] = -35;
    cut_allow_y[i] = 15;
    
    cut_allow_x[i + 1] = 60;
    cut_allow_y[i + 1] = 25;
    
    cut_allow_x[i + 2] = -25;
    cut_allow_y[i + 2] = -50;
    
    i += 3;
}
cut_x_min = 5;
cut_y_min = 5;
for (var i = 0; i < max_lives; i++)
{
    cut_x[i] = cut_allow_x[i] + random_range(-cut_x_min, cut_x_min);
    cut_y[i] = cut_allow_y[i] + random_range(-cut_y_min, cut_y_min);
    cut_image_angle[i] = random(360);
    cut_image_xscale[i] = random_range(0.7, 1);
    cut_image_alpha[i] = random_range(0.6, 0.9);
    cut_image_index[i] = irandom_range(0, sprite_get_number(spr_Hero_Cut) - 1);
}
//RASPOLOZHENIE RAN (KONEC)

