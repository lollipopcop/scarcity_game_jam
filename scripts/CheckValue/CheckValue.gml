/// CheckValue
// Check the value of the current test block and returns it

if(place_meeting(x,y,obj_test_block_1))
{
	if(obj_test_block_1.sprite_index == spr_button_1)
	{
		return 1;	
	}

	if(obj_test_block_1.sprite_index == spr_button_2)
	{
		return 2;	
	}
	
	if(obj_test_block_1.sprite_index == spr_button_3)
	{
		return 3;	
	}
	
	if(obj_test_block_1.sprite_index == spr_button_4)
	{
		return 4;	
	}
}

if(place_meeting(x,y,obj_test_block_2))
{
	if(obj_test_block_2.sprite_index == spr_button_1)
	{
		return 1;	
	}

	if(obj_test_block_2.sprite_index == spr_button_2)
	{
		return 2;	
	}
	
	if(obj_test_block_2.sprite_index == spr_button_3)
	{
		return 3;	
	}
	
	if(obj_test_block_2.sprite_index == spr_button_4)
	{
		return 4;	
	}
}

if(place_meeting(x,y,obj_test_block_3))
{
	if(obj_test_block_3.sprite_index == spr_button_1)
	{
		return 1;	
	}

	if(obj_test_block_3.sprite_index == spr_button_2)
	{
		return 2;	
	}
	
	if(obj_test_block_3.sprite_index == spr_button_3)
	{
		return 3;	
	}
	
	if(obj_test_block_3.sprite_index == spr_button_4)
	{
		return 4;	
	}
}
else
{
	return 0;	
}
