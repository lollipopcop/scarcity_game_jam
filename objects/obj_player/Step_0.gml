/// @description movement
if ( state == "awake" ){
	image_speed = 2;
	obj_bed.image_index = 0;
	object_set_visible(id, true);
	scr_player_movement();	
}

if(state == "sleeping"){
	obj_bed.image_index = 1;
	object_set_visible(id, false);	
	sleep_total = sleep_total + (time - prev_time)
	prev_time = time;

}

if(state == "relaxing") {
	image_speed = 0;
	current_pressed_key = 0;
	previous_pressed_key = 0;
}

//increase stress over time
stress = stress + (room_speed / (room_speed * 50));
time = time + (room_speed / (room_speed * 20));

if ( stress >= 100 || time >= 1860 ) {
	
	global.score_total = sleep_total;
	
	audio_stop_all();
	
	if(time >= 1860){
		global.finished_night = true;
	}
	
	var next_room = instance_create_layer(0, 0, "gui_layer", obj_fade);
	next_room.next_room = rm_outcome;
}

if ( stress < 0 ) {
	stress = 0;
}