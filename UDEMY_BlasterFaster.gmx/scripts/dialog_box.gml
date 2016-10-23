///dialog_box(x, y, height, width, title, text_to_display, ttl)
xx = argument0;
yy = argument1;
height = argument2;
width = argument3;
title = argument4;
str = argument5;
ttl = argument6;

// instantiate the dialog box object
dialog = instance_create(xx, yy, o_dialog_box);
dialog.height = height;
dialog.width = width;
dialog.title = title;
dialog.message = str
dialog.ttl = ttl;
// hope for the best...
