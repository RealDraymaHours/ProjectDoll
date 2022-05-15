if !other.Active
{
	if !MoveBack
	{
		if other.image_xscale == 1
		{
			x = other.x - 10;
		}
		else
		{
			x = other.x + 10;
		}
		y = other.y;
	
		hspeed = 0;
		vspeed = 0;

		Grabbed = true;
		GrabbedAnEnemy = true;
		TheThingIgrabbed = other;
		
		
		with oPlayer
		{
			move_towards_point(oHook.x,oHook.y,20);	
		}
	}
}
else if ((!MoveBack) && (Grabbed))
{
	audio_play_sound(PlayerParryWIP,1000,false);
	
	repeat(10)
	{
		instance_create(x, y, oParriedEffect);	
	}
	
	MoveBack = true;
}

