///text_box(x, y, height, width, title, text_to_display, avatar_id)
xx = argument0;
yy = argument1;
height = argument2;
width = argument3;
title = argument4;
str = argument5;
avatar_id = argument6;

// message variable that stores what is displayed on the screen
// Keep track of the starting line
ds_list_add(start, 0);

// Keep track of the last space and current position
count = 0;
last_space = 0;
line = 0;
message = "";

// draw the text box outline
draw_set_alpha(.5);
draw_roundrect_colour_ext(xx, yy, xx+width, yy+height, 3, 3, c_gray, c_gray, false);

// draw a title "bar"
draw_set_color(c_green);
draw_rectangle(xx + 2, yy + 2, xx + width - 2, yy + string_height(title) + 2, false);

// Place the title on top of the box
draw_set_alpha(1)
draw_set_colour(c_white)
draw_text(xx + 16, yy + 8, title);

// Place the avatar on the top left position
draw_sprite(avatar_id, 0, xx + 16, yy + 32)
// later this can be something that you can change...

// Display the text
// Check if the string is past the width
// Insert a line break if yes
// This has to be before getting the last space variable or it won't work right
if (string_width(str) > width - 16)
{
    //Remove the space and replace it with line break
    message = string_delete(message, last_space, 1);
    // enter a line break
    message = string_insert("#", message, last_space);
    // add the ending line location to the ds list
    ds_list_add(start, last_space + 1);
}

//Make sure we have not reached the end of th emessage
if count < string_length(message)
{
    //Check if we are at space. Set the last space variable
    if string_char_at(message, count) == " "
    {
        last_space = count; // save the last space, keep track of the position of the last space in the message
    }
    
    // increment the count
    count++;
}

// Did we go past the bottom? Move up a line
if string_height(str) > (height - padding)
{
    // increment the line we are on
    line++;
}

// Grab the string
str = string_copy(message, ds_list_find_value(start, line), count-ds_list_find_value(start, line));

draw_text(xx+16, yy+16, str);


