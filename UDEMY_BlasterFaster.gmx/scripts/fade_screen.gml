///fade_screen(fade_object, to_what_room, at_what_speed);
fade_object = argument0;
to_what_room = argument1;
at_what_speed = argument2;

// create the fader instance
fader = instance_create(0,room_height, fade_object);
fader.vspeed = at_what_speed;
if fader.y > 0
{
    fader.vspeed = at_what_speed;
}
else
{
    with (fader)
    {
        instance_destroy();
    }
    show_debug_message("ROOM_GOTO");
    room_goto(to_what_room);
}
