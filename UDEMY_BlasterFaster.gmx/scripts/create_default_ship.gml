///create_default_ship()

global.ship = instance_create(room_width/2, room_height/2, o_ship_new);
       
// Set the ship slots, this depends on the type of the ship
global.ship.ship_slots = 3;
global.ship.shield = 3;
global.ship.armor = 3;
global.ship.hull = 3;
global.ship.movement_speed = 7;
global.ship.max_movement_speed = 7;

// instantiate the slots upon creation
for (i = 0; i <= global.ship.ship_slots - 1; i++)
{
    global.ship.slot[i] = 0;
}

// each ship has its mount values to fit the guns nicely on it.
// REQUIREMENT: all guns must have origin on the X set to the mounting side
// and the Y origin in such a way that the mount_y can be 0    
global.ship.ship_mount_x[0] = (global.ship.sprite_width/2) * -1;
global.ship.ship_mount_y[0] = 0;

global.ship.ship_mount_x[1] = (global.ship.sprite_width/2);
global.ship.ship_mount_y[1] = 0;

// attaching the turret
global.ship.ship_mount_x[2] = 0;
global.ship.ship_mount_y[2] = 0;

// Default ship has no guns

// attach dummy guns to the ship
global.ship.slot[0] = instance_create(global.ship.ship_mount_x[0], global.ship.ship_mount_y[0], o_ship_00_dummyGun);
global.ship.slot[0].gun_slot_id = 0;
global.ship.slot[1] = instance_create(global.ship.ship_mount_x[1], global.ship.ship_mount_y[1], o_ship_01_dummyGun);
global.ship.slot[1].gun_slot_id = 1;
global.ship.slot[2] = instance_create(global.ship.ship_mount_x[2], global.ship.ship_mount_y[2], o_ship_02_dummyGun);
global.ship.slot[2].gun_slot_id = 2;

// and save it so in the next boot we just load it to the game
save_player_ship(global.current_player.ship_save_file);
