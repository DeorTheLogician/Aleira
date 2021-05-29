shader_end();

var element_color = player_id.stance_colors[element];

if(!destroyed) {
    draw_circle_color(x, y - (bbox_bottom - bbox_top)/2, radius, element_color, element_color, true);
}