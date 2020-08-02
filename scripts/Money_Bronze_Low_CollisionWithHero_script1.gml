//Money_CollisionWithHero_script1
// (money_ = random_range(argument0, argument1))
if (argument0 == 0 && argument1 == 0)
    money_ = irandom_range(1, 2);
else
    money_ = random_range(argument0, argument1);
    
score += money_;

obj_num = instance_create(x, y - 10, obj_Numbers);
if money_ == 1
{
    obj_num.image_index = 0;
}
else
if money_ == 2
{
    obj_num.image_index = 1;
}
else
if money_ == 3
{
    obj_num.image_index = 2;
}
else
if money_ == 4
{
    obj_num.image_index = 3;
}
else
if money_ == 5
{
    obj_num.image_index = 4;
}
else
if money_ == 6
{
    obj_num.image_index = 5;
}
else
if money_ == 7
{
    obj_num.image_index = 6;
}

instance_destroy();


