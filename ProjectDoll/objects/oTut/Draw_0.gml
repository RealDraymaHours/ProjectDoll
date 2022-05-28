

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

	
if state != "PARRIED"
{
	switch(SubState)
	{
		case("SLASH1"):
			draw_sprite_glow_ext(sTutorialBossSlash1Glow,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha,make_color_rgb(255,0,255));	
		break;
		case("SLASH2"):
			draw_sprite_glow_ext(sTutorialBossSlash2Glow,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha,make_color_rgb(255,0,255));	
		break;
		case("SLASH3"):
			draw_sprite_glow_ext(sTutorialBossSlash3Glow,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha,make_color_rgb(255,0,255));	
		break;
		case("WHIP"):
			draw_sprite_glow_ext(sTutorialBossWhipGlow,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha,make_color_rgb(255,0,255));	
		break;
		case("STAB1"):
		case("STAB2"):
		case("STAB3"):
		case("STAB4"):
			draw_sprite_glow_ext(sTutorialBossStabbingGlow,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha,make_color_rgb(255,0,255));	
		break;
		case("THROWSTART"):
			draw_sprite_glow_ext(sTutorialBossThrowStartGlow,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha,make_color_rgb(255,0,255));	
		break;
		case("IDLE"):
			state = "IDLE";
		break;
		case("IRONMAIDEN"):
			draw_sprite_glow_ext(sTutorialBossIronMaidenGlow,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha,make_color_rgb(255,0,255));	
		break;
		case("HELL"):
			draw_sprite_glow_ext(sTutorialBossHellGlow,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha,make_color_rgb(255,0,255));	
		break;
	}
}
