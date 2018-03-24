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

if (keyboard_check_pressed(ord(1))) 
{
	current_keystroke = 1;	
	if (place_meeting(x, y, obj_button_1))
	{
		audio_play_sound(snd_yes, 1, false);
	} else {
		audio_play_sound(snd_no, 1, false);
	}
}

if (keyboard_check_pressed(ord(2)))
{
	current_keystroke = 2;	
	if (place_meeting(x, y, obj_button_2))
	{
		audio_play_sound(snd_yes, 1, false);
	} else {
		audio_play_sound(snd_no, 1, false);
	}
}

if (keyboard_check_pressed(ord(3))) 
{
	current_keystroke = 3;	
	if (place_meeting(x, y, obj_button_3))
	{
		audio_play_sound(snd_yes, 1, false);
	} else {
		audio_play_sound(snd_no, 1, false);
	}
}

if (keyboard_check_pressed(ord(4))) 
{
	current_keystroke = 4;	
	if (place_meeting(x, y, obj_button_4))
	{
		audio_play_sound(snd_yes, 1, false);
	} else {
		audio_play_sound(snd_no, 1, false);
	}
}

