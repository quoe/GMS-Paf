if argument0 == 0 
    hero_object = obj_Hero;
else
    hero_object = argument0;
    
hero_object.y = hero_object.yprevious;

hero_object.vspeed = -hero_object.vspeed;
