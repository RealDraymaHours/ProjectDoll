/// @description base stats
Health = 100;
Active = false;
state = "IDLE";
Stunned = false;
AnimationLock = true;

Staggered = false;
StaggerTime = 10;
Poise = 0;

FinisherMeter = 100;
FinisherMeterRegenAmount = 0;
FinisherMeterRegenTime = 100;

Knockback = false;
KnockbackAcc = 0;
KnockbackFric = 0;
KnockbackDir = "H";

ActiveKnockbackAcc = 0;
ActiveKnockbackFric = 0;
ActiveKnockbackDir = "N";

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


alarm[0] = 1;
alarm[9] = 1;