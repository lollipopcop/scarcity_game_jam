// When Alarm goes off, destroy mini-game instance
obj_player.p_speed = room_speed / 30;

instance_destroy();
instance_destroy(obj_skill_check_zone);
instance_destroy(obj_test_block_1);
instance_destroy(obj_test_block_2);
instance_destroy(obj_test_block_3);

audio_resume_sound(snd_theme);
