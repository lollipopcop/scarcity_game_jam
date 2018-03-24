/// @description movement

var bbox_side;

//check to see if either the current or previous key were released
if(keyboard_check_released(vk_left)){

	if( previous_pressed_key == "left"){ previous_pressed_key = 0; }

	if (current_pressed_key == "left" && previous_pressed_key != "left"){ 
		current_pressed_key = previous_pressed_key; 
	} else if (current_pressed_key == "left" && previous_pressed_key == "left"){
		current_pressed_key = 0;	
	}
}

if(keyboard_check_released(vk_right)){
		
	if( previous_pressed_key == "right"){ previous_pressed_key = 0;	}

	if (current_pressed_key == "right" && previous_pressed_key != "right"){ 
		current_pressed_key = previous_pressed_key; 
	} else if (current_pressed_key == "right" && previous_pressed_key == "right"){
		current_pressed_key = 0;	
	}
}

if(keyboard_check_released(vk_up)){

	if( previous_pressed_key == "up"){ previous_pressed_key = 0; }

	if (current_pressed_key == "up" && previous_pressed_key != "up"){ 
		current_pressed_key = previous_pressed_key; 
	} else if (current_pressed_key == "up" && previous_pressed_key == "up"){
		current_pressed_key = 0;	
	}
}

if(keyboard_check_released(vk_down)){

	if( previous_pressed_key == "down"){ previous_pressed_key = 0; }

	if (current_pressed_key == "down" && previous_pressed_key != "down"){ 
		current_pressed_key = previous_pressed_key; 
	} else if (current_pressed_key == "down" && previous_pressed_key == "down"){
		current_pressed_key = 0;	
	}
}


//check which key was most recently pressed
if(keyboard_check_pressed(vk_left)){
	previous_pressed_key = current_pressed_key;
	current_pressed_key = "left"; 
}
if(keyboard_check_pressed(vk_right)){ 
	previous_pressed_key = current_pressed_key;
	current_pressed_key = "right"; 
}
if(keyboard_check_pressed(vk_up)){ 
	previous_pressed_key = current_pressed_key;
	current_pressed_key = "up"; 
}
if(keyboard_check_pressed(vk_down)){ 
	previous_pressed_key = current_pressed_key;
	current_pressed_key = "down"; 
}

//movement setup
var move_left = 0;
var move_right = 0;
var move_up = 0;
var move_down = 0;

if(current_pressed_key == "left"){ var move_left = 1; }
if(current_pressed_key == "right"){ var move_right = 1; }
if(current_pressed_key == "up"){ var move_up = 1; }
if(current_pressed_key == "down"){ var move_down = 1; }


var h_speed = (move_right - move_left) * p_speed;
var v_speed = (move_down - move_up) * p_speed;

//collision
if(place_meeting(x + h_speed, y + v_speed, obj_furnishing)){
	v_speed = 0;
	h_speed = 0;
}

//collision with tilemap
if ( h_speed > 0 ) { bbox_side = bbox_right; } else { bbox_side = bbox_left; }

if(((tilemap_get_at_pixel(tilemap, bbox_side + h_speed, bbox_top)) != 0) || (tilemap_get_at_pixel(tilemap, bbox_side + h_speed, bbox_bottom) != 0)){
	h_speed = 0;
}

if ( v_speed > 0 ) { bbox_side = bbox_bottom; } else { bbox_side = bbox_top; }

if(((tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + v_speed)) != 0) || (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + v_speed) != 0)){
	v_speed = 0;
}

if( move_left && current_pressed_key == "left" ) {
	x += h_speed;	
} 
if( move_right && current_pressed_key == "right") {
	x += h_speed;
}  
if( move_up && current_pressed_key == "up") {
	y += v_speed;
} 
if( move_down && current_pressed_key == "down") {
	y += v_speed;
}


// Check for interaction
if (keyboard_check_pressed(vk_control)) {
	if (place_meeting(x, y-5, obj_furnishing)) {
		instance_create_depth(x - 80, y + 80, 0, obj_skill_check);
	}
}