// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @description draw_sprite_neon_ext(spr, img, x, y, xscl, yscl, ang, blend, alpha, glow)
/// @param spr
/// @param  img
/// @param  x
/// @param  y
/// @param  xscl
/// @param  yscl
/// @param  ang
/// @param  blend
/// @param  alpha
/// @param  glow

function draw_sprite_glow_ext(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9)
{

	// WARNING!
	// This script assumes the given sprite has an empty border (alpha = 0) of at least 4 pixels!  this texture may not be cropped in the global game settings)
	// This script also assumes every pixel of the given sprite either has an alpha value of 1 or 0!

	shader_set(shOutline);

	var img = argument1;
	if img == -1
	    img = image_index;

	var coords = sprite_get_uvs(argument0, img);
	shader_set_uniform_f(shader_get_uniform(shOutline, "pixelW"), (coords[2] - coords[0]) / (sprite_get_width(argument0) * argument4));
	shader_set_uniform_f(shader_get_uniform(shOutline, "pixelH"), (coords[3] - coords[1]) / (sprite_get_width(argument0) * argument5));
	shader_set_uniform_f(shader_get_uniform(shOutline, "glowCol"),
	    colour_get_red(argument9) / 255, colour_get_green(argument9) / 255, colour_get_blue(argument9) / 255, 0.5);

	draw_sprite_ext(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8);

	shader_reset();

}