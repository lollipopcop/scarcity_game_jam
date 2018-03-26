/// @description Insert description here
// You can write your code in this editor

if ( distance_to_object(obj_player) > 70 ){
	creating_instance.key_graphic_active = false;
	instance_destroy();	
}

if( obj_player.state == "sleeping" || obj_player.state == "relaxing") {
	creating_instance.key_graphic_active = false;
	instance_destroy();	
}

