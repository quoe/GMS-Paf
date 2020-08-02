//ENEMY_CLASS_Alarm0_script1
if argument0 == 0 
    hero = obj_Hero;
else
    hero = argument0;
    
hero.immortal = false;
show_message(hero.immortal);
hero.image_alpha = 1;
hero.image_blend = c_white; //original blend

//game_restart();
