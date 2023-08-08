jumpKey = keyboard_check_pressed(vk_space)
leftKey = keyboard_check(vk_left)
rightKey = keyboard_check(vk_right)
dashKey = keyboard_check(ord("Z"))
var animationstep = 1

if distance_to_object(ground) <= 1 {
	onGround = true
} else {
	onGround = false
}

image_speed = 0;
// walking animation
if image_index < 4 and (leftKey or rightKey) {
	image_speed = 1
} else {
	image_index = 0
}

if leftKey {
	image_xscale = -1
//	x += 11
}


if rightKey {
	image_xscale = 1
}


//momvment
var move = rightKey - leftKey;
hsp = move * walksp;
vsp = vsp + grv;


//jumping
if (place_meeting(x, y + jumpLeanence, ground)) && (jumpKey) {
	vsp = -4
};
if (place_meeting(x + jumpLeanence, y, ground)) && (jumpKey) {
	vsp = -4
	hsp -= 4
};
if (place_meeting(x - jumpLeanence, y, ground)) && (jumpKey) {
	vsp = -4
	hsp += 4
};

// x collision
if (place_meeting(x + hsp, y, ground)) {
	while (!place_meeting(x + sign(hsp), y, ground)) {
		x = x + sign(hsp)
	}
	hsp = 0;
};
x = x + hsp

// y collision
if (place_meeting(x, y + vsp, ground)) {
	while (!place_meeting(x, y + sign(vsp), ground)) {
		y = y + sign(vsp)
	}
	vsp = 0;
	jumping = false
};
y = y + vsp

// dashing
if dashKey {
	hsp += 1
	vsp += 1
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
	if deadPlayer.image_index = 13 {
		respawn()
	}
	else image_index = 4
}
