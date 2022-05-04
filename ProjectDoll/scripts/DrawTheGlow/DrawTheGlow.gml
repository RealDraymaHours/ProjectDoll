// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawTheGlow(spriteindex)
{
	switch(spriteindex)
	{
		case(sPlayerCyanBaseCombo1):
			draw_sprite_glow_ext(sPlayerCyanBaseCombo1Glow,image_index, x, y, facing * 1, 1, dir, c_white, image_alpha, make_color_rgb(0,255,255));
		break;
		case(sPlayerCyanBaseCombo2):
			draw_sprite_glow_ext(sPlayerCyanBaseCombo2Glow,image_index, x, y, facing * 1, 1, dir, c_white, image_alpha, make_color_rgb(0,255,255));
		break;
		case(sPlayerCyanBaseCombo3):
			draw_sprite_glow_ext(sPlayerCyanBaseCombo3Glow,image_index, x, y, facing * 1, 1, dir, c_white, image_alpha, make_color_rgb(0,255,255));
		break;
	}

}