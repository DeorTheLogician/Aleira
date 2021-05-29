//Database Initialization
//  Properties
set_move_property(AT_FAIR, AG_LANDING_LAG, [ 6,  8,  4,  8]);

//  Windows
set_move_num_windows(AT_FAIR, 3);
set_move_window_property(AT_FAIR, 1, AG_WINDOW_LENGTH,      [ 3,  5,  4, 11]);
set_move_window_property(AT_FAIR, 1, AG_WINDOW_SFX_FRAME,   [ 2,  4,  3, 10]);
set_move_window_property(AT_FAIR, 1, AG_WINDOW_SFX, [asset_get("sfx_swipe_medium2"), asset_get("sfx_swipe_weak2"), asset_get("sfx_swipe_medium2"), asset_get("sfx_swipe_heavy1")]);

set_move_window_property(AT_FAIR, 2, AG_WINDOW_LENGTH,              [ 6, 14, 24,  6]);
set_move_window_property(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES,         [ 1,  9,  1,  1]);
set_move_window_property(AT_FAIR, 2, AG_WINDOW_SFX_FRAME,           [99,  9, 99, 99]);

set_move_window_property(AT_FAIR, 3, AG_WINDOW_LENGTH,          [11, 11,  7, 13]);
set_move_window_property(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES,     [ 3,  3,  2,  3]);
set_move_window_property(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START,[ 3,  3,  4,  3]);

//  Hitboxes
set_move_num_hitboxes(AT_FAIR, 2);
set_move_hitbox_property(AT_FAIR, 1, HG_LIFETIME,               [ 6,  4, 24,  6]);
set_move_hitbox_property(AT_FAIR, 1, HG_HITBOX_X,               [18, 34, 34, 18]);
set_move_hitbox_property(AT_FAIR, 1, HG_HITBOX_Y,              [-26,-34,-34,-26]);
set_move_hitbox_property(AT_FAIR, 1, HG_WIDTH,                  [74, 88, 88, 74]);
set_move_hitbox_property(AT_FAIR, 1, HG_HEIGHT,                 [54, 60, 60, 54]);
set_move_hitbox_property(AT_FAIR, 1, HG_DAMAGE,                 [ 7,  5,  5,  9]);
set_move_hitbox_property(AT_FAIR, 1, HG_BASE_KNOCKBACK,         [ 4,  4,  6,  6]);
set_move_hitbox_property(AT_FAIR, 1, HG_KNOCKBACK_SCALING,      [.4,  0, .6, .6]);
set_move_hitbox_property(AT_FAIR, 1, HG_FINAL_BASE_KNOCKBACK,   [ 4,  4,  2,  6]);
set_move_hitbox_property(AT_FAIR, 1, HG_ANGLE_FLIPPER,          [ 0, 10,  6,  0]);
set_move_hitbox_property(AT_FAIR, 1, HG_HIT_SFX, [asset_get("sfx_blow_medium2"), asset_get("sfx_blow_weak1"), asset_get("sfx_blow_medium2"), asset_get("sfx_blow_heavy1")]);

set_move_hitbox_property(AT_FAIR, 2, HG_LIFETIME,               [ 6,  5, 24,  6]);
set_move_hitbox_property(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME,  [ 0, 10,  0,  0]);
set_move_hitbox_property(AT_FAIR, 2, HG_HITBOX_X,               [60, 34,-16, 60]);
set_move_hitbox_property(AT_FAIR, 2, HG_HITBOX_Y,              [-36,-34,-16,-36]);
set_move_hitbox_property(AT_FAIR, 2, HG_WIDTH,                  [40, 88, 40, 40]);
set_move_hitbox_property(AT_FAIR, 2, HG_HEIGHT,                 [58, 60, 58, 58]);
set_move_hitbox_property(AT_FAIR, 2, HG_DAMAGE,                 [ 9,  7,  5, 11]);
set_move_hitbox_property(AT_FAIR, 2, HG_ANGLE,                  [60,361,361, 40]);
set_move_hitbox_property(AT_FAIR, 2, HG_BASE_KNOCKBACK,         [ 5,  5,  6,  6]);
set_move_hitbox_property(AT_FAIR, 2, HG_KNOCKBACK_SCALING,      [.6, .7, .6, .6]);
set_move_hitbox_property(AT_FAIR, 2, HG_FINAL_BASE_KNOCKBACK,   [ 3,  5,  2,  6]);
set_move_hitbox_property(AT_FAIR, 2, HG_ANGLE_FLIPPER,          [ 0,  6,  6,  0]);
set_move_hitbox_property(AT_FAIR, 2, HG_HITBOX_GROUP,           [ 0,  1,  0,  0]);
set_move_hitbox_property(AT_FAIR, 2, HG_HIT_SFX, [asset_get("sfx_blow_medium2"), asset_get("sfx_blow_weak1"), asset_get("sfx_blow_medium2"), asset_get("sfx_blow_heavy2")]);


//Value Setting
set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, get_move_property(AT_FAIR, AG_LANDING_LAG, stance));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, get_move_window_property(AT_FAIR, 1, AG_WINDOW_LENGTH, stance));
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, get_move_window_property(AT_FAIR, 1, AG_WINDOW_SFX, stance));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, get_move_window_property(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, stance));

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, get_move_window_property(AT_FAIR, 2, AG_WINDOW_LENGTH, stance));
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, get_move_window_property(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, stance));
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, get_move_window_property(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, stance));

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, get_move_window_property(AT_FAIR, 3, AG_WINDOW_LENGTH, stance));
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, get_move_window_property(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, stance));
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, get_move_window_property(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, stance));
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 2);

