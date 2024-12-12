draw_self();
if (current_message != "") {
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
	draw_set_color(c_black);
    draw_text(x-150, y-sprite_height/2-10,current_message);
}