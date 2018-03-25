// Set the beginning and ending positions for the skill check zone
// Ie. Where exactly does it bounce back and forth.

// Set initial test_difficulty of 0, will be changed
// in the initiateSkillCheck script
test_difficulty = 0;
// Test starts at 0...
test_beginning = 0;
// Bounces when the right hand side of the test zone would hit the boundary
test_end = sprite_get_width(spr_skill_check_bar) - 44;
// current position keeps track of where the test zone is at that moment
current_position = 0;

// Set movement speed of test zone, changes depending on the difficulty
test_speed = test_difficulty;

// Initialize all variables related to the skill check test:
has_been_pressed = 0;
current_keystroke = 0;
current_tile = 0;
current_value = 0;
