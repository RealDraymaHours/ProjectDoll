rnd = irandom(3);

if distance_to_object(oPlayer) < 40
{
	switch(rnd)
	{
		case(0):
			state = "SLAM";
			PrevState = "SLAM";			
		break;
		case(1):
			if PrevState == "JUMP"
			{
				state = "SLAM";
				PrevState = "SLAM";	
			}
			else
			{
				state = "JUMP";
				PrevState = "JUMP";	
			}
		break;
		case(2):
			if PrevState == "SPIKE"
			{
				state = "SLAM";
				PrevState = "SLAM";	
			}
			else
			{
				state = "SPIKE";
				PrevState = "SPIKE";	
			}
		break;
	}
}
else
{
	switch(rnd)
	{
		case(1):
			state = "WALK";
			PrevState = "WALK";
		break;
		case(2):
			if PrevState == "JUMP"
			{
				state = "GAISER";
				PrevState = "GAISER";	
			}
			else
			{
				state = "JUMP";
				PrevState = "JUMP";	
			}
		break;
		case(3):
			if PrevState == "GAISER"
			{
				state = "WALK";
				PrevState = "WALK";	
			}
			else
			{
				state = "GAISER";
				PrevState = "GAISER";	
			}
		break;
	}
}



image_index = 0;
