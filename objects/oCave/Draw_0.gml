draw_sprite_ext(sprite_index, image_index, x - 25, y - 33, image_xscale, image_yscale + 0.3, 38, c_black, 0.2)
draw_self();

var player_dist = distance_to_object(oPlayer);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(ftUI);
draw_set_alpha(1);

if (player_dist <= 10){
draw_text(x, y, "press E to enter");
}