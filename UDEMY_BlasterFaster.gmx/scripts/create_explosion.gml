///create_explosion(x, y)
var xx = argument0;
var yy = argument1;

repeat (10)
{
    instance_create(xx-16+random(32), yy-16+random(32), o_particle_creator);
}

instance_create(xx, yy, o_explosion_center);

