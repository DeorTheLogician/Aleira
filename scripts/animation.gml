///Animation

switch(state) {
    case PS_IDLE:
        if(instance_exists(boom_box_id)) {
            image_index = (boom_box_id.image_index + 2) % 5;
        }
        break;

    case PS_DASH:
    case PS_DASH_TURN:
    	if(hurtboxID.sprite_index != hurtbox_dash_spr) {
            hurtboxID.sprite_index = hurtbox_dash_spr;
        }
        break;
    
    default:
        if (hurtboxID.sprite_index == hurtbox_dash_spr) {
            hurtboxID.sprite_index = hurtbox_spr;
        }
        break;
}