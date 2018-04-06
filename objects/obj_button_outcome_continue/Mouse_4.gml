/// @description Insert description here
// You can write your code in this editor


if (scr_check_highscore(global.score_total)){
	next_room = rm_high_score;
} else {
	next_room = rm_lose;	
}

event_inherited();