//Plastir_Draw_script1
draw_self();

if argument0 == 0 
    hero = obj_Hero;
else
    hero = argument0;
    
if argument1 == 0 
    Plastir_spr = spr_Plastir;
else
    Plastir_spr = argument1;

if hero.take_plastir
draw_sprite_ext(Plastir_spr, 0, hero.x + hero.cut_x[0], hero.y + hero.cut_y[0], 
            0.5, 0.5, hero.cut_image_angle[0],
            image_blend, hero.cut_image_alpha[0]);
