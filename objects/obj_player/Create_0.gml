/// @description

//test code for multiple high scores being entered at once
if (0) {
	highscore_clear();	
}

image_speed = 2;

state = "awake";
stress = 30;
time = 1260;
sleep_total = 0;
prev_time = 0;
most_recently_pressed = 0;
distance_check = 35;

//player speed
p_speed = room_speed / 30;

current_pressed_key = 0;
previous_pressed_key = 0;
released_key = 0;

// Action Key
current_action = 0;

//tilemap used for collision
tilemap = layer_tilemap_get_id("collision");

global.finished_night = false;

audio_play_sound(snd_theme, 1, 1);