/// @description Insert description here
// You can write your code in this editor


var interactKey = keyboard_check(ord("X"))

if (interactKey) {
	global.trackingPlayer = false
	show_debug_message("a")
} else {
	global.trackingPlayer = true
}



