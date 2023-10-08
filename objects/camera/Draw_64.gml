
if global.cameraMode = "binoculars" {
	draw_sprite_ext(spr_border,1,0,0, 5.35, 5.35, 0, c_white, 1)
}

if global.cameraMode = "pause" {
	draw_sprite_ext(spr_pauseOverlay,1,0,0, 5.35, 5.35, 0, c_white, 0.5)
}

//draw_sprite_ext(spr_border, global.vignette, 0, 0, 5.35, 5.35, 0, c_white, 1)