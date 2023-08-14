/// @description Insert description here
// You can write your code in this editor

// pushing
if distance_to_object(Player) < 2 {
	if Player.x < x {
		hsp ++
	}
	if Player.x > x {
		hsp --
	}
}




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