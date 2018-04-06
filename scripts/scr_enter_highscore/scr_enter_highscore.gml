var floored_score = floor(global.score_total);

if (!entered_score){
	highscore_add(obj_textbox.input_text, floored_score);
	entered_score = true;
}
