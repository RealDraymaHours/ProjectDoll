draw_self()

//draw_text_color(200,200,SubState,c_white,c_white,c_white,c_white,1);
//draw_text_color(300,200,state,c_white,c_white,c_white,c_white,1);

draw_text_color(x,y-100,FinisherMeter,c_white,c_white,c_white,c_white,1);
draw_text_color(x,y-70,Health,c_white,c_white,c_white,c_white,1);

if ((state == "IDLE") || !AnimationLock)
{
	if oPlayer.x > x
	{
		image_xscale = -1;
	}
	else
	{
		image_xscale = 1;
	}
}

if state != "STUNNED"
{
	bar_width = 56;
	bar_height = 4
	
	draw_sprite(sStaggerBarBackground,0, x, y-80);	
	draw_sprite(sStaggerBar,0, x, y-80);	
	
	draw_sprite_stretched(sManaBar,0,x + 4, y - 76,(FinisherMeter/MaxFinishMeter) * bar_width, bar_height);
}

