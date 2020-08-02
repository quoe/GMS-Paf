//GRAVITACIYA
if place_free(x, y + 1) 
{
    gravity = rogach_gravity;
}
else
{
    rogach_attack = FALSE;
    vspeed = 0;
    gravity = 0;
}
//VVEDENIE V YAROST'
if distance_to_object(obj_Hero) <= rogach_ready_range
if rogach_rage = 0
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
    rogach_rage = 0;
}
//ATTACK
if rogach_rage = 1
if rogach_attack = 0
if distance_to_object(obj_Hero) <= rogach_attack_range
if !place_free(x, y + 1) 
{
    vspeed = -15;
    rogach_attack = 1;
    sprite_index = spr_Rogach_Attack;
}
//OSTANOVKA UDARA
if rogach_attack = 1
{
    if image_index = sprite_get_number(spr_Rogach_Attack) - 1;
    sprite_index = 0;
}
//OSTANOVKA YAROSTI
if !(distance_to_object(obj_Hero) <= rogach_attack_range)
if rogach_attack = 1;
if !place_free(x, y + 1) 
{
    rogach_attack = 0;
    sprite_index = spr_Rogach_From_Rage;
}
