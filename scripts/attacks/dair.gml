//Database Initialization
//  Properties
set_move_property(AT_DAIR, AG_LANDING_LAG, [ 9,  8,  8, 10]);

//  Windows
set_move_num_windows(AT_DAIR, 3);
set_move_window_property(AT_DAIR, 1, AG_WINDOW_LENGTH,      [ 9,  9,  6, 13]);
set_move_window_property(AT_DAIR, 1, AG_WINDOW_SFX_FRAME,   [ 8,  8,  5, 12]);
set_move_window_property(AT_DAIR, 1, AG_WINDOW_SFX, [asset_get("sfx_swipe_medium2"), asset_get("sfx_swipe_weak1"), asset_get("sfx_swipe_medium2"), asset_get("sfx_swipe_heavy1")]);

set_move_window_property(AT_DAIR, 2, AG_WINDOW_TYPE,    [ 0,  9,  0,  0]);
set_move_window_property(AT_DAIR, 2, AG_WINDOW_LENGTH,  [ 5,  4,  8,  3]);

set_move_window_property(AT_DAIR, 3, AG_WINDOW_LENGTH, [ 9,  9,  7, 13]);

//  Hitboxes
set_move_num_hitboxes(AT_DAIR, 2);
set_move_hitbox_property(AT_DAIR, 1, HG_LIFETIME,                [ 5,  3,  8,  3]);
set_move_hitbox_property(AT_DAIR, 1, HG_PRIORITY,                [ 3,  3,  3,  3])
set_move_hitbox_property(AT_DAIR, 1, HG_DAMAGE,                  [10,  2,  6, 11]);
set_move_hitbox_property(AT_DAIR, 1, HG_ANGLE,                  [270,361, 85,270]);
set_move_hitbox_property(AT_DAIR, 1, HG_BASE_KNOCKBACK,          [ 3,  3,  6,  6]);
set_move_hitbox_property(AT_DAIR, 1, HG_KNOCKBACK_SCALING,       [.5, .2, .3, .6]);
set_move_hitbox_property(AT_DAIR, 1, HG_FINAL_BASE_KNOCKBACK,    [ 3,  3,  3,  6]);
set_move_hitbox_property(AT_DAIR, 1, HG_HIT_SFX, [asset_get("sfx_blow_medium2"), asset_get("sfx_blow_weak1"), asset_get("sfx_blow_heavy2"), asset_get("sfx_blow_heavy1")]);

set_move_hitbox_property(AT_DAIR, 2, HG_LIFETIME,            [ 5,  3,  8,  3]);
set_move_hitbox_property(AT_DAIR, 2, HG_DAMAGE,              [ 8,  2,  6, 11]);
set_move_hitbox_property(AT_DAIR, 2, HG_ANGLE,              [361,270, 85,270]);
set_move_hitbox_property(AT_DAIR, 2, HG_BASE_KNOCKBACK,      [ 3,  3,  5,  6]);
set_move_hitbox_property(AT_DAIR, 2, HG_KNOCKBACK_SCALING,   [.5, .1, .3, .6]);
set_move_hitbox_property(AT_DAIR, 2, HG_HIT_SFX, [asset_get("sfx_blow_weak2"), asset_get("sfx_blow_medium1"), asset_get("sfx_blow_weak2"), asset_get("sfx_blow_weak1")]);


//Value Setting
set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, get_move_property(AT_DAIR, AG_LANDING_LAG, stance));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, get_move_window_property(AT_DAIR, 1, AG_WINDOW_LENGTH, stance));
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, get_move_window_property(AT_DAIR, 1, AG_WINDOW_SFX, stance));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, get_move_window_property(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, stance));

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, get_move_window_property(AT_DAIR, 2, AG_WINDOW_TYPE, stance));
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, get_move_window_property(AT_DAIR, 2, AG_WINDOW_LENGTH, stance));
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, get_move_window_property(AT_DAIR, 3, AG_WINDOW_LENGTH, stance));
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 2);

//Hitbox 1 - Generated via Lucid Dream
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, get_move_hitbox_property(AT_DAIR, 1, HG_LIFETIME, stance));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 42);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, get_move_hitbox_property(AT_DAIR, 1, HG_PRIORITY, stance));
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, get_move_hitbox_property(AT_DAIR, 1, HG_DAMAGE, stance));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, get_move_hitbox_property(AT_DAIR, 1, HG_ANGLE, stance));
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_DAIR, 1, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_DAIR, 1, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_DAIR, 1, HG_FINAL_BASE_KNOCKBACK, get_move_hitbox_property(AT_DAIR, 1, HG_FINAL_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_DAIR, 1, HG_EFFECT, 0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.60);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, get_move_hitbox_property(AT_DAIR, 1, HG_HIT_SFX, stance));

//Hitbox 2 - Generated via Lucid Dream
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, get_move_hitbox_property(AT_DAIR, 2, HG_LIFETIME, stance));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 6);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 44);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, get_move_hitbox_property(AT_DAIR, 2, HG_DAMAGE, stance));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, get_move_hitbox_property(AT_DAIR, 2, HG_ANGLE, stance));
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_DAIR, 2, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_DAIR, 2, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_DAIR, 2, HG_EFFECT, 0);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.60);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 2, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, get_move_hitbox_property(AT_DAIR, 2, HG_HIT_SFX, stance));

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