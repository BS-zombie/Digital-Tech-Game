/// @description Insert description here
// You can write your code in this editor
if global.paused {
	image_speed = 0
} else {
	
	
	
	

var interactKey = keyboard_check(global.inputInteractKey)

if (interactKey) and (distance_to_object(Player) < range) {
	global.cameraMode = "binoculars"
} else {
	global.cameraMode = "player"
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




}