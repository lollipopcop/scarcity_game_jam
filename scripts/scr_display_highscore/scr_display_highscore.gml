///scr_display_highscore(y)

var score_y = argument0;
var score_x = window_get_width() / 2 ;

var distance_x = 50;
var distance_y = 40;

//while there are entries in the list
var i = 1;

draw_set_font(font_ui);

while ( highscore_value(i) != 0 && i < 10){
	draw_set_halign(fa_right);
	draw_text(score_x - distance_x, score_y + (distance_y * i), highscore_name(i));
	draw_set_halign(fa_left);
	draw_text(score_x + distance_x, score_y  + (distance_y * i), string(highscore_value(i)));
	i++;
}
//print the name then the score (right to left)