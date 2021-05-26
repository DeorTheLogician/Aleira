//draw_hud - the x position of your HUD element is 48*(i-1)

// draw_debug_text(5, 435, "window: " + string(window));
// draw_debug_text(5, 450, "window_timer: " + string(window_timer));
// draw_debug_text(5, 420, "state: " + string(state));

if("stance" in self) {
    clock_rad = 10;
    clock_offset_x = -clock_rad - 2;
    clock_offset_y = 0;
    clock_hand_angle = (90 - 90 * stance) % 360;
    clock_second_hand_angle = (90 - (360/ticker_max) * stance_ticker) % 360;
    clock_hand_width = 3;
    clock_second_hand_width = 2;
    clock_hand_length_mul = 0.75;

    draw_circle_color(temp_x + clock_offset_x, temp_y + clock_offset_y, clock_rad, stance_colors[stance], stance_colors[stance], false);
    draw_line_width_color(temp_x + clock_offset_x, temp_y + clock_offset_y, temp_x + clock_offset_x + lengthdir_x(clock_rad * clock_hand_length_mul, clock_hand_angle), temp_y + clock_offset_y + lengthdir_y(clock_rad * clock_hand_length_mul, clock_hand_angle), clock_hand_width, c_black, c_black);
    draw_line_width_color(temp_x + clock_offset_x, temp_y + clock_offset_y, temp_x + clock_offset_x + lengthdir_x(clock_rad, clock_second_hand_angle), temp_y + clock_offset_y + lengthdir_y(clock_rad, clock_second_hand_angle), clock_second_hand_width, c_black, c_black);

    draw_debug_text(temp_x + clock_offset_x - 1, temp_y + clock_offset_y - clock_rad - 12 , "0");
    draw_debug_text(temp_x + clock_offset_x + clock_rad + 4, temp_y + clock_offset_y - 4, "1");
    draw_debug_text(temp_x + clock_offset_x - 1, temp_y + clock_offset_y + clock_rad + 4, "2");
    draw_debug_text(temp_x + clock_offset_x - clock_rad - 8, temp_y + clock_offset_y - 4, "3");
}