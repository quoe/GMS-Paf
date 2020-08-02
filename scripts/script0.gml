var S = "";

if keyboard_check_released(ord('P'))
   {
    S += P;
   }
   show_message(S);

if argument0 == 0 
    money_delta = random_range(10, 50);
else
    money_delta = random_range(argument0, 5 * argument0);

if argument1 == 0 
    money_speed = random(3);
else
    money_speed = random(argument1);
