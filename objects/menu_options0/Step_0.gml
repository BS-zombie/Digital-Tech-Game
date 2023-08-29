/// @description Insert description here
// You can write your code in this editor



/// @description Insert description here
// You can write your code in this editor

var upKey = keyboard_check_released(vk_up)
var downKey = keyboard_check_released(vk_down)
var enterKey = keyboard_check_released(vk_enter)
var escapeKey = keyboard_check_released(vk_escape)

if upKey and takingInputs{
	image_index --
}
if downKey and takingInputs {
	image_index ++
	
}
if enterKey and takingInputs {
	if image_index = 0 {
		room_goto(2)
	}
	if image_index = 1 {
		takingInputs = false
		image_blend = c_grey
	}
	if image_index = 2 {
		game_end()
	}
}








