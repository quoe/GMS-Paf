//CONTROLS_ReleasePkey_script1
if !pause
{
    //pr_back = background_index[0];
    pause = true;
    //b_name = "Pause_pic";
    //screen_save(working_directory + "Screens\Screen_" + b_name + ".png");
    //back = background_add("http://www.angusgames.com/game/background1.png", 0, 0); 
    //"C:\Users\Roman\AppData\Local\Paf\Screens\Screen_13_23.png"
    //back = background_add(working_directory + "Screens\Screen_" + b_name + ".png", 0, 0);
    //show_message(working_directory + "Screens\Screen_" + b_name + ".png");
    //background_replace(bck_Sky, "Sky_5.png"); 
}
else
{
    instance_activate_all();//RESUME
    pause = false;
    //background_index[0] = pr_back;
}
