//CREATE_MONEY_script1
// ( money_count, money_array[0] ... obj_Money_Bronze_Low, obj_Money_Bronze_Normal, obj_Money_Gold_Low, obj_Money_Gold_Normal)
if argument0 == 0 
    money_count = irandom_range(10, 20);
else
    money_count = random_range(argument0, 2 * argument0);
    
if argument1 == 0 
    money_array[0] = obj_Money_Bronze_Low;
else
    money_array[0] = argument1;
    
if argument2 == 0 
    money_array[1] = obj_Money_Bronze_Low;
else
    money_array[1] = argument2;
    
if argument3 == 0 
    money_array[2] = obj_Money_Bronze_Low;
else
    money_array[2] = argument3;
    
if argument4 == 0 
    money_array[3] = obj_Money_Bronze_Low;
else
    money_array[3] = argument4;
    
min_random_xscale = 0.9;
min_random_angle = 180;

element = irandom_range(0, array_length_1d(money_array) - 1);

//show_message("CREATE_BACKGROUND_script1#" + "Shirina:" + string(element_width) + "#Kol-vo: " + string(count));
    
//ZAPOLNENIE ZADNEGO FONA
for (var i = 0; i < money_count + random_range(money_count/10, money_count/5) ; i++)
{
    Obj_Array[i] = instance_create(random(room_width), 
        random_range(room_height/5, room_height - room_height/5), money_array[element]);
    Obj_Array[i].image_xscale = random_range(min_random_xscale, 1);
    Obj_Array[i].image_yscale = Obj_Array[i].image_xscale;
    Obj_Array[i].image_angle = random_range(-min_random_angle, min_random_angle);
    element = irandom_range(0, array_length_1d(money_array) - 1);
}
