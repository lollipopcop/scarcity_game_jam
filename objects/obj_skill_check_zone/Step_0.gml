// Test bar movement

// CHECK: If current_position of the test zone "hits" <= the test_beginning
// movement speed should swap to the RIGHT at the speed defined by 
// the test difficulty
if (current_position <= test_beginning) 
{
	test_speed = test_difficulty;	
}

// CHECK: If the current_position of the test zone "hits >= the test_end
// movement speed should swap to the LEFT at the speed defined by
// the test difficulty
if (current_position >= test_end)
{
	test_speed = -test_difficulty;	
}

// EVERY STEP: the test zone moves test_speed distance
x += test_speed;
// EVERY STEP: the current_position follows where the
// test zone currently is.
current_position += test_speed;

// Logic for Skill Check Test against test blocks
// Check if the skill check zone overlaps any test blocks
if(place_meeting(x,y,obj_test_block_1) || place_meeting(x,y,obj_test_block_2) || place_meeting(x,y,obj_test_block_3))
{
	// If so, set on_tile to 1, and current_tile:
	current_tile = CheckTile();
	current_value = CheckValue();
	
	// Check for keypress
	if(keyboard_check_pressed(ord(1)) && (has_been_pressed == 0))
	{
		current_keystroke = 1;	
		has_been_pressed = 1;
		was_pressed = 1;
		
		if(current_keystroke == current_value)
		{
			audio_play_sound(snd_low_G, 1, 0);
			current_tile.sprite_index = spr_flipping_tile;
			last_tile = current_tile;
			// Alarm[0] resets the tile when activated
			alarm[0] = 5;
			obj_player.stress -= 2;
		}
		else
		{
			audio_play_sound(snd_noise, 1, 0);	
			current_tile.sprite_index = spr_flipping_tile;
			last_tile = current_tile;
			// Alarm[0] resets the tile when activated
			alarm[0] = 5;
			obj_player.stress += 1;
		}
	}
	if(keyboard_check_pressed(ord(2)) && (has_been_pressed == 0))
	{
		current_keystroke = 2;	
		has_been_pressed = 1;
		was_pressed = 1;
		
		if(current_keystroke == current_value)
		{
			audio_play_sound(snd_B, 1, 0);
			current_tile.sprite_index = spr_flipping_tile;
			last_tile = current_tile;
			// Alarm[0] resets the tile when activated
			alarm[0] = 5;
			obj_player.stress -= 2;
		}
		else
		{
			audio_play_sound(snd_noise, 1, 0);	
			current_tile.sprite_index = spr_flipping_tile;
			last_tile = current_tile;
			// Alarm[0] resets the tile when activated
			alarm[0] = 5;
			obj_player.stress += 1;
		}
	}

	if(keyboard_check_pressed(ord(3)) && (has_been_pressed == 0))
	{
		current_keystroke = 3;	
		has_been_pressed = 1;
		was_pressed = 1;
		
		if(current_keystroke == current_value)
		{
			audio_play_sound(snd_D, 1, 0);
			current_tile.sprite_index = spr_flipping_tile;
			last_tile = current_tile;
			// Alarm[0] resets the tile when activated
			alarm[0] = 5;
			obj_player.stress -= 2;
		}
		else
		{
			audio_play_sound(snd_noise, 1, 0);	
			current_tile.sprite_index = spr_flipping_tile;
			last_tile = current_tile;
			// Alarm[0] resets the tile when activated
			alarm[0] = 5;
			obj_player.stress += 1;
		}
	}
	if(keyboard_check_pressed(ord(4)) && (has_been_pressed == 0))
	{
		current_keystroke = 4;	
		has_been_pressed = 1;
		was_pressed = 1;
		
		if(current_keystroke == current_value)
		{
			audio_play_sound(snd_high_G, 1, 0);
			current_tile.sprite_index = spr_flipping_tile;
			last_tile = current_tile;
			// Alarm[0] resets the tile when activated
			alarm[0] = 5;
			obj_player.stress -= 2;
		}
		else
		{
			audio_play_sound(snd_noise, 1, 0);
			current_tile.sprite_index = spr_flipping_tile;
			last_tile = current_tile;
			// Alarm[0] resets the tile when activated
			alarm[0] = 5;
			obj_player.stress += 1;
		}
	}
}
else
{
	has_been_pressed = 0;	
}
