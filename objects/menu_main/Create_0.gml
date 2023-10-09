/// @description Insert description here
// You can write your code in this editor

image_index = 0


currentMenuLowerSprite = 0
currentMenuUpperSprite = 4
takingInputs = true
volume = 0
fullscreen = false
optionsMenuLevel = 0

function controlSetter(controlName, NewKey) {
	if controlName == "inputLeftKey" {
		global.inputLeftKey = NewKey
	}
	if controlName == "inputRightKey" {
		global.inputRightKey = NewKey
	}
	if controlName == "inputUpKey" {
		global.inputUpKey = NewKey
	}
	if controlName == "inputDownKey" {
		global.inputDownKey = NewKey
	}
	if controlName == "inputJumpKey" {
		global.inputJumpKey = NewKey
	}
	if controlName == "inputInteractKey" {
		global.inputInteractKey = NewKey
	}
	if controlName == "inputClimbKey" {
		global.inputClimbKey = NewKey
	}
	if controlName == "inputEscapeKey" {
		global.inputEscapeKey = NewKey
	}
}
