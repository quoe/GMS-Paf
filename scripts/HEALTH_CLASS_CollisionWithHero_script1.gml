//HEALTH_CLASS_CollisionWithHero_script1
if argument0 == 0 
    hero = obj_Hero;
else
    hero = argument0;

if argument1 == 0 
    health_power = 1;
else
    health_power = argument1;
    
if (hero.lives < hero.max_lives)
{
    hero.lives += health_power;
    hero.get_health = true;
    //score -= 2 * damage;

    //hero.sprite_index = spr_Heo_Pain_No_Rot;//spr_Heo_Pain_No_Rot //spr_Hero_Pain
    hero.image_alpha = random_range(0.8, 0.9);
    col = make_color_rgb(22, 222, 0); 
    hero.image_blend = col;
    instance_destroy();
    
    if hero.cut_count > 0   //= hero.max_lives 
        hero.cut_count -= 1;
}

