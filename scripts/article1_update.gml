//Article 1 Update

//Important Temp Variables
var time_since_creation = get_gameplay_time() - creation_time;
player_in_range = array_create(5, false);

with(asset_get("oPlayer")) {
    var alei_dist_to_boombox;

    if(y - (bbox_bottom - bbox_top) / 2  <= other.y - (other.bbox_bottom - other.bbox_top) / 2) {
        alei_dist_to_boombox = point_distance(x, y, other.x, other.y - (other.bbox_bottom - other.bbox_top) / 2);
    } else {
        alei_dist_to_boombox = point_distance(x, y - (bbox_bottom - bbox_top), other.x, other.y - (other.bbox_bottom - other.bbox_top) / 2);
    }

    if(alei_dist_to_boombox <= other.radius) {
        with(other) {
            player_in_range[other.player] = true;
        }
    }
}

if(init = true) {
    init = false;
    // print_debug(string(element));
    sprite_index = sprite_get("berimbau" + string(element));
    break_sprite = sprite_get("berimbau" + string(element) + "_break");
} else if(!destroyed) {
    //Elemental Behavior
    switch(element) {
        case 0: //Fire Behavior
            measure_progress = time_since_creation % bar_length;
            with(asset_get("oPlayer")) {
                with(other) {
                    if(measure_progress % frames_per_beat == 0 && !bad_timing_lockout) {
                        sound_play(metronome_sound, false, (measure_progress div 15) - 1, 1, 1.25 - (measure_progress/bar_length));
                    }

                    if(measure_progress == leniancy && !bad_timing_lockout) {
                        can_burst = true;
                        has_decremented = false;
                    }

                    burst_input = other.attack_pressed || other.up_stick_down || other.right_stick_down || other.down_stick_down || other.left_stick_down;
                    if(can_burst && (measure_progress < leniancy || measure_progress > bar_length - leniancy) && player_in_range[other.player] && burst_input && other.state != PS_HITSTUN) {
                        spawn_hit_fx(x, y + (bbox_top - bbox_bottom)/2, 148);
                        spawn_hit_fx(x, y + (bbox_top - bbox_bottom)/2, 302);

                        var explosion = create_hitbox(AT_EXTRA_1, 1, x, y + (bbox_top - bbox_bottom) div 2);
                        explosion.player = other.player;
                        
                        sound_play(explosion_sound, false, noone, 1, .4 + .3*uses);
                        
                        decrement_uses();
                        
                        can_burst = false;
                    }

                    if(!(measure_progress < leniancy || measure_progress > bar_length - leniancy) && player_in_range[other.player] && other.attack_pressed && other.state != PS_HITSTUN) {
                        bad_timing_lockout = bar_length + (bar_length - measure_progress);
                        sound_play(missed_input_sound, false, noone, .25, .75);
                    }

                    if(bad_timing_lockout > 0) {
                        bad_timing_lockout--;
                    }
                }
            }
            break;
        
        case 1: //Air Behavior
            with(asset_get("oPlayer")) {
                with(other) {
                    if(player_in_range[other.player] && other.free && other.vsp >= 0 && other.state_cat != SC_HITSTUN) {
                        other.vsp -= other.gravity_speed * gravity_reduction;

                        if(other.state == PS_ATTACK_AIR && other.window == 1 && other.window_timer == 0) {
                            decrement_uses();
                        } else {
                            has_decremented = false;
                        }
                    }
                }
            }
            break;
        
        case 2: //Water Behavior
            with(asset_get("oPlayer")) {
                with(other) {
                    if(player_in_range[other.player] && other.state == PS_HITSTUN && !other.hitstop) {
                        other.hsp *= slow_factor;
                        other.vsp *= slow_factor;

                        var dam = get_player_damage(other.player);
                        other.state_timer += hitstun_decay_max*power(hitstun_decay_factor,dam);
                        has_decremented = false;
                    }

                    if(other.hitstop) {
                        decrement_uses();
                    }
                }
            }
            break;
        
        case 3: //Earth Behavior
            if(player_in_range[player]) {
                player_id.stance_locked = true;
            } else {
                player_id.stance_locked = false;
            }

        default:
            break;
    }

    //Gravity
    if(free && vsp < max_fall) {
        vsp = max(vsp + gravity_speed, max_fall);
    }

    //Follow Platform
    //Check below if on a platform, platform article, or solid article.
    var plat = collision_point(x + hsp, y + vsp, asset_get("par_jumpthrough"), true, true);
    var a_plat = noone;

    if(plat == noone) {
        var a_plat = collision_point(x + hsp, y + vsp, asset_get("obj_article_platform"), true, true);

        if(a_plat == noone) {
            a_plat = collision_point(x + hsp, y + vsp, asset_get("obj_article_solid"), true, true);
        }
    }
    
    if(plat != noone) {
        var x_offset = x - get_instance_x(plat);
        var y_offset = y - get_instance_y(plat);
        
        if("hsp" in plat && "vsp" in plat) {
            x = get_instance_x(plat) + x_offset + plat.hsp;
            y = get_instance_y(plat) + y_offset + plat.vsp;
        } else {
            x = x + hsp;
            y = get_instance_y(plat);
            hsp = 0;
            vsp = 0;
        }
    }

    if(a_plat != noone) {
        var x_offset = x - a_plat.x;
        var y_offset = y - a_plat.y;

        x = a_plat.x + x_offset + a_plat.hsp;
        y = a_plat.y + y_offset + a_plat.vsp;
    }

    if((instance_exists(player_id.boom_box_id) && player_id.boom_box_id != self) || uses <= 0 || x < 0 || x > room_width || y < 0 || y > room_height || place_meeting(x, y, asset_get("plasma_field_obj"))) {
        destroyed = true;
    }
} else {
    if(destroy_timer == 0) {
        sprite_index = break_sprite;
        image_index = 0;
        sound_play(destroy_sound, false, noone, 1, .75);
    }
    
    player_id.move_cooldown[AT_DSPECIAL] = 2;
    destroy_timer++;

    if(destroy_timer == destroy_time) {
        instance_destroy();
    }
}

//Animation
if(instance_exists(self)) {
    if(image_index < idle_anim_frame_start) {
        image_index += (destroyed ? break_anim_speed : anim_speed);
    } else {
        image_index = (image_index - idle_anim_frame_start + (destroyed ? break_anim_speed : anim_speed)) % idle_anim_length + idle_anim_frame_start;
    }
}

//Functions
#define decrement_uses {
    if(!has_decremented) {
        uses--;
        sound_play(use_decrement_sound, false, noone, 1, 1 + .25*uses);
    }

    has_decremented = true;
}