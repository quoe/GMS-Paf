//Hero_DrawGUI_script1
// ( heart_sprite,  base_x, base_y )
if argument0 == 0 
    heart_sprite = spr_Hearts;
else
    heart_sprite = argument0;

if argument1 == 0 
    base_x = 50;
else
    base_x = argument1;
    
if argument2 == 0 
    base_y = 30;
else
    base_y = argument2;
    
if argument3 == 0 
    panel_sprite = spr_Panel;
else
    panel_sprite = argument3;
    
if argument4 == 0 
    clip_sprite = spr_Clip_50;
else
    clip_sprite = argument4;
    
min_random_xscale = 0.8;
min_random_angle = 5;
max_hp = 100;

heart_width = sprite_get_width(heart_sprite);
delta_x = heart_width + heart_width/9;
delta_y = 0;
//element = irandom_range(0, sprite_get_number(heart_sprite) - 1);
//show_message("Hero_DrawGUI_script1#" + string(sprite_get_number(heart_sprite)));
element = 0;

new_x = 0;
new_y = 0;

draw_sprite(panel_sprite, 0, 0, 0);    //DRAW PANEL
for (var i = 1; i < round(lives/6) + 3; i++)
{
    draw_sprite(panel_sprite, 1, i * sprite_get_width(panel_sprite), 0);    //DRAW PANEL
}

draw_set_color(c_black);
//draw_set_font(font_Betina);
draw_set_font(font_Jacob);
ini_open("datafiles\Language\" + global.game_language + ".ini");

draw_set_halign(fa_left);
draw_set_valign(fa_center);

draw_text_ext(base_x, base_y, ini_read_string("PANEL", "Lives", "Жизни") + ": #" + 
    ini_read_string("PANEL", "Money", "Монетки") + ": " + string(score), 30, 300);
//draw_text(base_x + 5, base_y , ini_read_string("PANEL", "Money", "Монетки") + ": " + string(score));

//ini_write_string("Panel", "Lives", "Жизни:");
ini_close();

draw_sprite(clip_sprite, -1, 22, 0); //DRAW SKREPKA

//draw_text(base_x - 90, base_y + 5, "Money:");
//draw_text(base_x - 90, base_y + 10, "Lives:");

for (var i = 0; i < lives ; i++)
{
    
    draw_sprite(heart_sprite, i, base_x + 100 + new_x, base_y - 10 + new_y);

    new_x += delta_x;
    new_y += delta_y;
}

/*
healthbar = (health / max_hp) * 100;
draw_healthbar(100, 100, 500, 200, healthbar, c_black, c_red, c_lime, 0, true, true)
*/




