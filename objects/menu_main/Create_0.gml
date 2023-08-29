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
	if controlName == "leftKey" {
		global.leftKey = NewKey
	}
	if controlName == "rightKey" {
		global.rightKey = NewKey
	}
	if controlName == "upKey" {
		global.upKey = NewKey
	}
	if controlName == "downKey" {
		global.downKey = NewKey
	}
	if controlName == "jumpKey" {
		global.jumpKey = NewKey
	}
	if controlName == "interactKey" {
		global.interactKey = NewKey
	}
	if controlName == "climbKey" {
		global.climbKey = NewKey
	}
	if controlName == "escapeKey" {
		global.escapeKey = NewKey
	}
}
