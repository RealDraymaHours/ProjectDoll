/// @description Insert description here
// You can write your code in this editor			
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


if (event_data[? "message"] == "Small_Shake")
{
	ShakeCamera(2,4);
}