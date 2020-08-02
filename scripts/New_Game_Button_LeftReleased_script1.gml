//New_Game_Button_LeftReleased_script1
/*
switch (global.rm)
   {
   case 0: room_goto(rm_level1); break;
   case 1: room_goto(rm_level2); break;
   case 2: room_goto(rm_level3); break;
   }
*/
if argument0 == 0 
    room_name = 0;
else
    room_name = argument0;
    
if argument1 == 0 
    level_room_name = 0;
else
    level_room_name = argument1;

if room_name <> 0
{
    room_goto(room_name);
}
else
if level_room_name <> 0
{
    if argument2 == 0 
        level_room_width = 9000;
    else
        level_room_width = argument2;
        
    if argument3 == 0 
        level_room_height = 1024;
    else
        level_room_height = argument3;
    
    level_room = level_room_name;
    
    room_set_width(level_room, level_room_width);
    room_set_height(level_room, level_room_height);
    
    room_goto(level_room);
}

