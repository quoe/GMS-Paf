//LANGUAGE
/*
ini_open("datafiles\Language\" + global.game_language + ".ini");
ini_close();
*/
    //LANGUAGE
ini_open("datafiles\Language\" + global.game_language + ".ini");

    //PANEL
ini_write_string("PANEL", "Lives", "Жизни");
ini_write_string("PANEL", "Money", "Монетки");
    //STATES
ini_write_string("STATE", "Pause", "Пауза");
ini_write_string("STATE", "Resume", "Возобновить");

    //MENU
ini_write_string("MENU", "Game_New", "Новая игра");
ini_write_string("MENU", "Game_Resume", "Продолжить");
ini_write_string("MENU", "Game_Options", "Настройки");
ini_write_string("MENU", "Game_Credits", "Благодарности");
ini_write_string("MENU", "Game_Exit", "Выход");

    //SHOW MESSAGE
ini_write_string("SHOW MESSAGE", "Close", "Отмена");

    //EXIT_QUESTION
ini_write_string("EXIT_QUESTION", "Exit_To_Window", "Выйти из игры?");
ini_write_string("EXIT_QUESTION", "Exit_To_MainMenu", 
    "Выйти в главное меню?#Несохранённые данные будут потеряны!");
    

ini_close();
