/// @description Insert description here
// You can write your code in this editor


if global.cameraMode = "player" {
	x += ((Player.x - x) * movePercentage)
	y += ((Player.y - y) * movePercentage)
} else if global.cameraMode = "binoculars" {
	if abs(Binoculars.x - x) > 15  {
		x += ((Binoculars.x - x) * movePercentage)
		y += ((Binoculars.y - y) * movePercentage)
	} else {
		
		x += ((Binoculars.x - x) * movePercentage)
		
		var upKey = keyboard_check(global.inputUpKey)
		var downKey = keyboard_check(global.inputDownKey)
		if upKey and (y > (64)) {
			y = y - 2
		}
		if downKey  and (y < room_height - 64) {
			y = y + 2
		}
	}
} else if global.cameraMode = "pause" {
}



