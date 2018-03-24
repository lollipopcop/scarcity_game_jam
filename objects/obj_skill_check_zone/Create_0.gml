// Set the beginning and ending positions for the skill check zone
// Ie. Where exactly does it bounce back and forth.

// Test starts at 0...
test_beginning = 0;
// Bounces when the right hand side of the test zone would hit the boundary
test_end = sprite_get_width(spr_skill_check_bar) - 44;
// current position keeps track of where the test zone is at that moment
current_position = 0;

// Set difficulty, changes the SPEED the test is at.
test_difficulty = EASY;

// Set movement speed of test zone, changes depending on the difficulty
test_speed = test_difficulty;

current_keystroke = 0;
