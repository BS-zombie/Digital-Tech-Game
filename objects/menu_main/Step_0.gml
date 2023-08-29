//game menu


//inputs
var upKey = keyboard_check_pressed(vk_up)
var downKey = keyboard_check_pressed(vk_down)
var enterKey = keyboard_check_pressed(vk_enter)
var escKey = keyboard_check_pressed(vk_escape)



// sprite definitions
var menuStartOnline = 0
var menuStartOffline = 1
var menuOptions = 2
var menuCredits = 3
var menuExit = 4

var menuOptionsVolume = 5
var menuOptionsControls = 6
var menuOptionsFullscreen = 7

var menuOptionsControlsLeft = 8
var menuOptionsControlsRight = 9
var menuOptionsControlsUp = 10
var menuOptionsControlsDown = 11
var menuOptionsControlsJump = 12
var menuOptionsControlsInteract = 13
var menuOptionsControlsClimb = 14
var menuOptionsControlsEscape = 15

//image_index = 1

// menu root
if takingInputs and (image_index >= currentMenuLowerSprite and image_index <= currentMenuUpperSprite) {
	optionsMenuLevel = 0
	if upKey and takingInputs and (image_index > currentMenuLowerSprite) {
		image_index --
		show_debug_message("index changed")
		show_debug_message("takinginputs: ", takingInputs)
		show_debug_message("upkey: ", upKey)
		show_debug_message("currntsprtlowerthingi: ", currentMenuLowerSprite)
		show_debug_message(image_index)
	}
	if downKey and takingInputs and (image_index < currentMenuUpperSprite) {
	image_index ++
	}
	if (image_index == menuStartOffline) and enterKey {
		room_goto(2)
	}
	if (image_index == menuStartOnline) and enterKey {
		room_goto(1)
	}
	if (image_index == menuOptions) and enterKey {
		image_index = menuOptionsVolume
		currentMenuLowerSprite = menuOptionsVolume
		currentMenuUpperSprite = menuOptionsFullscreen
	}
	if (image_index = menuCredits) and enterKey {
		room_goto(11)
	}
	if (image_index == menuExit) and enterKey {
		game_end()
	}
}

//submenu options
if takingInputs and (image_index >= currentMenuLowerSprite and image_index <= currentMenuUpperSprite) {
	optionsMenuLevel = 1
	if upKey and takingInputs and (image_index < currentMenuLowerSprite) {
		image_index --
	}
	if downKey and takingInputs and (image_index > currentMenuUpperSprite) {
	image_index ++
	}
	if (image_index == menuOptionsVolume) and enterKey {
		if volume > 11 {
			volume ++
		} else {
			volume = 0
		}
	}
	if (image_index == menuOptionsControls) and enterKey {
		image_index = menuOptionsControlsLeft
		currentMenuLowerSprite = menuOptionsControlsLeft
		currentMenuUpperSprite = menuOptionsControlsEscape
	}
	if (image_index == menuOptionsFullscreen) and enterKey {
		fullscreen = !fullscreen
	}
	if escKey and takingInputs {
		image_index = menuStartOffline
		currentMenuLowerSprite = menuStartOffline
		currentMenuUpperSprite = menuExit
	}
}

// submenu sbmenu - controls
if takingInputs and (image_index >= currentMenuLowerSprite and image_index <= currentMenuUpperSprite) {
	optionsMenuLevel = 2
	if upKey and takingInputs and (image_index < currentMenuLowerSprite) {
		image_index --
	}
	if downKey and takingInputs and (image_index > currentMenuUpperSprite) {
	image_index ++
	}
	//if(enterKey) {
	//	switch(image_index) {
	//		case menuOptionsControlsLeft
	//			controlSetter("leftKey", keyboard_lastkey)
			
	//	}
	//}
	
	if (image_index == menuOptionsControlsLeft) and enterKey {
		controlSetter("leftKey", keyboard_lastkey)
	}
	if (image_index == menuOptionsControlsRight) and enterKey {
		controlSetter("rightKey", keyboard_lastkey)
	}
	if (image_index == menuOptionsControlsUp) and enterKey {
		controlSetter("upKey", keyboard_lastkey)
	}
	if (image_index == menuOptionsControlsDown) and enterKey {
		controlSetter("downKey", keyboard_lastkey)
	}
	if (image_index == menuOptionsControlsJump) and enterKey {
		controlSetter("jumpKey", keyboard_lastkey)
	}
	if (image_index == menuOptionsControlsInteract) and enterKey {
		controlSetter("interactKey", keyboard_lastkey)
	}
	if (image_index == menuOptionsControlsClimb) and enterKey {
		controlSetter("climbKey", keyboard_lastkey)
	}
	if (image_index == menuOptionsControlsEscape) and enterKey {
		controlSetter("escapeKey", keyboard_lastkey)
	}
	if escKey and takingInputs {
		image_index = menuOptions
		currentMenuLowerSprite = menuOptions
		currentMenuUpperSprite = menuExit
	}
}





