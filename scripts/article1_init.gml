//Article 1 Init

//Sprite Traits
sprite_index = sprite_get("berimbau");
mask_index = asset_get("ex_guy_hurt");// sprite_get("berimbau_mask");
image_index = 0;
idle_anim_frame_start = 0;
idle_anim_length = 10;
break_anim_length = 10;
anim_speed = 1/6;
break_anim_speed = 1/2;

//General Traits
use_decrement_sound = asset_get("mfx_input_back");
creation_time = get_gameplay_time();
uses_shader = true;
init = true;
destroyed = false;
destroy_time = break_anim_length / break_anim_speed;
destroy_timer = 0;
destroy_sound = asset_get("sfx_ice_shatter_big");
can_be_grouned = true;
ignores_walls = false;
gravity_speed = .5;
max_fall = 12;
element = 0;
radius = 120;
uses = 4;
elasticity = .1;
has_decremented = false;

//Additional Traits
//  Fire Triats
tempo = 120;    //Tempo of fire song in beats per minute.
frames_per_beat = (60 * 60) / 120;    //Number of frames for one beat.
beats_per_bar = 2;
bar_length = frames_per_beat * beats_per_bar;
can_burst = false;
bad_timing_lockout = bar_length;
leniancy = 15;
metronome_sound = asset_get("mfx_input_key");
missed_input_sound = asset_get("mfx_tut_fail");
explosion_sound = asset_get("sfx_zetter_fireball_fire");

//  Air Traits
gravity_reduction = 0.9;

//  Water Traits
slow_factor = 0.8;
hitstun_decay_factor = 0.99108;
hitstun_decay_max = 1.776;

//  Earth Traits