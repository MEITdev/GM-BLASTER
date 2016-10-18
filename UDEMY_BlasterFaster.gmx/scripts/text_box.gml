///text_box(x, y, height, width, title, text_to_display, avatar_id)
xx = argument0;
yy = argument1;
height = argument2;
width = argument3;
title = argument4;
text_to_display = argument5;
avatar_id = argument6;

// draw the text box outline
draw_roundrect_colour_ext(xx, yy, xx+width, yy+height, 5, 5, c_blue, c_white, false);

// Place the title on top of the box
draw_text(xx + 8, yy + 8, title);

// Place the avatar on the top left position
// later this can be something that you can change...

// Display the text
