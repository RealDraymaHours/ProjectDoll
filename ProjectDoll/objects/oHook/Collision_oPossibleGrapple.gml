if !MoveBack
{
	x = other.x;
	y = other.y;
	
	hspeed = 0;
	vspeed = 0;

	Grabbed = true;
	TheThingIgrabbed = other;

	with oPlayer
	{
		move_towards_point(oHook.x,oHook.y,20);	
	}
}
