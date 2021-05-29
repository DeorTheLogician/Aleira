//Database Initialization
//  Properties
set_move_property(AT_UAIR, AG_LANDING_LAG, [ 5,  7,  9,  8]);

//  Windows
set_move_num_windows(AT_UAIR, 5);
set_move_window_property(AT_UAIR, 1, AG_WINDOW_LENGTH,      [ 6,  4,  4,  8]);
set_move_window_property(AT_UAIR, 1, AG_WINDOW_SFX_FRAME,   [ 5,  3,  3,  7]);
set_move_window_property(AT_UAIR, 1, AG_WINDOW_SFX, [asset_get("sfx_swipe_medium1"), asset_get("sfx_swipe_weak2"), asset_get("sfx_swipe_medium2"), asset_get("sfx_swipe_medium2")]);

set_move_window_property(AT_UAIR, 2, AG_WINDOW_LENGTH, [ 2,  3,  2,  2]);

set_move_window_property(AT_UAIR, 3, AG_WINDOW_LENGTH, [ 2,  3,  2,  2]);

set_move_window_property(AT_UAIR, 4, AG_WINDOW_LENGTH, [ 2,  3,  4,  2]);

set_move_window_property(AT_UAIR, 5, AG_WINDOW_LENGTH, [ 14, 10, 12, 20]);

//  Hitboxes
//  pt 1
set_move_num_hitboxes(AT_UAIR, 6);
set_move_hitbox_property(AT_UAIR, 1, HG_DAMAGE,             [10,  3, 10,  8]);
set_move_hitbox_property(AT_UAIR, 1, HG_ANGLE,             [100, 55, 75, 70]);
set_move_hitbox_property(AT_UAIR, 1, HG_BASE_KNOCKBACK,     [ 5,  4,  4,  7]);
set_move_hitbox_property(AT_UAIR, 1, HG_KNOCKBACK_SCALING, [.75,  0, .8, .75]);
set_move_hitbox_property(AT_UAIR, 1, HG_HITBOX_GROUP,       [ 0,  0,  0,  0]);
set_move_hitbox_property(AT_UAIR, 1, HG_HIT_SFX, [asset_get("sfx_blow_medium1"), asset_get("sfx_blow_weak1"), asset_get("sfx_blow_medium1"), asset_get("sfx_blow_heavy2")]);

set_move_hitbox_property(AT_UAIR, 2, HG_DAMAGE,             [ 8,  2, 10,  6]);
set_move_hitbox_property(AT_UAIR, 2, HG_ANGLE,             [100, 70, 75, 70]);
set_move_hitbox_property(AT_UAIR, 2, HG_BASE_KNOCKBACK,     [ 5,  4,  4,  6]);
set_move_hitbox_property(AT_UAIR, 2, HG_KNOCKBACK_SCALING,  [.5, .3, .8, .5]);
set_move_hitbox_property(AT_UAIR, 2, HG_HITBOX_GROUP,       [ 0,  0,  0,  0]);
set_move_hitbox_property(AT_UAIR, 2, HG_HIT_SFX, [asset_get("sfx_blow_weak2"), asset_get("sfx_blow_weak2"), asset_get("sfx_blow_weak2"), asset_get("sfx_blow_medium2")]);

//  pt 2
set_move_hitbox_property(AT_UAIR, 3, HG_DAMAGE,             [ 8,  3, 10,  8]);
set_move_hitbox_property(AT_UAIR, 3, HG_ANGLE,              [60,300, 75, 70]);
set_move_hitbox_property(AT_UAIR, 3, HG_BASE_KNOCKBACK,     [ 5,  4,  4,  7]);
set_move_hitbox_property(AT_UAIR, 3, HG_KNOCKBACK_SCALING,  [.5,  0, .8, .75]);
set_move_hitbox_property(AT_UAIR, 3, HG_HITBOX_GROUP,       [ 0,  1,  0,  0]);
set_move_hitbox_property(AT_UAIR, 3, HG_HIT_SFX, [asset_get("sfx_blow_medium1"), asset_get("sfx_blow_weak1"), asset_get("sfx_blow_medium1"), asset_get("sfx_blow_heavy2")]);

