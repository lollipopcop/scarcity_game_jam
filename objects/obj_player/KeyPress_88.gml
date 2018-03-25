/// @description Insert description here
// You can write your code in this editor

//if you are adequaetly destressed you can rest
if((distance_to_object(obj_bed) < 30) && (stress <= 50)){
	var stress_difference = 75 - stress;
	time = time + (power((stress_difference / 4), 2)/2);
	stress = 75;
} else if (distance_to_object(obj_bed) < 30) && (stress > 50) {
	instance_create_layer(0, 0, "gui_layer", obj_sleep_warning);
}

if (distance_to_object(obj_dresser) < 30) {
	InitiateSkillCheck(3);
}