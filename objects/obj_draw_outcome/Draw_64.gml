/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_ui);
draw_set_halign(fa_left);

if(global.finished_night){
	draw_text(100, 200, "You made it through the night!");
}

if(!global.finished_night){
	draw_text(100,200, "You fell asleep and were late for your first day :(");	
}
