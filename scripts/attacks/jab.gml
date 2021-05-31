//Database Initialization
//  Properties
set_move_property(AT_JAB, AG_NUM_WINDOWS, [6,  6,  6,  3]);

//  Windows
set_move_num_windows(AT_JAB, 6);
set_move_window_property(AT_JAB, 1, AG_WINDOW_LENGTH,   [ 4,  4,  4, 13]);
set_move_window_property(AT_JAB, 1, AG_WINDOW_SFX_FRAME,[ 3,  3,  3, 12]);

set_move_window_property(AT_JAB, 2, AG_WINDOW_LENGTH, [ 3,  3,  7, 3]);

set_move_window_property(AT_JAB, 3, AG_WINDOW_LENGTH,       [14, 14, 14, 12]);
set_move_window_property(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE,  [ 1,  1,  1,  0]);

//  Hitboxes
set_move_num_hitboxes(AT_JAB, 2);
set_move_hitbox_property(AT_JAB, 1, HG_ANGLE,             [70, 70,361, 70]);
set_move_hitbox_property(AT_JAB, 1, HG_DAMAGE,            [ 4,  4,  4,  6]);
set_move_hitbox_property(AT_JAB, 1, HG_BASE_KNOCKBACK,    [ 4,  4,  4,  7]);
set_move_hitbox_property(AT_JAB, 1, HG_KNOCKBACK_SCALING, [ 0,  0,  0,.55]);
set_move_hitbox_property(AT_JAB, 1, HG_HIT_SFX, [asset_get("sfx_blow_weak1"), asset_get("sfx_blow_weak1"), asset_get("sfx_blow_weak1"), asset_get("sfx_blow_medium2")]);

set_move_hitbox_property(AT_JAB, 2, HG_ANGLE,            [361, 85,361,361]);
set_move_hitbox_property(AT_JAB, 2, HG_BASE_KNOCKBACK,    [ 8,  7,  9,  7]);
set_move_hitbox_property(AT_JAB, 2, HG_KNOCKBACK_SCALING, [.5, .5,.25,.55]);


//Value Setting
set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, get_move_property(AT_JAB, AG_NUM_WINDOWS, stance));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, get_move_window_property(AT_JAB, 1, AG_WINDOW_LENGTH, stance));
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, get_move_window_property(AT_JAB, 1, AG_WINDOW_SFX_FRAME, stance));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, get_move_window_property(AT_JAB, 2, AG_WINDOW_LENGTH, stance));
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, get_move_window_property(AT_JAB, 3, AG_WINDOW_LENGTH, stance));
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, get_move_window_property(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, stance));
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 7);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_JAB, 2);

//Hitbox 1 - Generated via Lucid Dream
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 42);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, get_move_hitbox_property(AT_JAB, 1, HG_DAMAGE, stance));
set_hitbox_value(AT_JAB, 1, HG_ANGLE, get_move_hitbox_property(AT_JAB, 1, HG_ANGLE, stance));
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_JAB, 1, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_JAB, 1, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_JAB, 1, HG_EFFECT, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_JAB, 1, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, get_move_hitbox_property(AT_JAB, 1, HG_HIT_SFX, stance));
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 0);

//Hitbox 2 - Generated via Lucid Dream
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 38);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -43);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 58);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 62);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, get_move_hitbox_property(AT_JAB, 2, HG_ANGLE, stance));
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_JAB, 2, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_JAB, 2, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_JAB, 2, HG_EFFECT, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_JAB, 2, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, 500);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);

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
}