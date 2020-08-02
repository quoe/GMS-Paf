//Hero_Draw_script1
draw_self();
    
if argument0 == 0 
    spr_cut = spr_Hero_Cut;
else
    spr_cut = argument0;

if argument1 == 0 
    show_cut = true;
else
    show_cut = argument1;
    
//show_message("Hero_Draw_script1#" + string(x1_min));

if show_cut
{
    for (var i = 0; i < cut_count; i++)
    {
        draw_sprite_ext(spr_cut, cut_image_index[i], x + cut_x[i], y + cut_y[i], 
            cut_image_xscale[i], image_xscale, cut_image_angle[i],
            image_blend, cut_image_alpha[i]);
        /*show_debug_message("Hero_Draw_script1#" + string(cut_count) + " " +
        string(cut_image_index[i]) + " " + string(cut_x[i]) + " " + string(cut_y[i]));*/
    }
}
