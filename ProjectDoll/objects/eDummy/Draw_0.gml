draw_self();
if oPlayer.x >= x
{
	image_xscale = 1;	
}
else
{
	image_xscale = -1;
}
if state != "DEATH"
{
	if v <= -1
	{
		sprite_index = sPlushStaggeredUp;	
	}
	else if Staggered
	{
		sprite_index = sPlushStaggeredSide;	
	}
	else
	{
		sprite_index = sPlushNormal;
	}
}
else
{
	sprite_index = sPlushDeath;
}



