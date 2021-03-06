///Hit Player
if(instance_exists(boom_box_id)) {
    if(boom_box_id.player_in_range[hit_player_obj.player] && boom_box_id.element == 2) {
        hit_player_obj.should_make_shockwave = false;
        // print_debug("no galaxy");
    }
}

//Grab code from Mawral's template
if (my_hitboxID.attack == AT_NSPECIAL) {
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && was_parried == false && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		set_attack(AT_NSPECIAL_2);
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) {
                grabbed_player_obj = hit_player_obj;
        } else {    //if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}