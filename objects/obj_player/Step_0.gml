/// @description movement
if ( state == "agency" ){
	scr_player_movement();	
}

//increase stress over time
stress = stress + (room_speed / (room_speed * 80));


// Check for interaction
if (keyboard_check_pressed(vk_control)) {
	if (place_meeting(x, y-5, obj_furnishing)) {
		instance_create_depth(x - 80, y + 80, 0, obj_skill_check);
	}
}