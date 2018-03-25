/// @description Insert description here
// You can write your code in this editor

if(state == "sleeping"){
	audio_stop_sound(snd_sleeping);
	audio_resume_sound(snd_theme);
	state = "awake";
	exit;
}

//if you are adequaetly destressed you can rest
if((distance_to_object(obj_bed) < 30) && (stress <= 50)){
	var stress_difference = 75 - stress;

	audio_pause_sound(snd_theme);
	audio_play_sound(snd_sleeping, 1, 1);
	
	state = "sleeping";
	prev_time = time;

	alarm[0] = room_speed * (stress_difference / 2);

} else if (distance_to_object(obj_bed) < 30) && (stress > 50) {
	instance_create_layer(0, 0, "gui_layer", obj_sleep_warning);
}

if (distance_to_object(obj_dresser) < 30) {
	InitiateSkillCheck(2);
	audio_pause_sound(snd_theme);
	audio_play_sound(snd_relaxing, 1, 0);
}