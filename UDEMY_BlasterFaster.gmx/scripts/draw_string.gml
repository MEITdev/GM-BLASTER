///draw_string(x,y,what_string)
x = argument0;
y = argument1;
what_string = argument2;

///Draw the string
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x, y, string(what_string));
