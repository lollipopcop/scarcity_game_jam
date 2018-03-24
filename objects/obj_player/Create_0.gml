/// @description

state = "agency";
stress = 50;

//player speed
p_speed = room_speed / 30;

current_pressed_key = 0;
previous_pressed_key = 0;
released_key = 0;

// Action Key
current_action = 0;

//tilemap used for collision
tilemap = layer_tilemap_get_id("collision");
