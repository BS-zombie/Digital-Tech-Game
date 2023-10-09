/// @description Insert description here
// You can write your code in this editor


var keyPressed = keyboard_check_pressed(global.inputJumpKey) or keyboard_check_pressed(global.inputInteractKey)

if keyPressed = true {
	room_goto(0)
}


