

// next room why player touches portal
if (distance_to_object(Player) = 0) and (global.buttonPressed = true) {
	if global.buttonPressed = true {
		room_goto_next()
		//room_fade(c_black,);
	}
}

if global.buttonPressed = true {
	if image_index < 14 {
	image_speed = 1
	} else {
		image_speed = 0
	}
} else {
	image_index = 0
	image_speed = 0
}

