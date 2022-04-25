// Declare Temp Variables /////////////////////////////////////////////////////
var kLeft, kRight, kUp, kDown, kJump, kJumpRelease, tempAccel, tempFric;
var  kAttack, kDash, kRageArt,kAttackReleased, kParry;
///////////////////////////////////////////////////////////////////////////////

// Input //////////////////////////////////////////////////////////////////////

kLeft        = keyboard_check(kMyLeft);
kRight       = keyboard_check(kMyRight);
kUp          = keyboard_check(kMyUp);
kDown        = keyboard_check(kMyDown);
kJump        = keyboard_check_pressed(kMyJump);
kJumpRelease = keyboard_check_released(kMyJump);
kDash		 = keyboard_check(kMyDash);
kParry		 = keyboard_check_pressed(kMyParry);

kAttack = keyboard_check(kMyAttackLight);

kAttackReleased = keyboard_check_released(kMyAttackLight);

kRageArt     = keyboard_check(kMyRageArt);


if ((!IsAttacking) && (state != "DASH") && (state != "PARRY"))
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
      
    ComboReset();
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
    xscale = 0.66;
    yscale = 1.33;    
	
       ComboReset();
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


// Swap facing on walls
if (!onGround) {
	
    if (cLeft)
        facing = RIGHT;
    if (cRight)
        facing = LEFT;
}



// Adjust scaling after squash + stretch

xscale = Approach(xscale, 1, 0.05);
yscale = Approach(yscale, 1, 0.05);


//Parry
if ((kParry) && (!Staggered))
{
	state = "PARRY";
	Parry = true;
	Parried = false;
	image_index = 0;
}


//Attacking
if ((!ComboEnd()) && (!Staggered))
{
	if (kDown)
	{
		if(kAttack)
		{
			state = "ATTACK";
			IsAttacking = true;
			image_index = 0;
			ComboAdd(3,3);
			ComboCounter++;
		}
	}
	else if (kUp)
	{
	
		if(kAttack)
		{
			state = "ATTACK";
			IsAttacking = true;
			image_index = 0;
			ComboAdd(3,2);
			ComboCounter++;
		}
	}
	else if ((kLeft) || (kRight)) 
	{
		if(kAttack)
		{
			state = "ATTACK";
			IsAttacking = true;
			image_index = 0;
			ComboAdd(3,4);	
			ComboCounter++;
		}
	}
	else
	{
		if(kAttack)
		{
			state = "ATTACK";
			IsAttacking = true;
			image_index = 0;
			ComboAdd(3,1);	
			ComboCounter++;
		}
	}
}

//Dashing
if(kDash) 
{
	if CanDash
	{
		state = "DASH";
		if(kUp)
		{
			dir = point_direction(x,y,x,y - 20);	
			
			repeat(10)
			{
				with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
	            direction = 90 + random_range(-45, 45); 
			}
		}
		else if (kDown)
		{
			dir = point_direction(x,y,x,y + 20);
	
			repeat(10)
			{
				with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
	            direction = 90 + random_range(-45, 45); 
			}
		}
		else if (kLeft)
		{
			dir = point_direction(x,y,x - 20,y);	
			repeat(10)
			{
				with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
	            direction = 180 + random_range(-45, 45); 
			}
		}
		else if (kRight)
		{
			dir = point_direction(x,y,x + 20,y);	
			repeat(10)
			{
				with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
	            direction = 0 + random_range(-45, 45); 
			}
		}
		else
		{
			if facing == RIGHT
			{
				dir = point_direction(x,y,x + 20,y);
				repeat(10)
				{
					with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
				    direction = 0 + random_range(-45, 45); 
				}
			}
			else
			{
				dir = point_direction(x,y,x - 20,y);
				repeat(10)
				{
					with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
				    direction = 180 + random_range(-45, 45); 
				}
			}
		}
		
	}
}

}
else if (state == "DASH")
{
	if (!isDashing)
	{
		DashX = mouse_x;
		DashY = mouse_y;
		Duration = 7;

				if(kUp)
					{
						DashX = x;
						DashY = y - 200;
						
					}
				else if (kDown)
					{
						DashX = x;
						DashY = y + 200;
						Duration = 600;
					}
				else if (kLeft)
					{
						DashX = x - 200;
						DashY = y;
						Duration = 10;
					}
				else if (kRight)
					{
						DashX = x + 200;
						DashY = y;
						Duration = 10;
					}
				else
					{
						if facing == RIGHT
						{
							DashX = x + 200;
							DashY = y;
							Duration = 10;
						}
						else
						{
							DashX = x - 200;
							DashY = y;
							Duration = 10;
						}
					}

		CanDash = false;
		h = 0;
		v = 0;
		isDashing = true;
		move_towards_point(DashX,DashY,16);
		alarm[3] = Duration;
	}
}
else
{
	h = 0;
	v = 0;
	if ((state == "PARRY") && (Parried)){state = "IDLE";}
}


if(kDash) 
{
	if CanDash
	{
		state = "DASH";
		if(kUp)
		{
			dir = point_direction(x,y,x,y - 20);	
			
			repeat(10)
			{
				with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
	            direction = 90 + random_range(-45, 45); 
			}
		}
		else if (kDown)
		{
			dir = point_direction(x,y,x,y + 20);
	
			repeat(10)
			{
				with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
	            direction = 90 + random_range(-45, 45); 
			}
		}
		else if (kLeft)
		{
			dir = point_direction(x,y,x - 20,y);	
			repeat(10)
			{
				with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
	            direction = 180 + random_range(-45, 45); 
			}
		}
		else if (kRight)
		{
			dir = point_direction(x,y,x + 20,y);	
			repeat(10)
			{
				with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
	            direction = 0 + random_range(-45, 45); 
			}
		}
		else
		{
			if facing == RIGHT
			{
				dir = point_direction(x,y,x + 20,y);
				repeat(10)
				{
					with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
				    direction = 0 + random_range(-45, 45); 
				}
			}
			else
			{
				dir = point_direction(x,y,x - 20,y);
				repeat(10)
				{
					with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
				    direction = 180 + random_range(-45, 45); 
				}
			}
		}
		
	}
}

//Tacking damage
if Staggered
{
	if alarm[1] == -1{alarm[1] = 20;}
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


if ((state != "PARRY") && (sprite_index == sParry))
{
	state = "IDLE";
	sprite_index = sIdle;
}

//Audio
audio_listener_position(x,y,0);