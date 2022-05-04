/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_text_color(x,y-60,SubState,c_white, c_white, c_white,c_white,1);
draw_text_color(x,y-80,state,c_white, c_white, c_white,c_white,1);

if !NoFlip
{
	if p.x > x
	{
		image_xscale = -1;
	}
	else
	{
		image_xscale = 1;
	}
}


	bar_width = 56;
	bar_height = 4
	
	draw_sprite(sStaggerBarBackground,0, x, y-80);	
	draw_sprite(sStaggerBar,0, x, y-80);	
	
	draw_sprite_stretched(sManaBar,0,x + 4, y - 76,(FinisherMeter/MaxFinishMeter) * bar_width, bar_height);
	
if state != "PARRIED"
{
	if SubState = "SLASH1"
	{
		draw_sprite_glow_ext(sTutorialBossSlash1Glow,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha,make_color_rgb(255,0,255));	
	}
}
