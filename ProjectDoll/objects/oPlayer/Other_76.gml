if (event_data[? "message"] == "Player_Parry_Off")
{
	Parry = false;
}

if (event_data[? "message"] == "Create_Player_Grab")
{
	setPlayerGrabHitbox();
}

/// Momentum
if (event_data[? "message"] == "Player_Step")
{
if (state == "RUN")
        with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
            direction = 90 + random_range(-45, 45); 
}

if (event_data[? "message"] == "Player_Forward_Big")
{
	if onGround		
	if facing == RIGHT
	{
	    h = Approach(h, 30, groundFric);   
		h = Approach(h, 120, groundAccel);
	}
	else
	{
	    h = Approach(h, -30, groundFric);   
		h = Approach(h, 120, groundAccel);
	}

}

if (event_data[? "message"] == "Player_Forward_Small")
{
	if onGround
	if facing == RIGHT
	{
	    h = Approach(h, 10, groundFric);   
		h = Approach(h, 120, groundAccel);
	}
	else
	{
	    h = Approach(h, -10, groundFric);   
		h = Approach(h, 120, groundAccel);
	}
}


if (event_data[? "message"] == "Player_Forward_Massive")
{
	if onGround
	if facing == RIGHT
	{
	    h = Approach(h, 60, groundFric);   
		h = Approach(h, 120, groundAccel);
	}
	else
	{
	    h = Approach(h, -60, groundFric);   
		h = Approach(h, 120, groundAccel);
	}
}


if (event_data[? "message"] == "Player_Launch")
{
	    v = Approach(v,  -70, airFric);   
		v = Approach(v, 70.0, airAccel);
		

		
		ComboReset();
}

if (event_data[? "message"] == "Player_CheckFacing")
{
		if facing == RIGHT
		{
			dir = 0;
		}
		else
		{
			dir = 180;
		}
}

		

if (event_data[? "message"] == "PlayerStinger")
{
	if facing == RIGHT
	{
		repeat(20)
		{
			h = Approach(h, 180, groundFric);   
			h = Approach(h, 20, groundAccel);
		}
	}
	else
	{
		repeat(20)
		{
		    h = Approach(h, -180, groundFric);   
			h = Approach(h, 20, groundAccel);
		}
	}
	
}


///////////////////////////////////////////////////////////////////////////////////

///Hitboxes  
//Ground
if (event_data[? "message"] == "GroundUp_Create_Hitbox")
{
	SpriteCallToHitbox("GroundUp", Weapon);	
}

if (event_data[? "message"] == "GroundDir_Create_Hitbox")
{
	SpriteCallToHitbox("GroundDir", Weapon);	
}

if (event_data[? "message"] == "GroundDown_Create_Hitbox")
{
	SpriteCallToHitbox("GroundDown", Weapon);	
}

//Air
if (event_data[? "message"] == "AirUp_Create_Hitbox")
{
	SpriteCallToHitbox("AirUp", Weapon);	
}

if (event_data[? "message"] == "AirDir_Create_Hitbox")
{
	SpriteCallToHitbox("AirDir", Weapon);	
}

if (event_data[? "message"] == "AirDown_Create_Hitbox")
{
	SpriteCallToHitbox("AirDown", Weapon);	
}

//Base
if (event_data[? "message"] == "BaseCombo1_Create_Hitbox")
{
	SpriteCallToHitbox("BaseCombo1", Weapon);	
}

if (event_data[? "message"] == "BaseCombo2_Create_Hitbox")
{
	SpriteCallToHitbox("BaseCombo2", Weapon);	
}

if (event_data[? "message"] == "BaseCombo3_Create_Hitbox")
{
	SpriteCallToHitbox("BaseCombo3", Weapon);	
}

//RageArts





