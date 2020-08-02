border_green_array[0] = spr_Border_Green_1;
border_green_array[1] = spr_Border_Green_2;
border_green_array[2] = spr_Border_Green_3;
border_green_array[3] = spr_Border_Green_4;
border_green_array[4] = spr_Border_Green_5;
border_green_array[5] = spr_Border_Green_6;
border_green_array[6] = spr_Border_Green_7;

element = irandom_range(0, array_length_1d(border_green_array) - 1);

sprite_index = border_green_array[element];
