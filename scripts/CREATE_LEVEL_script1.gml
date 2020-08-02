/*
global.myroom = room_add();
room_set_width(global.myroom, 640);
room_set_height(global.myroom, 480);

level_room = level_1;

room_set_width(level_room, 9000);
room_set_height(level_room, 1000);

*/
//Zapis' vseh ini dannih v fail
script_execute(Language_INI_FILE_script1);

randomize(); 
//url_open("https://twitter.com/intent/tweet?text=Likes &hashtags=PizzaDefenderMobile");

//SOZDANIE OGRADI (top_delta, border_object, hide_stec_object, decorate_object)
script_execute(CREATE_BORDERS_Create_script1, 0, 0, 0, 0);
//SOZDANIE ZADNEGO FONA (backgr_array[0], backgr_array[1] ... )
script_execute(CREATE_BACKGROUND_script1, 0, 0);
//SOZDANIE PLATFORM (current_enemy_sprite_width, enemy_x)
script_execute(CREATE_PLATFORMS_script1, 0, 0);
//SOZDANIE VRAGOV (max_enemys, array_of_enemy[0] ... )
script_execute(CREATE_ENEMY_script1, 3, obj_Rogach, 0, 0, 0);

//SOZDANIE MONET
// ( money_count, money_array[0] ... 
//obj_Money_Bronze_Low, obj_Money_Bronze_Normal, 
//obj_Money_Gold_Low, obj_Money_Gold_Normal)
//script_execute(CREATE_MONEY_script1, 0, obj_Money_Bronze_Normal, 0, 0, 0);
script_execute(CREATE_MONEY_script1, 0, obj_Money_Bronze_Low, 
        obj_Money_Bronze_Normal, obj_Money_Gold_Low, obj_Money_Gold_Normal);
        
//SOZDANIE HEALTH
//( health_count, health_array[0] ... obj_Health_1point, obj_Plastir )
script_execute(CREATE_HEALTH_script1, 1, obj_Health_1point, obj_Plastir, 0, 0);

//SOZDANIE GEROYA
script_execute(CREATE_HERO_script1, 0);




