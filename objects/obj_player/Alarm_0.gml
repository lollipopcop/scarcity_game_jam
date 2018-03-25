/// @description Insert description here
// You can write your code in this editor

//once alarm is over, set the character to no longer sleep
state = "awake";
audio_stop_sound(snd_sleeping);
audio_resume_sound(snd_theme);
