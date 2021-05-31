var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "0.1";
patch_day = "00";
patch_month = "Alpha";

var num_alts = 20;
var alt_cur = get_player_color(player);

//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "Blue";
alt_name[2]  = "Red";
alt_name[3]  = "Green";
alt_name[4]  = "BnW";
alt_name[5]  = "Purple";
alt_name[6]  = "Abyss";
alt_name[7]  = "GB";
alt_name[8]  = "Shadow";
alt_name[9]  = "Haven";
alt_name[10]  = "Decidueye";
alt_name[11]  = "Blathers";
alt_name[12]  = "Loading...";
alt_name[13]  = "StrongOne";
alt_name[14]  = "HotHead";
alt_name[15]  = "oh dear...";
alt_name[16]  = "BirdGuy";
alt_name[17]  = "ParKing";
alt_name[18]  = "Who?";
alt_name[19]  = "BLM";

//From FungiWizard "Siren"
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_color(x + 10, y - 6, "JAM VERSION", c_white, c_white, c_white, c_white, 1);

// Date Display
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text_color(x + 210, y - 6, "", c_white, c_white, c_white, c_white, 1);

//rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 122, c_gray);
//rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_gray);

                                    //line //boxes
                                    //Place + number?
                                    //Y positon, X position?, Hight
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_black : c_black;
    var draw_x = temp_x + 2 + 5 * i;
    rectDraw(draw_x, temp_y + 123, draw_x + 9, temp_y + 136, draw_color);
}
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_dkgray;
    var draw_x = temp_x + 2 + 8 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 142, draw_color);
}
//name
draw_set_halign(fa_left);
textDraw(temp_x + 4, temp_y + 125, "fName", c_black, 0, 1000, 1, true, 1, "" + (alt_cur < 0 ? "" : "") + string(alt_cur + 1) + "-" + alt_name[alt_cur]);
draw_set_halign(fa_left);
textDraw(temp_x + 4, temp_y + 125, "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 0 ? "" : "") + string(alt_cur + 1) + "-" + alt_name[alt_cur]);

//rectDraw(temp_x, temp_y + 123, temp_x + 47, temp_y + 134, c_ltgray);
//Alt
//draw_set_halign(fa_left);
//textDraw(temp_x + 3, temp_y + 110, "fName", c_black, 0, 1000, 1, true, 1, "Alt:" + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
//draw_set_halign(fa_left);
//textDraw(temp_x + 4, temp_y + 110, "fName", c_white, 0, 1000, 1, true, 1, "Alt:" + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));

//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);


draw_sprite(padlock_sprite, 0, temp_x + 46, temp_y + 119 + (get_player_color(player) == 14) * 2);

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);



#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
