//ENEMY_CLASS_CollisionWithHero_script1
if argument0 == 0 
    hero = obj_Hero;
else
    hero = argument0;

if argument1 == 0 
    damage = 1;
else
    damage = argument1;
    
//-ZHIZN' + SMENA SPRAITA + NEUYAZVINOST' + PROZRACHNOST' + BLEND
//if (hero.lives > 0 && !hero.immortal && !hero.take_plastir)
//{
//    hero.lives -= damage;
//    score -= 2 * damage;
//    if score < 0
//        score = 0;
//    hero.immortal = true;
//    hero.sprite_index = spr_Heo_Pain_No_Rot;//spr_Heo_Pain_No_Rot //spr_Hero_Pain
//    hero.image_alpha = random_range(0.8, 0.9);
//    hero.image_blend = c_red;
//    
//    if hero.cut_count <= hero.max_lives 
//        hero.cut_count += 1;
//}
//else
//if hero.lives <= 0 && !hero.take_plastir
//{
//    //highscore_add(get_string("Test highscore name:", "Anonymous"), score);
//    score = 0;
//    //draw_highscore(100, 100, room_width - 100, room_height - 100);
//    game_restart();
//}
//else
//if hero.take_plastir
//{
//    hero.immortal = true;
//    hero.take_plastir = false;
//}

