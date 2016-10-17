///create_ship(x, y, ship_instance, slots, shield, armor, hull, speed)
xx = argument0;
yy = argument1;
ship_instance = argument2;
//set the values upon creation
sslots = argument3;
sshield = argument4;
sarmor = argument5;
shull = argument6;
sspeed = argument7;

// create the ship instance
created_ship = instance_create(xx,xx, ship_instance);

// assign values to the ship variables
created_ship.ship_slots = sslots;
created_ship.shield = sshield;
created_ship.armor = sarmor;
created_ship.hull = shull;
created_ship.movement_speed = sspeed;

// instantiate the slots upon creation
for (i = 0; i < created_ship.ship_slots - 1; i++)
{
    created_ship.slot[i] = 0;
}

// slot mount points
//for (i = 0; i < created_ship.ship_slots - 1; i++)
for (i = 0; i < created_ship.ship_slots - 1; i++)
{
    created_ship.ship_mount_x[i] = (sprite_width/2) * -1;
    created_ship.ship_mount_y[i] = 0;
}
