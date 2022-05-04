//instance_destroy(oPlayerFinish);

// Movement speed
h = 0;
v = 0;

//sprite
sParry = sPlayerTearParry;


//Abilities
Parry = false;

Weapon = "Blue";



// Collision below
onGround = false;

// Camera ////////////////////////////////////////////////////
if (!instance_exists(oCamera))
    instance_create(x, y, oCamera);
    

// Movement Vars //////////////////////////////////////////////////////////////

// Adjust THIS to adjust overall player speed
m = 1;

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

//camDist     = 24.0; // (later versions)

// Frames prior to being able to push off of wall slide with arrow keys (doesn't affect wall jump)
clingTime   = 4.0  * m;
///////////////////////////////////////////////////////////////////////////////

// Combo
ComboCounter = -1;
ComboArray = [-1,-1,-1];
ComboFinisher = false;
CanCombo = true;
dir = 0;
IsAttacking = false;

//RageArts
RageArtsArray = [-1,-1,-1,-1,-1,-1,-1,-1,-1];
RageArtActivated = false;

CutX = 0;
CutY = 0;
CutSpeed = 8;
DistanceToBoss = 0;

//Dashing Values
DashX = 0;
DashY = 0;
isDashing = false;
CanDash = true;

// Facings
RIGHT =  1;
LEFT  = -1;
YS = 0;

// Initialize properties
state  = "IDLE"
facing = image_xscale; // Change xscale in editor to adjust initial facing

// For squash + stretch

xscale = 1;
yscale = 1;

///////////////////////////////////////////////////////////////////////////////

// Misc ///////////////////////////////////////////////////////////////////////

// Relative collision checks
cLeft  = 0;
cRight = 0;
cAbove = 0;

// Wall slide
canStick = true;
sticking = false;

///////////////////////////////////////////////////////////////////////////////


length = 6; //4;




Staggered = false;

//Sound
audio_listener_orientation(0,1,0,0,0,1);


/////////////////////////////////////////////////////////////
//Buttons
// Declare Temp Variables /////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

// Input //////////////////////////////////////////////////////////////////////

kMyLeft        = vk_left;
kMyRight       = vk_right;
kMyUp          = vk_up;
kMyDown        = vk_down;
kMyJump        = vk_space;
kMyDash		   = vk_lshift;

kMyParry		= ord("A");

kMyAttackLight = ord("S");
kMyAttackHeavy = ord("D");

kMyRageArt     = ord("A");

LoadButtonMapping();

