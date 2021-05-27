//Database Initialization
//  Properties
set_move_property(AT_BAIR, AG_LANDING_LAG, [ 4,  6,  8, 10]);

//  Windows
set_move_num_windows(AT_BAIR, 4);
set_move_window_property(AT_BAIR, 1, AG_WINDOW_LENGTH,      [11,  9, 11, 16]);
set_move_window_property(AT_BAIR, 1, AG_WINDOW_SFX_FRAME,   [10,  8, 10, 15]);
set_move_window_property(AT_BAIR, 1, AG_WINDOW_SFX, [asset_get("sfx_swipe_medium2"), asset_get("sfx_swipe_medium1"), asset_get("sfx_swipe_heavy2"), asset_get("sfx_swipe_heavy1")]);

set_move_window_property(AT_BAIR, 2, AG_WINDOW_LENGTH, [ 2,  3,  3,  2]);

set_move_window_property(AT_BAIR, 3, AG_WINDOW_LENGTH, [ 3,  3,  3,  3]);

set_move_window_property(AT_BAIR, 4, AG_WINDOW_LENGTH, [15, 12, 20, 26]);

//  Hitboxes
set_move_num_hitboxes(AT_BAIR, 3);
set_move_hitbox_property(AT_BAIR, 1, HG_LIFETIME,                [ 2,  3,  3,  2]);
set_move_hitbox_property(AT_BAIR, 1, HG_DAMAGE,                  [ 7,  5,  9, 10]);
set_move_hitbox_property(AT_BAIR, 1, HG_ANGLE,                  [135,300,135,135]);
set_move_hitbox_property(AT_BAIR, 1, HG_BASE_KNOCKBACK,          [ 4,  4,  7,  5]);
set_move_hitbox_property(AT_BAIR, 1, HG_KNOCKBACK_SCALING,       [.6,  0, .5, .6]);
set_move_hitbox_property(AT_BAIR, 1, HG_HITBOX_GROUP,            [ 0,  1,  0,  0]);
set_move_hitbox_property(AT_BAIR, 1, HG_HIT_SFX, [asset_get("sfx_blow_medium2"), asset_get("sfx_blow_weak1"), asset_get("sfx_blow_medium2"), asset_get("sfx_blow_medium1")]);

set_move_hitbox_property(AT_BAIR, 2, HG_LIFETIME,            [ 3,  3,  3,  3]);
set_move_hitbox_property(AT_BAIR, 2, HG_DAMAGE,              [ 5,  5,  6,  7]);
set_move_hitbox_property(AT_BAIR, 2, HG_BASE_KNOCKBACK,      [ 4,  6,  7,  4]);
set_move_hitbox_property(AT_BAIR, 2, HG_KNOCKBACK_SCALING,   [.5, .7, .5, .5]);
set_move_hitbox_property(AT_BAIR, 2, HG_HIT_SFX, [asset_get("sfx_blow_weak2"), asset_get("sfx_blow_medium1"), asset_get("sfx_blow_weak2"), asset_get("sfx_blow_weak1")]);

set_move_hitbox_property(AT_BAIR, 3, HG_PRIORITY,            [ 1,  1,  3,  3]);
set_move_hitbox_property(AT_BAIR, 3, HG_DAMAGE,              [10, 10, 11, 14]);
set_move_hitbox_property(AT_BAIR, 3, HG_ANGLE,              [300,361,135,270]);
set_move_hitbox_property(AT_BAIR, 3, HG_BASE_KNOCKBACK,      [ 4,  8,  9,  6]);
set_move_hitbox_property(AT_BAIR, 3, HG_KNOCKBACK_SCALING,   [ 1, .9, .7,.65]);
set_move_hitbox_property(AT_BAIR, 3, HG_VISUAL_EFFECT,      [143,147,161,155]);
set_move_hitbox_property(AT_BAIR, 3, HG_HIT_SFX, [asset_get("sfx_ell_uspecial_explode"), asset_get("sfx_bird_downspecial_end"), asset_get("sfx_waterhit_heavy2"), asset_get("sfx_kragg_rock_shatter")]);


//Value Setting
set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, get_move_property(AT_BAIR, AG_LANDING_LAG, stance));
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, get_move_window_property(AT_BAIR, 1, AG_WINDOW_LENGTH, stance));
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, get_move_window_property(AT_BAIR, 1, AG_WINDOW_SFX, stance));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, get_move_window_property(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, stance));

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, get_move_window_property(AT_BAIR, 2, AG_WINDOW_LENGTH, stance));
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, get_move_window_property(AT_BAIR, 3, AG_WINDOW_LENGTH, stance));
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);


set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, get_move_window_property(AT_BAIR, 4, AG_WINDOW_LENGTH, stance));
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 3);

//Hitbox 1 - Generated via Lucid Dream
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, get_move_hitbox_property(AT_BAIR, 1, HG_LIFETIME, stance));
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -32);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -43);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 72);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, get_move_hitbox_property(AT_BAIR, 1, HG_DAMAGE, stance));
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, get_move_hitbox_property(AT_BAIR, 1, HG_ANGLE, stance));
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_BAIR, 1, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_BAIR, 1, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_BAIR, 1, HG_EFFECT, 0);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.70);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 1000);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -30);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_BAIR, 1, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, get_move_hitbox_property(AT_BAIR, 1, HG_HIT_SFX, stance));
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, get_move_hitbox_property(AT_BAIR, 1, HG_HITBOX_GROUP, stance));

//Hitbox 2 - Generated via Lucid Dream
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, get_move_hitbox_property(AT_BAIR, 2, HG_LIFETIME, stance));
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -12);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, 2);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, get_move_hitbox_property(AT_BAIR, 2, HG_DAMAGE, stance));
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_BAIR, 2, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_BAIR, 2, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_BAIR, 2, HG_EFFECT, 0);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.50);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -30);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_BAIR, 2, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, get_move_hitbox_property(AT_BAIR, 2, HG_HIT_SFX, stance));

//Hitbox 3 - Generated via Lucid Dream
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -50);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, 5);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 24);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, get_move_hitbox_property(AT_BAIR, 3, HG_PRIORITY, stance));
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, get_move_hitbox_property(AT_BAIR, 3, HG_DAMAGE, stance));
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, get_move_hitbox_property(AT_BAIR, 3, HG_ANGLE, stance));
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_BAIR, 3, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_BAIR, 3, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_BAIR, 3, HG_EFFECT, 0);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, get_move_hitbox_property(AT_BAIR, 3, HG_VISUAL_EFFECT, stance));
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, -30);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_BAIR, 3, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, get_move_hitbox_property(AT_BAIR, 3, HG_HIT_SFX, stance));

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