set_move_hitbox_property(AT_UAIR, 4, HG_DAMAGE,             [ 8,  2, 10,  6]);
set_move_hitbox_property(AT_UAIR, 4, HG_ANGLE,              [60, 60, 75, 70]);
set_move_hitbox_property(AT_UAIR, 4, HG_BASE_KNOCKBACK,     [ 5,  4,  4,  6]);
set_move_hitbox_property(AT_UAIR, 4, HG_KNOCKBACK_SCALING,  [.5, .3, .8, .5]);
set_move_hitbox_property(AT_UAIR, 4, HG_HITBOX_GROUP,       [ 0,  1,  0,  0]);
set_move_hitbox_property(AT_UAIR, 4, HG_HIT_SFX, [asset_get("sfx_blow_weak2"), asset_get("sfx_blow_weak2"), asset_get("sfx_blow_weak2"), asset_get("sfx_blow_medium2")]);

//  pt 3
set_move_hitbox_property(AT_UAIR, 5, HG_LIFETIME,           [ 2,  2,  4,  2]);
set_move_hitbox_property(AT_UAIR, 5, HG_DAMAGE,             [ 8,  3,  6,  8]);
set_move_hitbox_property(AT_UAIR, 5, HG_ANGLE,              [60, 90, 90, 70]);
set_move_hitbox_property(AT_UAIR, 5, HG_BASE_KNOCKBACK,     [ 5,  5,  5,  7]);
set_move_hitbox_property(AT_UAIR, 5, HG_KNOCKBACK_SCALING,  [.5, .5, .5, .75]);
set_move_hitbox_property(AT_UAIR, 5, HG_HITBOX_GROUP,       [ 0,  2,  0,  0]);
set_move_hitbox_property(AT_UAIR, 5, HG_HIT_SFX, [asset_get("sfx_blow_medium1"), asset_get("sfx_blow_weak2"), asset_get("sfx_blow_medium1"), asset_get("sfx_blow_heavy2")]);

set_move_hitbox_property(AT_UAIR, 6, HG_LIFETIME,           [ 2,  2,  4,  2]);
set_move_hitbox_property(AT_UAIR, 6, HG_DAMAGE,             [ 8,  2,  6,  6]);
set_move_hitbox_property(AT_UAIR, 6, HG_ANGLE,              [60,110, 90, 80]);
set_move_hitbox_property(AT_UAIR, 6, HG_BASE_KNOCKBACK,     [ 5,  6,  5,  6]);
set_move_hitbox_property(AT_UAIR, 6, HG_KNOCKBACK_SCALING,  [.5, .2, .5, .5]);
set_move_hitbox_property(AT_UAIR, 6, HG_HITBOX_GROUP,       [ 0,  2,  0,  0]);
set_move_hitbox_property(AT_UAIR, 6, HG_HIT_SFX, [asset_get("sfx_blow_weak2"), asset_get("sfx_blow_medium1"), asset_get("sfx_blow_weak2"), asset_get("sfx_blow_medium2")]);


//Value Setting
set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, get_move_property(AT_UAIR, AG_LANDING_LAG, stance));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, get_move_window_property(AT_UAIR, 1, AG_WINDOW_LENGTH, stance));
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, get_move_window_property(AT_UAIR, 1, AG_WINDOW_SFX, stance));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, get_move_window_property(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, stance));

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, get_move_window_property(AT_UAIR, 2, AG_WINDOW_LENGTH, stance));
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, get_move_window_property(AT_UAIR, 3, AG_WINDOW_LENGTH, stance));
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, get_move_window_property(AT_UAIR, 4, AG_WINDOW_LENGTH, stance));
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, get_move_window_property(AT_UAIR, 5, AG_WINDOW_LENGTH, stance));
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 6);

