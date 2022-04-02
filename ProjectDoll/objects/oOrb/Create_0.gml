scale = random_range(1,3);

image_xscale = scale;
image_yscale = scale;

MoveDown = false;

direction = irandom_range(60,120);

image_angle = direction;
speed = random_range(10, 20);
alarm[0] = random_range(4,8);


//instance_destroy(oPlayerFinish);

// Movement speed
h = 0;
v = 0;

// Collision below
onGround = false;

// Camera ////////////////////////////////////////////////////
if (!instance_exists(oCamera))
    instance_create(x, y, oCamera);
    

// Movement Vars //////////////////////////////////////////////////////////////

// Adjust THIS to adjust overall player speed
m = 2;

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
///////////////////////////////////////////////////////////////////////////////

// Misc ///////////////////////////////////////////////////////////////////////

// Relative collision checks
cLeft  = 0;
cRight = 0;
cAbove = 0;

///////////////////////////////////////////////////////////////////////////////

