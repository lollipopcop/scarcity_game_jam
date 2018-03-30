///scr_check_highscore(score_to_check)
//returns true if the score to check is higher than the lowest high score value
//otherwise returns false


var score_to_check = argument0;
var lowest_score = 450;

for ( i = 0; i < 10; i++) {
		if (lowest_score > highscore_value(i)){
			lowest_score = highscore_value(i);	
		}
}

if (score_to_check > lowest_score){
	return true;	
} else {
	return false;	
}
