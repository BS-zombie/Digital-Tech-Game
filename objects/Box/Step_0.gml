/// @description Insert description here
// You can write your code in this editor

// pushing
if distance_to_object(Player) <= 1 {
	if Player.x < x {
		hsp ++
	}
	if Player.x > x {
		hsp --
	}
}


vsp = vsp + grv;

// collision
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
};
y = y + vsp
x = x + hsp
hsp = 0

if (x < 0) or (x > room_width) or (y < 0) or (y > room_height) {
	outOfBounds = true
}
if distance_to_object(spikes) = 0 {
	touchingSpikes = true
}

if outOfBounds or touchingSpikes {
	respawn()
}