//New_Game_Button_LeftReleased_script1
/*
switch (global.rm)
   {
   case 0: room_goto(rm_level1); break;
   case 1: room_goto(rm_level2); break;
   case 2: room_goto(rm_level3); break;
   }
*/
level_room = level_1;

room_set_width(level_room, 9000);
room_set_height(level_room, 1000);

room_goto(rm_level1);
