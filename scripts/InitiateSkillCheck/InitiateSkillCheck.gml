/// InitiateSkillCheck(difficulty)
/// @description InitiateSkillCheck(difficulty)
/// @param difficulty

// Set arugment0 to "difficulty" variable, difficulty change the speed
// of the skill check, and should be between 3-6 (Easy -> Very Hard)
difficulty = argument0;

// Instantiate the obj_skill_check_bar below the player, closest to
// the screen as possible.
instance_create_depth(id.x - 102, id.y + 60, -1000, obj_skill_check_bar);
// Set the test_speed based on the difficulty on the skill check test
obj_skill_check_zone.test_difficulty = difficulty;