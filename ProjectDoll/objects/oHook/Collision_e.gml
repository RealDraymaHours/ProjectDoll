if !other.Active
{
	if !MoveBack
	{
		x = other.x;
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

