/// @description movement

//check to see if either the current or previous key were released
if(keyboard_check_released(vk_left)){
	if (current_pressed_key == "left"){
		current_pressed_key = previous_pressed_key;	
	} 
	
	if( previous_pressed_key == "left"){
		previous_pressed_key = 0;	
	}
}

if(keyboard_check_released(vk_right)){
	if (current_pressed_key == "right"){
		current_pressed_key = previous_pressed_key;	
	} 

	if( previous_pressed_key == "right"){
		previous_pressed_key = 0;	
	}
}

if(keyboard_check_released(vk_up)){

	if (current_pressed_key == "up"){
		current_pressed_key = previous_pressed_key;	
	} 

	if( previous_pressed_key == "up"){
		previous_pressed_key = 0;	
	}
}

if(keyboard_check_released(vk_down)){

	if (current_pressed_key == "down"){
		current_pressed_key = previous_pressed_key;	
	} 
	
	if( previous_pressed_key == "down"){
		previous_pressed_key = 0;	
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
var move_left = keyboard_check(vk_left);
var move_right = keyboard_check(vk_right);
var move_up = keyboard_check(vk_up);
var move_down = keyboard_check(vk_down);

var h_speed = (move_right - move_left) * p_speed;
var v_speed = (move_down - move_up) * p_speed;

//collision
if(place_meeting(x + h_speed, y + v_speed, obj_furnishing)){
	v_speed = 0;
	h_speed = 0;
}

//movement execution
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




