if (global.whealth > 0) {

    var max_health = 100; 
    var health_bar_width = min(300, display_get_gui_width() * 0.6); 
    var health_bar_height = 20; 
    var bar_x = (display_get_gui_width() - health_bar_width) / 20; 
    var bar_y = 10; 
    
    var filled_width = (global.health / max_health) * health_bar_width;
    var health_ratio = global.health / max_health;
    var bar_color = make_color_rgb(255 * (1 - health_ratio), 255 * health_ratio, 0);

    draw_set_color(c_black);
    draw_rectangle(bar_x, bar_y, bar_x + health_bar_width, bar_y + health_bar_height, false);
    
    draw_set_color(bar_color);
    draw_rectangle(bar_x, bar_y, bar_x + filled_width, bar_y + health_bar_height, false);
    
    draw_set_color(c_white);
    draw_text(bar_x + 5, bar_y + 2, string(global.health) + " / " + string(max_health));

    var bee_x = bar_x - 40; 
    var bee_y = bar_y + health_bar_height + 10; 
    draw_sprite_ext(spr_little_bee, 0, bee_x, bee_y, 2, 2, 0, c_white, 1);

    var bee_number_x = bee_x + 30;
    draw_set_color(c_black);
    draw_text(bee_number_x, bee_y + 10, string(global.bees));
}
