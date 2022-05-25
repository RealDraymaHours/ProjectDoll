/// @description

if StatSet
{
	if Caster.image_xscale == 1
	{
		Iwannadie = layer_sequence_create("Instances",x,y,seqTutGrab1);
	}
	else
	{
		Iwannadie = layer_sequence_create("Instances",x,y,seqTutGrabMirror);
	}
	StatSet = false;
}
