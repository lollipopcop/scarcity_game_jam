/// AssignValue(test_block)
/// @description AssignValue(test_block)
/// @param test_block

// Assign argument0 to test_block (Should be the test_block object)
test_block = argument0;

// Check which sprite is attached to test_block, assign appropriate value to it:
if(object_get_sprite(test_block) == spr_button_1)
{
	test_block.current_value = 1;	
}

if(object_get_sprite(test_block) == spr_button_2)
{
	test_block.current_value = 2;	
}

if(object_get_sprite(test_block) == spr_button_3)
{
	test_block.current_value = 3;	
}

if(object_get_sprite(test_block) == spr_button_4)
{
	test_block.current_value = 4;	
}

if(object_get_sprite(test_block) == spr_flipping_tile)
{
	test_block.current_value = 0;	
}
