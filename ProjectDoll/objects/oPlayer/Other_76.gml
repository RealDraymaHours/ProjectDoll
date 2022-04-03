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
	    v = Approach(v,  -100, airFric);   
		v = Approach(v, 100.0, airAccel);
		

		
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
			h = Approach(h, 240, groundFric);   
			h = Approach(h, 200, groundAccel);
		}
	}
	else
	{
		repeat(20)
		{
		    h = Approach(h, -240, groundFric);   
			h = Approach(h, 20, groundAccel);
		}
	}
	
}


///////////////////////////////////////////////////////////////////////////////////

///Hitboxes  
//Spider Base
if (event_data[? "message"] == "sPlayerSpiderBaseCombo1HitBox_Create")
{
	if onGround
	{
		if facing = RIGHT
		{
			setPlayerHitbox(x,y,10,10,5,"H",0.01,5,10,sPlayerSpiderBaseComboHitBox1);
		}
		else
		{
			setPlayerHitbox(x,y,10,10,5,"H",0.01,-5,10,sPlayerSpiderBaseComboHitBox1);
		}
	}
	else
	{
		setPlayerHitbox(x,y,10,10,5,"H",0,0,1000,sPlayerSpiderBaseComboHitBox1);
	}
	
}

if (event_data[? "message"] == "sPlayerSpiderBaseCombo2HitBox_Create")
{
	if onGround
	{
		if facing = RIGHT
		{
			setPlayerHitbox(x,y,10,10,5,"H",0.01,5,10,sPlayerSpiderBaseComboHitBox2);
		}
		else
		{
			setPlayerHitbox(x,y,10,10,5,"H",0.01,-5,10,sPlayerSpiderBaseComboHitBox2);
		}
	}
	else
	{
		setPlayerHitbox(x,y,10,10,5,"H",0,0,1000,sPlayerSpiderBaseComboHitBox2);
	}
	
}


if (event_data[? "message"] == "sPlayerSpiderBaseCombo3HitBox_Create")
{
	if onGround
	{
		if facing = RIGHT
		{

			setPlayerHitbox(x,y,20,20,20,"H",20,500,10,sPlayerSpiderBaseComboHitBox3);
		}
		else
		{
			setPlayerHitbox(x,y,20,20,20,"H",-20,500,10,sPlayerSpiderBaseComboHitBox3);
		}
	}
	else
	{
		setPlayerHitbox(x,y,20,20,20,"H",0,0,1000,sPlayerSpiderBaseComboHitBox3);
	}
	
}

//Spider heavy

if (event_data[? "message"] == "sPlayerSpiderHeavyCombo1HitBox_Create")
{
	setPlayerHitbox(x,y,20, 20,20,"V",-15,100,10,sPlayerSpiderHeavyComboHitBox1);
}



if (event_data[? "message"] == "sPlayerSpiderHeavyCombo2HitBox_Create")
{

		if facing = RIGHT
		{
			setPlayerHitbox(x,y,20,20,30,"H",20,500,10,sPlayerSpiderHeavyComboHitBox2);
		}
		else
		{
			setPlayerHitbox(x,y,20,20,30,"H",-20,500,10,sPlayerSpiderHeavyComboHitBox2);
		}
}


//spider RageArt

if (event_data[? "message"] == "sPlayerSpiderRACombo1HitBox_Create")
{
	setPlayerHitbox(x,y,3, 1,1,"V",-15,100,10,sPlayerSpiderRAComboHitBox1);
}

if (event_data[? "message"] == "sPlayerSpiderRACombo2HitBox_Create")
{

	setPlayerHitbox(x,y,20,20,20,"H",0,0,1000,sPlayerSpiderRAComboHitBox2);
}

if (event_data[? "message"] == "sPlayerSpiderHeavyAirDownHitBox_Create")
{

	setPlayerHitbox(x,y,20,20,5,"V",15,100,10,sPlayerSpiderRAComboHitBox2);
}



if (event_data[? "message"] == "sPlayerSpiderGroundDownHitBox_Create")
{

	setPlayerHitbox(x,y,20,20,5,"V",-15,100,10,sPlayerSpiderGroundDownHitBox);
}

