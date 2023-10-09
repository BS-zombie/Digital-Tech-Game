//game menu


//inputs
var upKey = keyboard_check_pressed(global.inputUpKey)
var downKey = keyboard_check_pressed(global.inputDownKey)
var enterKey = keyboard_check_pressed(global.inputEnterKey)
var escKey = keyboard_check_pressed(global.inputEscapeKey)



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
if (image_index >= currentMenuLowerSprite and image_index <= currentMenuUpperSprite) {
	optionsMenuLevel = 0
	if (image_index == menuStartOffline) and enterKey {
		room_goto(2)
	}
	if (image_index == menuStartOnline) and enterKey {
		room_goto(12)
	}
	if (image_index == menuOptions) and enterKey {
		image_index = menuOptionsVolume
		currentMenuLowerSprite = menuOptionsVolume
		currentMenuUpperSprite = menuOptionsFullscreen
	}
	if (image_index = menuCredits) and enterKey {
		room_goto(12)
	}
	if (image_index == menuExit) and enterKey {
		game_end()
	}
}

//submenu options
if (image_index >= currentMenuLowerSprite and image_index <= currentMenuUpperSprite) {
	optionsMenuLevel = 1

	if (image_index == menuOptionsVolume) and enterKey {
		if volume > 11 {
			volume ++
		} else {
			volume = 0
		}
	}
	if (image_index == menuOptionsControls) and enterKey {
		if global.contols = "wasd" {
			global.contols = "arrows"
		} else if global.contols = "arrows" {
			global.contols = "wasd"
		}
	}
	if (image_index == menuOptionsFullscreen) and enterKey {
		if window_get_fullscreen() = true {
			window_set_fullscreen(false)
		} else {
			if window_get_fullscreen() = false {
				window_set_fullscreen(true)
			}
	}
	}
	if escKey and takingInputs {
		image_index = menuOptions
		currentMenuLowerSprite = menuStartOnline
		currentMenuUpperSprite = menuExit
	}
}

// submenu sbmenu - controls
if (image_index >= currentMenuLowerSprite and image_index <= currentMenuUpperSprite) {
	optionsMenuLevel = 2

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
	//if escKey and takingInputs {
	//	image_index = menuOptions
	//	currentMenuLowerSprite = menuOptions
	//	currentMenuUpperSprite = menuExit
	//}
}

if upKey and (image_index > currentMenuLowerSprite) {
	image_index --
	show_debug_message("uppper:")
	show_debug_message(currentMenuUpperSprite)
	show_debug_message("lower:")
	show_debug_message(currentMenuLowerSprite)
	show_debug_message(image_index)
}
if downKey and takingInputs and (image_index < currentMenuUpperSprite) {
	image_index ++
	show_debug_message("uppper:")
	show_debug_message(currentMenuUpperSprite)
	show_debug_message("lower:")
	show_debug_message(currentMenuLowerSprite)
	show_debug_message(image_index)
}



