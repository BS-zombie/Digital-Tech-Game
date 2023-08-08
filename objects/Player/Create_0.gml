// movement
hsp = 0
vsp = 0
hmtm = 0
vmtm = 0
grv = 0.2
walksp = 1.5
jumpLeanence = 0
inertia = 0.3

//game
deaths = 0
startX = x
startY = y

jumpTiming = 0
onGround = false
touchingSpikes = false
outOfBounds = false
doDeathAnimation = true

function respawn() {
	x = startX
	y = startY
	deaths += 1
	global.buttonPressed = false
	outOfBounds = false
	touchingSpikes = false
	image_index = 0
	doDeathAnimation = true
}


