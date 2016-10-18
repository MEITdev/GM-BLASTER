///draw_string(x,y,what_string)
xx = argument0;
yy = argument1;
what_string = argument2;

///Draw the string
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(xx, yy, string(what_string));
