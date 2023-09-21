// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function toggle_fullscreen() {
	if window_get_fullscreen() = true {
			window_set_fullscreen(false)
	} else {
		if window_get_fullscreen() = false {
			window_set_fullscreen(true)
		}
	}
}