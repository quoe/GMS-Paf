//CREATE_HEALTH_script1
// ( health_count, health_array[0] ... obj_Health_1point, obj_Plastir, obj_Money_Gold_Low, obj_Money_Gold_Normal)
if argument0 == 0 
    health_count = irandom_range(10, 20);
else
    health_count = random_range(argument0, 2 * argument0);
    
if argument1 == 0 
    health_array[0] = 0;
else
    health_array[0] = argument1;
    
if argument2 == 0 
    health_array[1] = 0;
else
    health_array[1] = argument2;
    
if argument3 == 0 
    health_array[2] = 0;
else
    health_array[2] = argument3;
    
if argument4 == 0 
    health_array[3] = 0;
else
    health_array[3] = argument4;
    
min_random_xscale = 0.9;
min_random_angle = 180;

//element = irandom_range(0, array_length_1d(health_array) - 1);//!Tipa ne nuzhno, t.k. vse elementi massiva proveryajutsya po otdelnosti

//msg = get_string_async("What's your name?","Anon");
    
//ZAPOLNENIE ZADNEGO FONA
for (var j = 0; j < array_length_1d(health_array); j++)
{
    i = 0;
    if health_array[j] <> 0
    {
        while instance_number(health_array[j]) < health_count + random_range(health_count/10, health_count/5)
        {
        
            Obj_health_Array[i] = instance_create(random(room_width), 
                random_range(room_height/5, room_height - room_height/5), health_array[j]);
            if Obj_health_Array[i].sprite_width > 400
            {   //BEDA - POYAVILSYA LISHNII OBJECT
                show_message("CREATE_BACKGROUND_script1#" + "element:" + string(element) + "#Kol-vo: " + string(array_length_1d(health_array)) + " j: " + string(j) + " i: " + string(i));
                Obj_health_Array[i].image_blend = c_aqua;
            }
            Obj_health_Array[i].image_xscale = random_range(min_random_xscale, 1);
            Obj_health_Array[i].image_yscale = Obj_health_Array[i].image_xscale;
            
            Obj_health_Array[i].image_angle = random_range(-min_random_angle, min_random_angle);
            //element = irandom_range(0, array_length_1d(health_array) - 1);
            //show_message("CREATE_HEALTH_script1#" + string(j) + 
            //    " " + string(array_length_1d(health_array)));
            i++;
        }
    }
}
