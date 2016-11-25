///find_purchased_wapon_id(ship_slot)
ship_slot = argument0;
object_name = argument1;
return_position = 0;

/// Check if the gun is owned
return_id = 0;
for (i=0; i<array_height_2d(global.current_player.purchased); i+=1)
{
    if object_get_name(global.ship.slot[ship_slot].object_index) == global.current_player.purchased[i, 0]
    {
        return_position = i;
    }
}

return return_position;
