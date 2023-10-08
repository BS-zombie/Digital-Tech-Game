/// @description Insert description here
// You can write your code in this editor



// toggling pausing logic
var justchanged = false
if keyboard_check_pressed(vk_escape) {
	justchanged = true
	global.paused = !global.paused
}
if global.paused {
	global.cameraMode = "pause"
} else if justchanged {global.cameraMode = "player"}

if global.paused {
	
}



