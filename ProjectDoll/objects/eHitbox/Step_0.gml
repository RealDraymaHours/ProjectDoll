/// @description wait for stat set and set image scale
image_xscale = xSize;
image_yscale = ySize;

if StatsSet = true
{
	alarm[1] = Time;
	
	StatsSet = false;
}