// Add skill_check_zone and random button placement on creation:
// Skil Check Zone
instance_create_depth(id.x + 2, id.y + 2, -2, obj_skill_check_zone)
// Random button placement
instance_create_depth(id.x + 6, id.y + 6, -1, choose(obj_button_1, obj_button_2, obj_button_3, obj_button_4))
instance_create_depth(id.x + 86, id.y + 6, -1, choose(obj_button_1, obj_button_2, obj_button_3, obj_button_4))
instance_create_depth(id.x + 166, id.y + 6, -1, choose(obj_button_1, obj_button_2, obj_button_3, obj_button_4))

// Set difficulty
#macro EASY 3
#macro MEDIUM 5
#macro HARD 7

