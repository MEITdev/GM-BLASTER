///add_boss(level)
level = argument0;

if level == 1
{
    /// Create the boss SCARAB object - Level 1 Boss
    global.boss = instance_create(room_width/2, 0, o_enemy_boss_01);
    
    // Set the ship slots, this depends on the type of the ship
    global.boss.ship_slots = 3;
    global.boss.shield = 15;
    global.boss.armor = 25;
    global.boss.hull = 50;
    
    // instantiate the slots upon creation
    for (i = 0; i <= global.boss.ship_slots - 1; i++)
    {
        global.boss.slot[i] = 0;
    }

    // each ship has its mount values to fit the guns nicely on it.
    // REQUIREMENT: all guns must have origin on the X set to the mounting side
    // and the Y origin in such a way that the mount_y can be 0    
    global.boss.ship_mount_x[0] = (global.boss.sprite_width/2 * -1);
    global.boss.ship_mount_y[0] = +4;

    global.boss.ship_mount_x[1] = (global.boss.sprite_width/2);
    global.boss.ship_mount_y[1] = +4;
    
    // TESTING attaching the turret
    global.boss.ship_mount_x[2] = 0;
    global.boss.ship_mount_y[2] = -8;

        
    // attach guns to the ship
    global.boss.slot[0] = instance_create(global.boss.ship_mount_x[0], global.boss.ship_mount_y[0], o_enemy_boss_01_Lgun);
    global.boss.slot[0].gun_slot_id = 0;

    global.boss.slot[1] = instance_create(global.boss.ship_mount_x[1], global.boss.ship_mount_y[1], o_enemy_boss_01_Rgun);
    global.boss.slot[1].gun_slot_id = 1;

    global.boss.slot[2] = instance_create(global.boss.ship_mount_x[2], global.boss.ship_mount_y[2], o_enemy_boss_01_turret);
    global.boss.slot[2].gun_slot_id = 2;

}

if level == 2
{
    /// Create the boss MANTIS object - Level 2 Boss
    global.boss = instance_create(room_width + 64, room_height / 2, o_enemy_boss_02);
    
    // Set the ship slots, this depends on the type of the ship
    global.boss.ship_slots = 5;
    global.boss.shield = 20;
    global.boss.armor = 30;
    global.boss.hull = 70;
    
    // instantiate the slots upon creation
    for (i = 0; i <= global.boss.ship_slots - 1; i++)
    {
        global.boss.slot[i] = 0;
    }

    // each ship has its mount values to fit the guns nicely on it.
    // REQUIREMENT: all guns must have origin on the X set to the mounting side
    // and the Y origin in such a way that the mount_y can be 0    
    
    
    // first two right guns
    global.boss.ship_mount_x[0] = 24;
    global.boss.ship_mount_y[0] = -4;

    global.boss.ship_mount_x[1] = 36;
    global.boss.ship_mount_y[1] = -4;

    // now the two left guns    
    global.boss.ship_mount_x[2] = -24;
    global.boss.ship_mount_y[2] = -4;

    global.boss.ship_mount_x[3] = -36;
    global.boss.ship_mount_y[3] = -4;

    
    // TESTING attaching the turret
    global.boss.ship_mount_x[4] = 0;
    global.boss.ship_mount_y[4] = 0;
    
        
    // attach guns to the ship
    global.boss.slot[0] = instance_create(global.boss.ship_mount_x[0], global.boss.ship_mount_y[0], o_enemy_boss_01_Lgun);
    global.boss.slot[0].gun_slot_id = 0;

    global.boss.slot[1] = instance_create(global.boss.ship_mount_x[1], global.boss.ship_mount_y[1], o_enemy_boss_01_Lgun);
    global.boss.slot[1].gun_slot_id = 1;

    global.boss.slot[2] = instance_create(global.boss.ship_mount_x[2], global.boss.ship_mount_y[2], o_enemy_boss_01_Rgun);
    global.boss.slot[2].gun_slot_id = 2;

    global.boss.slot[3] = instance_create(global.boss.ship_mount_x[3], global.boss.ship_mount_y[3], o_enemy_boss_01_Rgun);
    global.boss.slot[3].gun_slot_id = 3;
        
    global.boss.slot[4] = instance_create(global.boss.ship_mount_x[4], global.boss.ship_mount_y[4], o_enemy_boss_02_defensive_turret);
    global.boss.slot[4].gun_slot_id = 4;
    
}

