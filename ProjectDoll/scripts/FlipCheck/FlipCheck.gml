//Check if sprite has to flip. Use this when you want to flip sprite while going through a combo
function FlipCheck(me)
{
	
	if p.x > me.x
	{
		me.image_xscale = -1;
	}
	else
	{
		me.image_xscale = 1;
	}


}