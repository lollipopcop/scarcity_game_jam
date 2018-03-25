/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);

//draw the ui background
draw_sprite(spr_ui_background, 0, 3, 20);

//draw the stress meter
draw_text(40, 20, "Stress");
draw_sprite(spr_stress_border, 0, 10, 43);
draw_sprite_ext(spr_stress_center, 0, 10, 43, obj_player.stress/100, 1, 0, c_white, 1); 

//draw the real world time clock
var rot_hour = - (((time mod 720) * 0.5) - 90);
var rot_minute = - (((floor(time) mod 60) * 6) - 90);
var clock_x = 70;
var clock_y = 130;

draw_sprite(spr_clock_face, 0, clock_x, clock_y);
draw_sprite_ext(spr_clock_hour, 0, clock_x, clock_y, 1, 1, rot_hour, c_white, 100);
draw_sprite_ext(spr_clock_minute, 0, clock_x, clock_y, 1, 1, rot_minute, c_white, 100);
draw_sprite(spr_clock_nub, 0, clock_x, clock_y)

//draw the alarm clock that shows how much time the player has slept
draw_text(27, 200, "Time Slept");

var alarm_x = 26;
var alarm_y = 255;

draw_sprite(spr_clock_alarm_base, 0, alarm_x, alarm_y);

var hour_ten_index = floor( ( sleep_total / 60 ) / 10);
var hour_single_index = floor( (sleep_total / 60) mod 10);
var minute_ten_index = floor( (sleep_total mod 60) / 10);
var minute_single_index = floor( (sleep_total mod 60) mod 10);

draw_sprite(spr_clock_alarm_numbers, hour_ten_index, alarm_x, alarm_y);
draw_sprite(spr_clock_alarm_numbers, hour_single_index, alarm_x + 29, alarm_y);
draw_sprite(spr_clock_alarm_numbers, minute_ten_index, alarm_x + 61, alarm_y);
draw_sprite(spr_clock_alarm_numbers, minute_single_index, alarm_x + 89, alarm_y);