//Hitbox 1 - Generated via Lucid Dream
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -91);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 96);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, get_move_hitbox_property(AT_UAIR, 1, HG_DAMAGE, stance));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, get_move_hitbox_property(AT_UAIR, 1, HG_ANGLE, stance));
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_UAIR, 1, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_UAIR, 1, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_UAIR, 1, HG_EFFECT, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.50);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, get_move_hitbox_property(AT_UAIR, 1, HG_HIT_SFX, stance));
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, get_move_hitbox_property(AT_UAIR, 1, HG_HITBOX_GROUP, stance));

//Hitbox 2 - Generated via Lucid Dream
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -44);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -75);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 30);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, get_move_hitbox_property(AT_UAIR, 2, HG_DAMAGE, stance));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, get_move_hitbox_property(AT_UAIR, 2, HG_ANGLE, stance));
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_UAIR, 2, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_UAIR, 2, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_UAIR, 2, HG_EFFECT, 0);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.40);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, get_move_hitbox_property(AT_UAIR, 2, HG_HIT_SFX, stance));
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, get_move_hitbox_property(AT_UAIR, 2, HG_HITBOX_GROUP, stance));

//Hitbox 3 - Generated via Lucid Dream
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 48);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -75);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 66);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 84);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, get_move_hitbox_property(AT_UAIR, 3, HG_DAMAGE, stance));
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, get_move_hitbox_property(AT_UAIR, 3, HG_ANGLE, stance));
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_UAIR, 3, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_UAIR, 3, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_UAIR, 3, HG_EFFECT, 0);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.50);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 3, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, get_move_hitbox_property(AT_UAIR, 3, HG_HIT_SFX, stance));
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, get_move_hitbox_property(AT_UAIR, 3, HG_HITBOX_GROUP, stance));

//Hitbox 4 - Generated via Lucid Dream
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 24);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -111);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 72);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 22);
set_hitbox_value(AT_UAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, get_move_hitbox_property(AT_UAIR, 4, HG_DAMAGE, stance));
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, get_move_hitbox_property(AT_UAIR, 4, HG_ANGLE, stance));
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_UAIR, 4, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_UAIR, 4, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_UAIR, 4, HG_EFFECT, 0);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, 0.40);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 4, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, get_move_hitbox_property(AT_UAIR, 4, HG_HIT_SFX, stance));
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, get_move_hitbox_property(AT_UAIR, 4, HG_HITBOX_GROUP, stance));

//Hitbox 5 - Generated via Lucid Dream
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, get_move_hitbox_property(AT_UAIR, 5, HG_DAMAGE, stance));
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 16);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -16);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 64);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 62);
set_hitbox_value(AT_UAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, get_move_hitbox_property(AT_UAIR, 5, HG_DAMAGE, stance));
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, get_move_hitbox_property(AT_UAIR, 5, HG_ANGLE, stance));
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_UAIR, 5, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_UAIR, 5, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_UAIR, 5, HG_EFFECT, 0);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 0.50);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 5, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, get_move_hitbox_property(AT_UAIR, 5, HG_HIT_SFX, stance));
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, get_move_hitbox_property(AT_UAIR, 5, HG_HITBOX_GROUP, stance));

//Hitbox 6 - Generated via Lucid Dream
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, get_move_hitbox_property(AT_UAIR, 6, HG_DAMAGE, stance));
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, 46);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -41);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 28);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_UAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, get_move_hitbox_property(AT_UAIR, 6, HG_DAMAGE, stance));
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, get_move_hitbox_property(AT_UAIR, 6, HG_ANGLE, stance));
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_UAIR, 6, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_UAIR, 6, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_UAIR, 6, HG_EFFECT, 0);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, 0.40);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 6, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, get_move_hitbox_property(AT_UAIR, 6, HG_HIT_SFX, stance));
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, get_move_hitbox_property(AT_UAIR, 6, HG_HITBOX_GROUP, stance));

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