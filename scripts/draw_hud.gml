//draw_hud - the x position of your HUD element is 48*(i-1)

draw_debug_text(5, 435, "window: " + string(window));
draw_debug_text(5, 450, "window_timer: " + string(window_timer));
draw_debug_text(5, 420, "state_timer: " + string(state_timer - 1));

if("stance" in self) {
    var last_stance_angle = (90 * last_stance) % 360;
    var current_stance_angle = (90 * stance) % 360;

    var clock_offset_x = temp_x + 9;
    var clock_offset_y = temp_y + 4;
    if(get_gameplay_time() < stance_change_time + color_change_time) {
        current_stance_angle = last_stance_angle - angle_difference(last_stance_angle, 90 * stance);
        var clock_big_hand_angle = ease_backInOut(last_stance_angle, current_stance_angle, get_gameplay_time() - stance_change_time, color_change_time, 1);
    } else
        var clock_big_hand_angle = current_stance_angle;

    var clock_small_hand_angle = ((360/ticker_max) * stance_ticker) % 360;

    draw_sprite_ext(sprite_get("clock_face"), 0, clock_offset_x, clock_offset_y, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sprite_get("clock_big_hand"), 0, clock_offset_x, clock_offset_y, 1, 1, -clock_big_hand_angle, c_white, 1);
    draw_sprite_ext(sprite_get("clock_smol_hand"), 0, clock_offset_x, clock_offset_y, 1, 1, -clock_small_hand_angle, c_white, 1);
}