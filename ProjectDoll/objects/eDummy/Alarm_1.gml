///@desc RandomMove
rnd = irandom(1);
image_index = 0;

if distance_to_object(oPlayer) > 30
{
	switch(rnd)
	{
		case(0):
			state = "IDLE";
			h = 0;
			v = 0;
		break;
		case(1):
			state = "WALK";
		break;
	}
}
else
{
	switch(rnd)
	{
		case(0):
			state = "SLAM";
		break;
		case(1):
			state = "JUMP";
		break;
	}	
}

