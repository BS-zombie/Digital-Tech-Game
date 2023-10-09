

var enterKey = keyboard_check_pressed(global.inputEnterKey)
var spaceKey = keyboard_check_pressed(global.inputJumpKey)

if enterKey or spaceKey {
	room_goto(0)
}