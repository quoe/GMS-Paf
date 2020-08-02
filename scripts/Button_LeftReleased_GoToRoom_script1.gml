//Button_LeftReleased_GoToRoom_script1
/*
( room_name, level_room_name, level_room_width, level_room_height )
switch (global.rm)
   {
   case 0: room_goto(rm_level1); break;
   case 1: room_goto(rm_level2); break;
   case 2: room_goto(rm_level3); break;
   }
*/
script_execute(LEVEL_BUTTON_CLASS_LeftReleased_script1);

if argument0 == 0 
    goto_room_name = 0;
else
    goto_room_name = argument0;
    
if argument1 == 0 
    level_room_name = 0;
else
    level_room_name = argument1;

if goto_room_name <> 0
{
    room_goto(goto_room_name);
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

