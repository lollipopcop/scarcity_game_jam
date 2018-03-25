/// @description Insert description here
// You can write your code in this editor

draw_text(10, 20, "Stress: " + string(floor(stress)));

if( (time mod 60) > 10 ){
	draw_text(10, 50, "Time: " + string((time div 60) mod 24) + ":" + string(floor(time mod 60)));
} else {
	draw_text(10, 50, "Time: " + string((time div 60) mod 24) + ":0" + string(floor(time mod 60)));
}

if( (sleep_total mod 60) > 10 ){
	draw_text(10, 80, "Sleep Total: " + string(sleep_total div 60) + ":" + string(floor(sleep_total mod 60)));
} else {
	draw_text(10, 80, "Sleep Total: " + string(sleep_total div 60) + ":0" + string(floor(sleep_total mod 60)));
}

