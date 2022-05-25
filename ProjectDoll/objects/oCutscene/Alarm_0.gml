

Caster.state = "AFTERGRAB";
Caster.SubState = "AFTERGRAB";
Caster.image_index = 0;

Caster.visible = true;

if Caster.image_xscale == 1
{
	instance_create((x - 73),y + 40,oPlayer);
	Caster.x = x + 254;
}
else
{
	instance_create((x + 73),y + 40,oPlayer);
	Caster.x = x - 254;
}
	

CameraReset(6);


layer_sequence_destroy(Iwannadie);
instance_destroy();


CameraReset(6);
