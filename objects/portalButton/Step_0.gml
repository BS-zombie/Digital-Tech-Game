/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(Player) = 0) {
	global.buttonPressed = true
}

if global.buttonPressed = true {
	if image_index < 7 {
	image_speed = 1
	} else {
		image_speed = 0
	}
} else {
	image_index = 0
	image_speed = 0
}