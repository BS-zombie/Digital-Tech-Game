

var enterKey = keyboard_check_pressed(vk_enter)
var spaceKey = keyboard_check_pressed(vk_space)

if enterKey or spaceKey {
	room_goto(0)
}