if(room!=Wasp_50||global.whealth>0){
	var max_health = boss_health; 
	var health_bar_width = 200; 
	var health_bar_height = 20; 
	var bar_x = 500;
	var bar_y = 10; 
	var filled_width = (current_health / max_health) * health_bar_width;
	var health_ratio = current_health / max_health;
	var bar_color = make_color_rgb(255 * (1 - health_ratio), 255 * health_ratio, 0);
	draw_set_color(c_black);
	draw_rectangle(bar_x, bar_y, bar_x + health_bar_width, bar_y + health_bar_height, false);
	draw_set_color(bar_color);
	draw_rectangle(bar_x, bar_y, bar_x + filled_width, bar_y + health_bar_height, false);
	draw_set_color(c_white);
	draw_text(bar_x + 5, bar_y + 2, string(current_health) + " / " + string(max_health));
}