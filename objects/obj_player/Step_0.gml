/// @description movement
if ( state == "awake" ){
	image_index = 0;
	obj_bed.image_index = 0;
	object_set_visible(id, true);
	scr_player_movement();	
	audio_stop_sound(snd_sleeping);
}

if(state == "sleeping"){
	image_index = 1;
	obj_bed.image_index = 1;
	object_set_visible(id, false);	
}

//increase stress over time
stress = stress + (room_speed / (room_speed * 80));
time = time + (room_speed / (room_speed * 50));

if ( time > 1440 ){
	time = time - 1440;
}


if ( stress >= 100 ) {
	room_goto(rm_lose);	
}

if ( stress < 0 ) {
	stress = 0;
}
