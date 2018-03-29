/// @description movement
if ( state == "awake" ){
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

//increase stress over time
stress = stress + (room_speed / (room_speed * 50));
time = time + (room_speed / (room_speed * 20));

if ( stress >= 100 ) {
	highscore_add("Sleepless Bob", sleep_total);
	audio_stop_all();
	var next_room = instance_create_layer(0, 0, "gui_layer", obj_fade);
	next_room.next_room = rm_lose;
	

}

if ( stress < 0 ) {
	stress = 0;
}

if( time == 1860 ){
	highscore_add("Sleepless Bob", sleep_total);
	audio_stop_all();
	var next_room = instance_create_layer(0, 0, "gui_layer", obj_fade);
	next_room.next_room = rm_lose;

}

