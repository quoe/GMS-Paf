//CREATE_BORDERS_Create_script1
//Smeschenie s kraju
// (top_delta, border_object, hide_stec_object, decorate_object)
if argument0 == 0 
    top_delta = random_range(30, 60)
else
    top_delta = random_range(argument0, 2 * argument0);
    
//OBJECTS
//Osnovnoi obect ogradi
if argument1 == 0 
    border_object = obj_Border_Green
else
    border_object = argument1;
    
//Obect skritiya soedinenii ogradi
if argument2 == 0 
    hide_stec_object = obj_Border_Green_Flower
else
    hide_stec_object = argument2;
    
//Bonusnie elementi
if argument3 == 0 
    decorate_object = obj_Border_Green_List
else
    decorate_object = argument3;

min_random_xscale = 0.4;

//CREATE_BORDERS_Create_script1
border_green_array[0] = spr_Border_Green_1;
border_green_array[1] = spr_Border_Green_2;
border_green_array[2] = spr_Border_Green_3;
border_green_array[3] = spr_Border_Green_4;
border_green_array[4] = spr_Border_Green_5;
border_green_array[5] = spr_Border_Green_6;
border_green_array[6] = spr_Border_Green_7;

//Srendee vseh spriitov
sprite_srednee = 0;
for (var i = 0; i < array_length_1d(border_green_array); i++)
{
    current_sprite = border_green_array[i];
    //show_message("CREATE_BORDERS_Create_script1#" + string(i) + ": " + string(sprite_get_width(current_sprite)));//Shirina i-ogo spraita
    current_sprite_width = sprite_get_width(current_sprite);
    sprite_srednee += current_sprite_width;
}
sprite_srednee /= array_length_1d(border_green_array);
//show_message("CREATE_BORDERS_Create_script1#" + sprite_srednee); //Srednee vseh spraitov

//Kovichestvo elementov soglasno ih srednemy znacheniju
count = round(room_width/sprite_srednee);
//show_message("CREATE_BORDERS_Create_script1#" + array_length_1d(border_green_array));

//Sozdanie elementov ogradi SVERHU
new_x = 0;
for (var i = 0; i < count + 2; i++)
{
    //Vse sozdannie elementi v massiv
    Obj_Array[i] = instance_create(new_x, top_delta, border_object);
    //Obraschenie k spraity kazhdogo elementa i sohranenie ego shirini
    Obj_sprite_width = sprite_get_width(Obj_Array[i].sprite_index);
    //Soedinitel'nii cvetok
    hide_stec_array[i] = instance_create(new_x - 10, top_delta - 2, hide_stec_object);
    hide_stec_array[i].image_xscale = random_range(min_random_xscale, 1);
    hide_stec_array[i].image_yscale = hide_stec_array[i].image_xscale;
    if irandom(1) = 0
    {
        hide_stec_array_bonus[i] = instance_create(new_x - random(Obj_sprite_width) - Obj_sprite_width/2, top_delta - random(20) - 10, hide_stec_object);
        hide_stec_array_bonus[i].image_xscale = random_range(min_random_xscale, 1);
        hide_stec_array_bonus[i].image_yscale = hide_stec_array_bonus[i].image_xscale;
    }
    //show_message("CREATE_BORDERS_Create_script1#" + sprite_get_width(Obj_Array[i].sprite_index));
    new_x += Obj_sprite_width;
}
//Sozdanie listov dlya krasoti vashche
for (var i = 0; i < 5 * count; i++)
{
    decorate_array[i] = instance_create(random(room_width), top_delta + random(top_delta) - top_delta/2, decorate_object);
    decorate_array[i].image_xscale = random_range(min_random_xscale, 1);
    decorate_array[i].image_yscale = decorate_array[i].image_xscale;
}

//Sozdanie elementov ogradi SNIZU
new_x = 0;
for (var i = 0; i < count + 2; i++)
{
    //Vse sozdannie elementi v massiv
    Obj_Array[i] = instance_create(new_x, room_height - top_delta, border_object);
    Obj_Array[i].image_angle = 180;
    Obj_Array[i].image_xscale = -1;
    //Obraschenie k spraity kazhdogo elementa i sohranenie ego shirini
    Obj_sprite_width = sprite_get_width(Obj_Array[i].sprite_index);
    //Soedinitel'nii cvetok
    hide_stec_array[i] = instance_create(new_x - 10, room_height - top_delta - 2, hide_stec_object);
    hide_stec_array[i].image_xscale = random_range(min_random_xscale, 1);
    hide_stec_array[i].image_yscale = hide_stec_array[i].image_xscale;
    if irandom(1) = 0
    {
        hide_stec_array_bonus[i] = instance_create(new_x - random(Obj_sprite_width) - Obj_sprite_width/2, room_height - top_delta - random(20) - 10, hide_stec_object);
        hide_stec_array_bonus[i].image_xscale = random_range(min_random_xscale, 1);
        hide_stec_array_bonus[i].image_yscale = hide_stec_array_bonus[i].image_xscale;
    }
    //show_message("CREATE_BORDERS_Create_script1#" + sprite_get_width(Obj_Array[i].sprite_index));
    new_x += Obj_sprite_width;
}
//Sozdanie listov dlya krasoti vashche
for (var i = 0; i < 5 * count; i++)
{
    decorate_array[i] = instance_create(random(room_width), room_height - top_delta + random(top_delta) - top_delta/2, decorate_object);
    decorate_array[i].image_xscale = random_range(min_random_xscale, 1);
    decorate_array[i].image_yscale = decorate_array[i].image_xscale;
}
