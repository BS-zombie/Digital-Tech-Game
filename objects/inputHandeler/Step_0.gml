/// @description Insert description here
// You can write your code in this editor

if global.contols = "arrows" {
	global.inputLeftKey = vk_left
	global.inputRightKey = vk_right
	global.inputUpKey = vk_up
	global.inputDownKey = vk_down
	global.inputJumpKey = vk_space
	global.inputInteractKey = ord("X")
	global.inputClimbKey = ord("C")
	global.inputEscapeKey = vk_escape
	global.inputEnterKey = vk_enter
}

if global.contols = "wasd" {
	global.inputLeftKey = ord("A")
	global.inputRightKey = ord("D")
	global.inputUpKey = ord("W")
	global.inputDownKey = ord("S")
	global.inputJumpKey = vk_space
	global.inputInteractKey = ord("X")
	global.inputClimbKey = ord("C")
	global.inputEscapeKey = vk_escape
	global.inputEnterKey = vk_enter
}