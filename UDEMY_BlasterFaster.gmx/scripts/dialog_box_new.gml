///dialog_box_new(message, draw_speed, x, y)
if argument0 = ""
{
    //ignore this
}
else if !(instance_exists(global.hover_message))
{
    global.hover_message = instance_create(argument2, argument3, o_message);
    with (global.hover_message)
    {
        padding = 8;
        maxlength = 350;
        message_text = argument0;
        display_speed = argument1;
        font = f_dialog_box;
        
        message_length = string_length(message_text);
        font_size = font_get_size(font);
        
        draw_set_font(font);
        
        message_width = string_width_ext(message_text, font_size + (font_size / 2), maxlength);
        message_height = string_height_ext(message_text, font_size + (font_size / 2), maxlength);
        
        boxwidth = message_width + (padding * 2);
        boxheight = message_height + (padding * 2);
    }
}
