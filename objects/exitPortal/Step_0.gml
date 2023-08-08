/// @description Insert description here
// You can write your code in this editor

// level completion checking
if (global.buttonPressed = true) {
	exitAvailable = true
} else {
	exitAvailable = false
}


// portal sprite change
if exitAvailable {
	image_index = 1
} else {
	image_index = 0
}


// next room why player touches portal
if (distance_to_object(Player) = 0) and exitAvailable {
	if global.buttonPressed = true {
		room_goto_next()
	}
}