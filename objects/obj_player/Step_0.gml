/// @description movement
if ( state == "agency" ){
	scr_player_movement();	
}

//increase stress over time
stress = stress + (room_speed / (room_speed * 80));