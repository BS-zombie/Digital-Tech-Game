/// @description Insert description here
// You can write your code in this editor


if global.trackingPlayer = true {
	x += ((Player.x - x) * movePercentage)
	y += ((Player.y - y) * movePercentage)
} else {
	if abs(Binoculars.x - x) > 15  {
		x += ((Binoculars.x - x) * movePercentage)
		y += ((Binoculars.y - y) * movePercentage)
	} else {
		
		x += ((Binoculars.x - x) * movePercentage)
		
		var upKey = keyboard_check(vk_up)
		var downKey = keyboard_check(vk_down)
		if upKey and (y > (64)) {
			y = y - 2
		}
		if downKey  and (y < room_height - 64) {
			y = y + 2
		}
	}
}



