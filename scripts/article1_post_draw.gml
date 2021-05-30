shader_end();

var element_color = player_id.stance_colors[element];

if(!destroyed) {
    draw_sprite_ext(sprite_get("field"), image_index, x, y - (bbox_bottom - bbox_top)/2, 1, 1, 0, element_color, 1);
}