if global.paused {
	image_speed = 0
} else {



if global.trackingPlayer = true {
	var jumpKey = keyboard_check_pressed(global.inputJumpKey)
	var leftKey = keyboard_check(global.inputLeftKey)
	var rightKey = keyboard_check(global.inputRightKey)
	// var dashKey = keyboard_check(ord("Z"))
	var dashKey = keyboard_check(global.inputClimbKey)
} else {
	var jumpKey = false
	var leftKey = false
	var rightKey = false
	var dashKey = false
}

// walking
var move = rightKey - leftKey;
hsp = move * walksp;


//"gravity"
var touchingWall = place_meeting(x - 1, y, ground) - place_meeting(x + 1, y, ground)
var touchingGround = place_meeting(x, y + 1, ground)
if (touchingWall != 0) {
	vsp = min(vsp + grv, 0.6)
} else {
	vsp = vsp + grv;
}


// jumping
if place_meeting(x, y + 5 + jumpLeanence, ground)  {
	jumpTiming = 5
} else {
	jumpTiming = jumpTiming - 1
}
if ((place_meeting(x, y + jumpLeanence, ground)) or jumpTiming > 0) and (jumpKey) {
	vsp = -4
};

if touchingWall != 0 {
	hJumpTiming = 5
} else {
	hJumpTiming = hJumpTiming - 1
}
if ((touchingWall != 0) or (hJumpTiming > 0)) and jumpKey {
	vsp = -4
	hsp = touchingWall * 4
}


// collision
// x collision
if (place_meeting(x + hsp, y, ground)) {
	while (!place_meeting(x + sign(hsp), y, ground)) {
		x = x + sign(hsp)
	}
	hsp = 0;
};

// y collision
if (place_meeting(x, y + vsp, ground)) {
	while (!place_meeting(x, y + sign(vsp), ground)) {
		y = y + sign(vsp)
	}
	vsp = 0;
	jumping = false
};


x = x + hsp
y = y + vsp

// walking animation
image_speed = 0;

if touchingWall = 0 or touchingGround {
	if image_index < 4 and (leftKey or rightKey) {
		image_speed = 1
	} else {
		image_index = 0
	}
}
if ((touchingWall != (0)) and (!touchingGround)) {
	if touchingWall = 1 {
		image_index = 5
	}
	if touchingWall = -1 {
		image_index = 5
	}
	audio_create_stream( )
}




// player direction
if leftKey {
	image_xscale = -1
}
if (rightKey) {
	image_xscale = 1
}

// deds
if (x < 0) or (x > room_width) or (y < 0) or (y > room_height) {
	outOfBounds = true
}
if distance_to_object(spikes) = 0 {
	touchingSpikes = true
}

if outOfBounds or touchingSpikes {
	if doDeathAnimation = true {
		instance_create_layer(x, y, "Instances_1", deadPlayer)
	}
	doDeathAnimation = false
	
	if instance_exists(deadPlayer) {
		if deadPlayer.image_index = 13 {
		respawn()
		} else image_index = 4
	} else {
		respawn()
	}
	
	
	
	
}



}