///add_weapon(ship, weapon, slot)
ship = argument0;
weapon_to_add = argument1;
slot = argument2;

// Destroy the current gun that is attached
if instance_exists(ship)
{
    with (ship.slot[slot])
    {
        instance_destroy();
    }
}

// now attach the new weapon
ship.slot[slot] = instance_create(ship.ship_mount_x[slot], ship.ship_mount_y[slot], o_ship_01_Lgun);

// inform the gun object what the mount points are - THIS WILL NEED SOME THINKING...
//player_ship.slot[slot_to_attach].gun_slot_id = slot_to_attach;
