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
}

else {
    //Elemental Behavior
    switch(element) {
        case 0: //Fire Behavior
            measure_progress = time_since_creation % bar_length;



            }
            break;
        
        case 1: //Air Behavior
            with(asset_get("oPlayer")) {
                with(other) {
                    if(player_in_range[other.player] && other.free && other.vsp >= 0 && other.state_cat != SC_HITSTUN) {
                        other.vsp -= other.gravity_speed * gravity_reduction;

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
        instance_destroy();
    }
}

//Animation
if(image_index < idle_anim_frame_start) {
    image_index += anim_speed;
} else {
    image_index = (image_index - idle_anim_frame_start + anim_speed) % idle_anim_length + idle_anim_frame_start;
}

//Functions
#define decrement_uses {
    if(!has_decremented) {
        uses--;
    }

    has_decremented = true;
}