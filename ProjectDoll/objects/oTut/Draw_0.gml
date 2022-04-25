/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if oPlayer.x > x
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;
}


	bar_width = 56;
	bar_height = 4
	
	draw_sprite(sStaggerBarBackground,0, x, y-80);	
	draw_sprite(sStaggerBar,0, x, y-80);	
	
	draw_sprite_stretched(sManaBar,0,x + 4, y - 76,(FinisherMeter/MaxFinishMeter) * bar_width, bar_height);
