//check to see if obj_player is near
/// @description Insert description here

if (key_graphic_active == false && (distance_to_object(obj_player) < 40)){
	key_graphic_active = true;
	key_instance = instance_create_layer(x, y - 35, "gui_layer", obj_key_press_graphic);
	key_instance.creating_instance = id;
}
