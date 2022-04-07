draw_self();
if state != "SLAM"
{
	if oPlayer.x >= x
	{
		image_xscale = 1;	
	}
	else
	{
		image_xscale = -1;
	}
}

draw_text(x, y - 64, state);
draw_text(x, y - 80, alarm[1]);
