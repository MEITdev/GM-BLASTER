///dialog_box(x, y, height, width, title, text_to_display, avatar_id)
xx = argument0;
yy = argument1;
height = argument2;
width = argument3;
title = argument4;
str = argument5;
avatar_id = argument6;

// instantiate the dialog box object
dialog = instance_create(xx, yy, o_dialog_box);
dialog.height = height;
dialog.width = width;
dialog.title = title;
dialog.message = str
// hope for the best...
