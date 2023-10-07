/// @description Insert description here
// You can write your code in this editor


var interactKey = keyboard_check(ord("X"))

if (interactKey) and (distance_to_object(Player) < range) {
	global.trackingPlayer = false
} else {
	global.trackingPlayer = true
}

if distance_to_object(Player) < range {
	if image_index < 8 {
		image_index ++
	}
} else {
	if image_index > 0 {
		image_index --
	}
}

