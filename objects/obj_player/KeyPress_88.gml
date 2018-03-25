/// @description Insert description here
// You can write your code in this editor

//if you are adequaetly destressed you can rest
if((distance_to_object(obj_bed) < 30) && (stress <= 50)){
	var stress_difference = 75 - stress;
	
	state = "sleeping";
	prev_time = time;

	audio_play_sound(snd_sleeping, 1, 1);

	alarm[0] = room_speed * (stress_difference / 2);

} else if (distance_to_object(obj_bed) < 30) && (stress > 50) {
	instance_create_layer(0, 0, "gui_layer", obj_sleep_warning);
}

if (distance_to_object(obj_dresser) < 30) {
	InitiateSkillCheck(3);
}