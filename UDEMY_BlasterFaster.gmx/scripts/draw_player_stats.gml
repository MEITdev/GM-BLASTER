///draw_player_stats(x, y, player_object)
x = argument0;
y = argument1;
player_object = argument2;

///Draw the string
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x, y, "Name: " + string(player_object.name));
draw_text(x, y+32, "Level: " + string(player_object.level));
draw_text(x, y+64, "Experience: " + string(player_object.experience));
draw_text(x, y+96, "Credits: " + string(player_object.credits));



