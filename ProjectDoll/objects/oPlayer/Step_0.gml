// Declare Temp Variables /////////////////////////////////////////////////////
var kLeft, kRight, kUp, kDown, kJump, kJumpRelease, tempAccel, tempFric;
var  kAttackLight, kAttackHeavy, kDash, kRageArt,kAttackLightReleased, kAttackHeavyReleased;
///////////////////////////////////////////////////////////////////////////////

// Input //////////////////////////////////////////////////////////////////////

kLeft        = keyboard_check(ord("A"));
kRight       = keyboard_check(ord("D"));
//kUp          = keyboard_check(ord("W"));
kDown        = keyboard_check(ord("S"));
kJump        = keyboard_check_pressed(vk_space);
kJumpRelease = keyboard_check_released(vk_space);
kDash		 = keyboard_check(vk_lshift);

kAttackLight = mouse_check_button(mb_left);
kAttackHeavy = mouse_check_button(mb_right);

kAttackLightReleased = mouse_check_button_released(mb_left);
kAttackHeavyReleased = mouse_check_button_released(mb_right);

kRageArt     = keyboard_check(ord("W"));
//kWarp		 = keyboard_check_pressed(vk_lshift); //mouse_check_button_released(mb_right);


if ((!IsAttacking) && (state != "DASH"))
{
///////////////////////////////////////////////////////////////////////////////
// Which form of accel/fric to apply
if (onGround) {	
    tempAccel = groundAccel;
    tempFric  = groundFric;
} else {
    tempAccel = airAccel;
    tempFric  = airFric;
}

// Stick to wall //////////////////////////////////////////////////////////////
if ((!cRight && !cLeft) || onGround) {
    canStick = true;
    sticking = false;
}   

// Cling to wall
if (((kRight && cLeft) || (kLeft && cRight)) && canStick && !onGround) {
    alarm[0] = clingTime;
	ComboReset();
    sticking = true; 
    canStick = false;       
}
///////////////////////////////////////////////////////////////////////////////

// Gravity ////////////////////////////////////////////////////////////////////
if (!onGround) {
    state = "JUMP";
    if ((cLeft || cRight) && v >= 0) {
        // Wall slide
        v = Approach(v, maxV, gravSlide);
    } else {
        
        // Fall normally
        if (v < 0)
            v = Approach(v, maxV, gravRise);
        else
            v = Approach(v, maxV, gravFall);
    }
}
///////////////////////////////////////////////////////////////////////////////


// Left 
if (kLeft && !kRight && !sticking) {
    facing = LEFT;

    // Apply acceleration left
    if (h > 0)
        h = Approach(h, 0, tempFric);   
    h = Approach(h, -maxH, tempAccel);
        
    if (onGround /*&& !cLeft*/)
        state = "RUN";
    else {
        if (onGround)
            state = "IDLE";
    }
}

// Right 
if (kRight && !kLeft && !sticking) {
    facing = RIGHT;

    // Apply acceleration right
    if (h < 0)
        h = Approach(h, 0, tempFric);   
    h = Approach(h, maxH, tempAccel);
        
    if (onGround /*&& !cRight*/)
        state = "RUN";
    else {
        if (onGround)
            state = "IDLE";
    }
}

// Friction
if (!kRight && !kLeft)
    h = Approach(h, 0, tempFric);

if (onGround && h == 0)
    state = "IDLE";    
       
// Wall jump
if (kJump && cLeft && !onGround) {
    // Stretch sprite
    xscale = 0.66;
    yscale = 1.33;     
	Combo = 0;
      
    
    // Wall jump is different when pushing off/towards the wall        
    if (kLeft) {
        v = -jumpHeight * 1.1;
        h = jumpHeight * .75  * 1.2;
    } else {
        v = -jumpHeight * 1.1;
        h = maxH;
    }  
}

if (kJump && cRight && !onGround) {
    // Stretch sprite
	/*
    xscale = 0.66;
    yscale = 1.33;              
      */ 
       
    // Wall jump is different when pushing off/towards the wall  
    if (kRight) {
        v = -jumpHeight * 1.1;
        h = -jumpHeight * .75 * 1.2;
    } else {
        v = -jumpHeight * 1.1;
        h = -maxH;
    }  
}
  
// Jump
if (kJump && onGround) {
	ComboReset();
    if (onGround || (!cRight && !cLeft)) {
        // Stretch sprite 
		
        xscale = 0.66;
        yscale = 1.33;
        
		ComboReset();
		
        v = -jumpHeight;
 
    }
} else {
    // Variable hop
    if (kJumpRelease) {
        if (v < 0 && v >= -jumpHeight)
            v *= 0.25; 
    }
}





//Dashing
/*
if ((!instance_exists(obj_bunny_bullet)) && (state != DEATH)) 
{		
	if CanWarp 
	{
		if kWarp
		{
			instance_create_depth(x,y-2,self.depth,obj_bunny_bullet);
			instance_destroy();
		}
	}
	else if (onGround)
	{
			if alarm[4] == -1{alarm[4] = 20;}
	}
}
*/

// Swap facing on walls
if (!onGround) {
	
    if (cLeft)
        facing = RIGHT;
    if (cRight)
        facing = LEFT;
}

/* 

// Adjust scaling after squash + stretch

xscale = Approach(xscale, 1, 0.05);
yscale = Approach(yscale, 1, 0.05);
*/
/*  */


/*
//parry
if Parry = true
{
	state = ACTIVE;
	MyLight = c_blue;
	speed = 0;
	h = 0;
	v = 0;
}
*/

//Attacking and Rage arts
if (kRageArt)
{
	if ((kAttackLightReleased) && (global.Mana >= 10))
	{
		state = "RAGEART";
		ComboReset();
		IsAttacking = true;
		global.Mana -= 10;
	}
	else if(kAttackHeavyReleased)
	{
			
	}
}
else
{
	if (ComboEnd() == false)
	{
		if(kAttackLight)
		{
			state = "ATTACK";	
			image_index = 0;
		
			ComboAdd(3,1);
			ComboCounter++;
		
			dir = point_direction(x,y,mouse_x,mouse_y);	
			IsAttacking = true;
			if mouse_x <= x
			{
					facing = LEFT;
			}
			else
			{
				facing = RIGHT;	
			}

		}
		else if(kAttackHeavy)
		{
			state = "ATTACK";
			image_index = 0;
			ComboAdd(3,2);
			ComboCounter++;
			IsAttacking = true;
			dir = point_direction(x,y,mouse_x,mouse_y);	
			
			if mouse_x <= x
			{
					facing = LEFT;
			}
			else
			{
				facing = RIGHT;	
			}
			
		}
		

	}	
}

//Dashing
if(kDash)
{
	if CanDash
	{
		state = "DASH";
		dir = point_direction(x,y,mouse_x,mouse_y);	
	}
}

}
else if (state == "DASH")
{
	if (!isDashing)
	{
		DashX = mouse_x;
		DashY = mouse_y;
		CanDash = false;
		h = 0;
		v = 0;
		isDashing = true;
		move_towards_point(DashX,DashY,16);
		alarm[3] = 10;
	}
}
else
{
	h = 0;
	v = 0;
}

//Tacking damage
if global.Staggered = true && Staggered = false
{
	MyLight = c_black;
	Staggered = true;
	alarm[1] = 40;
}

//dying
if global.Health < 1
{
	CanLeft = false;
	state = "DEATH";
	speed = 0;
	h = 0;
	v = 0;
}




//Audio
audio_listener_position(x,y,0);