/// @description Insert description here
// You can write your code in this editor

//pausing
if global.paused {
	image_speed = 0
} else {



x += ((Player.x - x) * movePercentage)
	y += ((Player.y - y) * movePercentage)

// room 1 - basic movement, jumping, button, and portal mechanics
if room = level_1_1 {
	image_xscale = 1
	if Player.x >= 63 && Player.x <= 85 {
		image_index = 2
	} else if Player.x >= 86 && Player.x <= 97 {
		image_index = 3
	} else if Player.x >= 194 && Player.x <= 248 {
		image_index = 4
	} else if Player.x >= 257 && Player.x <= 287 {
		image_index = 5
	} else {
		image_index = 1
	}
}

if room = level_1_2 {
	image_xscale = -1
	if Player.x >= 312 && Player.x <= 368 {
		image_index = 6
	} else if y < 147 {
		image_index = 1
	} else {
		image_index = 0
	}
}


if room = level_1_6 {
	image_xscale = 1
	if Player.x > 305 {
		image_index = 2
	} else {
		image_index = 1
	}
	
}



}