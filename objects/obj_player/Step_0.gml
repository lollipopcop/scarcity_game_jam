/// @description movement
if ( state == "agency" ){
	scr_player_movement();	
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
