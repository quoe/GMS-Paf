//LANGUAGE

//RUSSIAN
ini_open("\datafiles\Language\ru.ini");
show_message(ini_read_string("Panel", "Lives", "Жизни:"));
//draw_text(base_x - 90, base_y + 12, ini_read_string("Panel", "Lives", "Монетки:"));

ini_write_string("Panel", "Lives", "Жизни:");
ini_close();
