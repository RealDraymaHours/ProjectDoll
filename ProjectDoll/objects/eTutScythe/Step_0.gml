/// @description 
if !Parried
{
	if GoBack
	{
		hspeed = myhb;	
	}
	else
	{
		if distance_to_object(oTut) < 150
		{
				hspeed = myhf;	
		}
		else
		{
			hspeed = 0;
			if alarm[0] == -1{alarm[0] = 15;}
		}
	
	}
}
else
{
	hspeed = myhb;
}
