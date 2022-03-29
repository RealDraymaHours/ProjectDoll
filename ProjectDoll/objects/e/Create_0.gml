/// @description base stats
Health = 0;
Active = false;
state = "IDLE";


Staggered = false;
StaggerTime = 10;
Poise = 0;
Knockback = false;

//physics
// Movement speed
h = 0;
v = 0;

// Collision below
onGround = false;

// Adjust THIS to adjust overall player speed
m = 0.2;

// Acceleration + friction
groundAccel = 1.0  * m;
groundFric  = 100.0  * m;
airAccel    = 0.75 * m;
airFric     = 100.0 * m;

// Max movement speeds
maxH        = 5.5  * m;
maxV        = 9.0  * m;

jumpHeight  = 8.0  * m;
gravRise    = 0.5  * m;
gravFall    = 0.5  * m;
gravSlide   = 0.0 * m;

// Relative collision checks
cLeft  = 0;
cRight = 0;
cAbove = 0;

alarm[0] = 10;