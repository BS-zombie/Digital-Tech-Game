// movement
hsp = 0
vsp = 0
hmtm = 0
vmtm = 0
grv = 0.2
walksp = 1.5
jumpLeanence = 0
wallJumpLeanence = 5
inertia = 0.3

//game
deaths = 0
startX = x
startY = y

hJumpTiming = 0
jumpTiming = 0
onGround = false
touchingSpikes = false
outOfBounds = false
doDeathAnimation = true
wallJumping = false


function respawn() {
	x = startX
	y = startY
	deaths += 1
	global.buttonPressed = false
	outOfBounds = false
	touchingSpikes = false
	image_index = 0
	doDeathAnimation = true
	if instance_exists(Box) {
		Box.x = Box.startX
		Box.y = Box.startY
	}
}


