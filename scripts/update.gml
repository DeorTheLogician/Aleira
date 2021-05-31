//update

//Stance lock
if(!instance_exists(boom_box_id)) {
    stance_locked = false;
} else if(boom_box_id.element != 3) {
    stance_locked = false;
}

//Afterimage ledger
if(attack == AT_FSPECIAL && window == 1 || window == 2) {
    afterimage_length = afterimage_length_fspec;
} if(afterimage_length > round((stance_ticker % ticker_segment_length)*.6 + 1.1)) {
    afterimage_length = max(0, afterimage_length - 1);
}

if(get_gameplay_time() % 2 == 0) {
    if(state_cat == SC_HITSTUN && afterimage_ledger != noone) {
        ds_list_destroy(afterimage_ledger);
        afterimage_ledger = ds_list_create();
    }

    if(state_cat != SC_HITSTUN) {
        ds_list_add(afterimage_ledger, [x, y, sprite_index, image_index, stance_color_current]);
        // print_debug(ds_list_size(afterimage_ledger));
        while(ds_list_size(afterimage_ledger) > afterimage_length) {
            ds_list_delete(afterimage_ledger, 0);
        }
    }
}