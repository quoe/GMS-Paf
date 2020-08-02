//Options_Draw_script1

notebook_sprite = spr_notebook;
pen_sprite = spr_pen;
sterka_sprite = spr_silwertouch;
flomaster_sprite = spr_flomaster;

notebook_sprite_xscale = 0.9;
notebook_sprite_yscale = notebook_sprite_xscale;


draw_sprite_ext(pen_sprite, image_index, view_wport[0] - 60, view_hport/2 + 60, 
1, 1, -8, image_blend, image_alpha); 

draw_sprite_ext(sterka_sprite, 0, 80, 80, 
0.5, 0.5, -10, image_blend, image_alpha); 

draw_sprite_ext(flomaster_sprite, 0, 400, view_wport[0] - 100, 
0.9, 0.9, 20, image_blend, image_alpha); 

draw_text(view_wport[0]/2 - 60, view_hport/2 - 60, "1#1#2#3");
