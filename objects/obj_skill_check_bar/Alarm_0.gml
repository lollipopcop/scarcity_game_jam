// When Alarm goes off, destroy mini-game instance
obj_player.p_speed = room_speed / 30;

instance_destroy();
instance_destroy(obj_skill_check_zone);
instance_destroy(obj_test_block_1);
instance_destroy(obj_test_block_2);
instance_destroy(obj_test_block_3);

audio_resume_sound(snd_theme);

//if the character is doing an activity switch back
var activity_object = instance_nearest(obj_player.x, obj_player.y, obj_furnishing_minigame);
if (activity_object.is_second_frame == true){
	activity_object.image_index = 0;	
}

obj_player.state = "awake"
