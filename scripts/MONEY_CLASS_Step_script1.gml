//MONEY CLASS
//var i;
money_speed = 1;
money_delta = 5;

//for (i = 0; i < money_steps; i += 1)
move_towards_point( x, y + money_delta, money_speed );
alarm[0] = 3;
//for (i = 0; i < money_steps; i += 1)
move_towards_point( x, y - money_delta, money_speed );
