//Hero_Step_script1
if argument0 == 0 
    fall_limit = random_range(2.9, 3.1);
else
    fall_limit = random_range(argument0, (3.1/2.9) * argument0);

if !immortal//Esli ne ranena
//to animaciya polyota/padeniya
if vspeed > fall_limit + fall_limit/2
{
    sprite_index = spr_Hero_Down;
}
else
if vspeed < fall_limit - fall_limit/2
{
    sprite_index = spr_Hero_Up;
}
else
{
    sprite_index = spr_Hero_Idle;
}

show_debug_message("Hero_Step_script1#" + string(vspeed));
if vspeed > 4 * fall_limit
    vspeed = 4 * fall_limit;
/*
if !place_free(x, y + 1)
{
    show_debug_message(string(date_get_minute(date_current_datetime())) + 
    ":" + string(date_get_second(date_current_datetime())) + "y + 1");
}
if !place_free(x, y - 1)
{
    show_debug_message(string(current_minute) + ":" + string(current_second) + "y - 1");
}
*/
//OTMENA IMMORTOLA
if (immortal && alarm[0] < 0)   //Tak kak v Step alarm obnovlyaetsya postoyanno
{
    alarm[0] = 50;
}

//OTMENA CVETA PRI VZYATII ZHIZNI

if (get_health && alarm[1] < 0) 
{   
    alarm[1] = 1;
}
//move_bounce_solid(true); Zastrevaet i letit obratno :(
//PRAVEL'NII KONEC KOMNATI (UROVNYA)
if room_width > room_height
if x > room_width - sprite_width
{
    move_towards_point( room_width + sprite_width, y, hspeed );
    if x = room_width + sprite_width
        room_goto(Main_Menu);
}
else
if room_width < room_height
if y > room_height - sprite_height
{
    move_towards_point( x, room_height + sprite_height, hspeed );
    if y = room_height + sprite_height
        room_goto(Main_Menu);
}
