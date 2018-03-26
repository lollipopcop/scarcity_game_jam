/// @description Insert description here
// You can write your code in this editor

if(state == "sleeping"){
	audio_stop_sound(snd_sleeping);
	audio_resume_sound(snd_theme);
	state = "awake";
	sprite_index = spr_player_unmoving_down;
	exit;
}

//if you are adequaetly destressed you can rest
if((distance_to_object(obj_bed) < 30) && (stress <= 50)){

	//set state audio
	audio_pause_sound(snd_theme);
	audio_play_sound(snd_sleeping, 1, 1);

	//reset movement
	current_pressed_key = 0;
	previous_pressed_key = 0;
	
	//figure out how long to sleep for
	var stress_difference = 75 - stress;

	state = "sleeping";
	sprite_index = spr_player_sleeping;
	prev_time = time;

	alarm[0] = room_speed * (stress_difference / 2);

} else if (distance_to_object(obj_bed) < 30) && (stress > 50) {
	instance_create_layer(0, 0, "gui_layer", obj_sleep_warning);
}

if (distance_to_object(obj_furnishing_minigame) < 30 && state == "awake") {
	
	//reset movement
	current_pressed_key = 0;
	previous_pressed_key = 0;
	
	var closest_object = instance_nearest(x, y, obj_furnishing_minigame)
	if( closest_object.completed == false ){
		
		state = "relaxing";
		
		//set up skill check
		var skill_check_difficulty = closest_object.difficulty;
	
		InitiateSkillCheck(skill_check_difficulty);
		
		closest_object.completed = true;
		
		//set state audio
		audio_pause_sound(snd_theme);
		audio_play_sound(snd_relaxing, 1, 0);
	} else {
		instance_create_layer(0, 0, "gui_layer", obj_warning_completed);	
	}
}
