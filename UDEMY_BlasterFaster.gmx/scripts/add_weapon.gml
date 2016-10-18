///add_weapon(weapon, slot)
weapon_to_add = argument0;
slot = argument1;

// Destroy the current gun that is attached
if instance_exists(global.ship)
{
    if instance_exists(global.ship.slot[slot])
    {
        with (global.ship.slot[slot])
        {
            instance_destroy();
        }
    }
}

// now attach the new weapon
global.ship.slot[slot] = instance_create(global.ship.ship_mount_x[slot], global.ship.ship_mount_y[slot], weapon_to_add);

// inform the gun object what the mount points are - THIS WILL NEED SOME THINKING...
global.ship.slot[slot].gun_slot_id = slot;
