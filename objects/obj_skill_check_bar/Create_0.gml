// Add skill_check_zone and random tile placement on creation:
// Skil Check Zone
instance_create_depth(id.x + 2, id.y + 2, -1002, obj_skill_check_zone);
// Place Tiles
instance_create_depth(id.x + 6, id.y + 6, -1001, obj_test_block_1);
instance_create_depth(id.x + 86, id.y + 6, -1001, obj_test_block_2);
instance_create_depth(id.x + 166, id.y + 6, -1001, obj_test_block_3);
// Assign random sprites to tiles
obj_test_block_1.sprite_index = choose(spr_button_1, spr_button_2, spr_button_3, spr_button_4);
obj_test_block_2.sprite_index = choose(spr_button_1, spr_button_2, spr_button_3, spr_button_4);
obj_test_block_3.sprite_index = choose(spr_button_1, spr_button_2, spr_button_3, spr_button_4);
// Assign number values to match sprite "numbers"
AssignValue(obj_test_block_1);
AssignValue(obj_test_block_2);
AssignValue(obj_test_block_3);


