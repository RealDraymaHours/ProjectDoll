if !oPlayer.Staggered
{
	if MoveBack
	{
		move_towards_point(p.x,p.y,25);	
	}
}
else
{
	MoveBack = true;
	Grabbed = false;
	oPlayer.hspeed = 0;
	oPlayer.vspeed = 0;
	
	move_towards_point(p.x,p.y,25);	
}


