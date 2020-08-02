//Money_Bronze_Low_CollisionWithHero_script1
draw_self();
if global.draw_money
{
    draw_text(x + 5, y - 10, "+" + string(global.money));
    alarm[2] = 0.5;
}
