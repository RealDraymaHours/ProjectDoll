// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyBeginStepGravity(Enemy){

var temp;

// Check if you were onGround previous frame
temp = Enemy.onGround;

Enemy.onGround = OnGround();

// Squash sprite during jump landing
if (!temp && Enemy.onGround) {
    if (Enemy.v >= 0) { 
        Enemy.yscale = 0.66;
        Enemy.xscale = 1.33;  
    }
}

// Update relative collision
Enemy.cLeft  = place_meeting(Enemy.x - 1, Enemy.y, oBlock); 
Enemy.cRight = place_meeting(Enemy.x + 1, Enemy.y, oBlock); 
Enemy.cAbove = place_meeting(Enemy.x, Enemy.y - 1, oParSolid);


}

function EnemyStepGravity(Enemy)
{
	
if (Enemy.onGround) {
    Enemy.tempAccel = Enemy.groundAccel;
    Enemy.tempFric  = Enemy.groundFric;
} else {
    Enemy.tempAccel = Enemy.airAccel;
    Enemy.tempFric  = Enemy.airFric;
}
 
///////////////////////////////////////////////////////////////////////////////

// Gravity ////////////////////////////////////////////////////////////////////
if (!Enemy.onGround) {
	if ((Enemy.cLeft || Enemy.cRight) && Enemy.v >= 0) {
		// Wall slide
		Enemy.v = Approach(Enemy.v, Enemy.maxV, Enemy.gravSlide);
		} else {
        
		    // Fall normally
		    if (Enemy.v < 0)
		        Enemy.v = Approach(Enemy.v, Enemy.maxV, Enemy.gravRise);
		    else
		        Enemy.v = Approach(Enemy.v, Enemy.maxV, Enemy.gravFall);
		}
	}
}

function EnemyEndStepGravity(Enemy)
{
// Actual collision checks + movement
var i;

// Vertical
for (i = 0; i < abs(Enemy.v); ++i) {
    if (!place_meeting(Enemy.x, Enemy.y + sign(Enemy.v), oParSolid))
        Enemy.y += sign(Enemy.v);
    else {
        Enemy.v = 0;
        break;
    }
}

// Horizontal
for (i = 0; i < abs(Enemy.h); ++i) {
    // UP slope
    if (place_meeting(x + sign(Enemy.h), Enemy.y, oParSolid) && !place_meeting(Enemy.x + sign(Enemy.h), Enemy.y - 1, oParSolid))
        Enemy.y = --Enemy.y;
    
    // DOWN slope
    if (!place_meeting(Enemy.x + sign(Enemy.h), Enemy.y, oParSolid) && !place_meeting(Enemy.x + sign(Enemy.h), Enemy.y + 1, oParSolid) && place_meeting(Enemy.x + sign(Enemy.h), Enemy.y + 2, oParSolid))
        Enemy.y = ++Enemy.y;      
        
    if (!place_meeting(Enemy.x + sign(Enemy.h), Enemy.y, oParSolid))
        Enemy.x += sign(Enemy.h); 
    else {
        // Push block
        if (place_meeting(Enemy.x + sign(Enemy.h), Enemy.y, oPushBlock)) {
            with (instance_place(Enemy.x + sign(Enemy.h), Enemy.y, oPushBlock))
                Enemy.h = other.h
        } else
            Enemy.h = 0;
        break;
    }
}	
}

function EnemyKnockback(acc, fric, target, VorH)
{
	if VorH == "H"
	{
		//right
		target.h = Approach(target.h, fric, target.groundFric);   
		target.h = Approach(target.h, acc, target.groundAccel);
		target.v = 0;   
		target.v = 0;
	}
	else
	{
		target.v = Approach(target.v, fric, target.airFric);   
		target.v = Approach(target.v, acc, target.airAccel);
	}
}