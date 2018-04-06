///scr_check_highscore(score_to_check)
//returns true if the score to check is higher than the lowest high score value
//otherwise returns false


var score_to_check = floor(argument0);
var lowest_score = 2000;

for ( i = 0; i < 10; i++) {
		if (score_to_check > highscore_value(i)){
			return true;
		} else {
			lowest_score = highscore_value(i);	
		}
}

return false;

