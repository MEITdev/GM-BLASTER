///dialog_box(x, y, height, width, title, text_to_display, ttl)
xx = argument0;
yy = argument1;
height = argument2;
width = argument3;
title = argument4;
str = argument5;
ttl = argument6;

// if dialog box already exists, destrot it
if instance_exists(global.dialog)
{
    with (global.dialog)
    {
        instance_destroy();
    }
}
// and the avatar if it exists
if instance_exists(global.avatar)
{
    with (global.avatar)
    {
        instance_destroy();
    }
}

// instantiate the dialog box object
global.dialog = instance_create(xx, yy, o_dialog_box);
global.dialog.height = height;
global.dialog.width = width;
global.dialog.title = title;
global.dialog.message = str
global.dialog.ttl = ttl;
// hope for the best...
