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
	if onGround
	    v = Approach(v,  -100, airFric);   
		v = Approach(v, 100.0, airAccel);
		
		dir = 0;
		
		ComboReset();
}

///////////////////////////////////////////////////////////////////////////////////

///Hitboxes  
//Spider
if (event_data[? "message"] == "sPlayerSpiderBaseCombo1HitBox_Create")
{
	setPlayerHitbox(x,y,10,60,10,sPlayerSpiderBaseComboHitBox1);
}

if (event_data[? "message"] == "sPlayerSpiderBaseCombo2HitBox_Create")
{
	setPlayerHitbox(x,y,10,60,10,sPlayerSpiderBaseComboHitBox2);
}


if (event_data[? "message"] == "sPlayerSpiderBaseCombo3HitBox_Create")
{
	setPlayerHitbox(x,y,10,60,10,sPlayerSpiderBaseComboHitBox3);
}

if (event_data[? "message"] == "sPlayerSpiderBaseCombo4HitBox_Create")
{
	setPlayerHitbox(x,y,10,60,10,sPlayerSpiderBaseComboHitBox4);
}

