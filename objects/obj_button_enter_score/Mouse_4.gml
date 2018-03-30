/// @description Insert description here
// You can write your code in this editor

highscore_add(obj_textbox.input_text, global.score_total);

var next_room = instance_create_layer(0, 0, "gui_layer", obj_fade);
next_room.next_room = rm_lose;
