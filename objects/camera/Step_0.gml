/// @description Insert description here
// You can write your code in this editor

if global.trackingPlayer = true {
	x += ((Player.x - x) * movePercentage)
	y += ((Player.y - y) * movePercentage)
} else {
	x += ((Binoculars.x - x) * movePercentage)
	y += ((Binoculars.y - y) * movePercentage)
}