//Hitbox 1 - Generated via Lucid Dream
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, get_move_hitbox_property(AT_FAIR, 1, HG_LIFETIME, stance));
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, get_move_hitbox_property(AT_FAIR, 1, HG_HITBOX_X, stance));
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, get_move_hitbox_property(AT_FAIR, 1, HG_HITBOX_Y, stance));
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, get_move_hitbox_property(AT_FAIR, 1, HG_WIDTH, stance));
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, get_move_hitbox_property(AT_FAIR, 1, HG_HEIGHT, stance));
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, get_move_hitbox_property(AT_FAIR, 1, HG_DAMAGE, stance));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_FAIR, 1, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_FAIR, 1, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_FAIR, 1, HG_FINAL_BASE_KNOCKBACK, get_move_hitbox_property(AT_FAIR, 1, HG_FINAL_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_FAIR, 1, HG_EFFECT, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.50);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 1, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, get_move_hitbox_property(AT_FAIR, 1, HG_HIT_SFX, stance));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, get_move_hitbox_property(AT_FAIR, 1, HG_ANGLE_FLIPPER, stance));

//Hitbox 2 - Generated via Lucid Dream
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, get_move_hitbox_property(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, stance));
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, get_move_hitbox_property(AT_FAIR, 2, HG_LIFETIME, stance));
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, get_move_hitbox_property(AT_FAIR, 2, HG_HITBOX_X, stance));
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, get_move_hitbox_property(AT_FAIR, 2, HG_HITBOX_Y, stance));
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, get_move_hitbox_property(AT_FAIR, 2, HG_WIDTH, stance));
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, get_move_hitbox_property(AT_FAIR, 2, HG_HEIGHT, stance));
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, get_move_hitbox_property(AT_FAIR, 2, HG_DAMAGE, stance));
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, get_move_hitbox_property(AT_FAIR, 2, HG_ANGLE, stance));
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_FAIR, 2, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_FAIR, 2, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_FAIR, 1, HG_FINAL_BASE_KNOCKBACK, get_move_hitbox_property(AT_FAIR, 2, HG_FINAL_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_FAIR, 2, HG_EFFECT, 0);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.90);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 1000);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -8);
set_hitbox_value(AT_FAIR, 2, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, get_move_hitbox_property(AT_FAIR, 2, HG_HIT_SFX, stance));
set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, get_move_hitbox_property(AT_FAIR, 2, HG_ANGLE_FLIPPER, stance));
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, get_move_hitbox_property(AT_FAIR, 2, HG_HITBOX_GROUP, stance));

//Functions
//  Setters
#define set_move_property {
    // set_move_property(move, index, values[])
    // Sets a move property's value within the move data strucure.
    //
    var move = argument0;
    var index = argument1;
    var value = argument2;

    move_data[move].properties[@ index] = value;
    move_data[move].props_used[array_length(move_data[move].props_used)] = index;
    // print_debug(string(index) + ": " + string(move_data[move].properties[index]));
}

#define set_move_window_property {
    // set_move_property(move, window, index, values[])
    // Sets a window property's value within the move data strucure.
    //
    var move = argument0;
    var _window = argument1;
    var index = argument2;
    var value = argument3;

    move_data[move].windows[_window][@ index] = value;
    move_data[move].win_props_used[_window][@ array_length(move_data[move].win_props_used[_window])] = index;
}

#define set_move_hitbox_property {
    // set_move_property(move, hitbox, index, values[])
    // Sets a window property's value within the move data strucure.
    //
    var move = argument0;
    var hbox = argument1;
    var index = argument2;
    var value = argument3;

    move_data[move].hitboxes[hbox][@ index] = value;
    move_data[move].hbx_props_used[hbox][@ array_length(move_data[move].hbx_props_used[hbox])] = index;
}

#define set_move_num_properties {
    var move = argument0;
    var num_properties = argument1;

    for(var i = num_properties; i > 0; i--){
        move_data[move].properties[i] = [0];
    }
}

#define set_move_num_windows {
    var move = argument0;
    var num_windows = argument1;

    for(var i = num_windows; i > 0; i--){
        move_data[move].win_props_used[i] = [0];
        move_data[move].windows[i] = [0];
    }
}

#define set_move_num_hitboxes {
    var move = argument0;
    var num_hboxes = argument1;

    for(var i =num_hboxes; i > 0; i--){
        move_data[move].hbx_props_used[i] = [0];
        move_data[move].hitboxes[i] = [0];
    }
}

//  Getters
#define get_move_property {
    // get_move_property(move, index, stance)
    // Gets a move property's value for a given stance within the move data strucure.
    //
    var move = argument0;
    var index = argument1;
    var _stance = argument2;

    return move_data[move].properties[@ index][@ _stance];
}

#define get_move_window_property {
    // get_move_window_property(move, window, index, stance)
    // Gets a window property's value for a given stance within the move data strucure.
    //
    var move = argument0;
    var _window = argument1;
    var index = argument2;
    var _stance = argument3;

    return move_data[move].windows[@ _window][@ index][@ _stance];
}

#define get_move_hitbox_property {
    // get_move_window_property(move, hitbox, index, stance)
    // Gets a hitbox property's value for a given stance within the move data strucure.
    //
    var move = argument0;
    var hbox = argument1;
    var index = argument2;
    var _stance = argument3;

    return move_data[move].hitboxes[@ hbox][@ index][@ _stance];
    // print_debug(string(hbox) + " " + string(index) + ": " + string(move_data[move].hitboxes[hbox][index][_stance]));
}