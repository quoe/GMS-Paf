//GRAVITACIYA
if place_free(x, y + 1) 
{
    gravity = rogach_gravity;
}
else
{
    vspeed = 0;
    gravity = 0;
    rogach_attack = false;
    image_speed = 1;
}
//VVEDENIE V YAROST'
if distance_to_object(obj_Hero) <= rogach_ready_range
if !rogach_rage
{
    sprite_index = spr_Rogach_Ready;
    alarm[0] = 1;
    /*
    alrm[0]:
        rogach_rage = 1;
        sprite_index = spr_Rogach_Rage;
    */
}
//NOPMAL'NOE SOSTOYANIE
if !(distance_to_object(obj_Hero) <= rogach_ready_range)
{
    sprite_index = spr_Rogach_Idle;
    rogach_rage = false;
}
//ATTACK
if rogach_rage
if !rogach_attack
if distance_to_object(obj_Hero) <= rogach_attack_range
if !place_free(x, y + 1) 
{
    vspeed = -rogach_vspeed;
    rogach_attack = true;
    sprite_index = spr_Rogach_Attack;
    image_speed = 1;
}
// KOD NE RABOTAET HOT' TRESNI
//OSTANOVKA UDARA
if rogach_attack == 1
if image_index == sprite_get_number(spr_Rogach_Attack) - 1
{
    image_speed = 0;//set the sprite to spr_Rogach_Attack with subimage 0 and speed 0
    image_index = 0;
}


//OSTANOVKA YAROSTI
if !(distance_to_object(obj_Hero) <= rogach_attack_range)
if rogach_attack
if !place_free(x, y + 1) 
{
    rogach_attack = false;
    sprite_index = spr_Rogach_From_Rage;
    image_speed = 1;
}
