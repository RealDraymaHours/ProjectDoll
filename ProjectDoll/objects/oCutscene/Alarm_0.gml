instance_create((x - 73),y + 40,oPlayer);

Caster.state = "AFTERGRAB";
Caster.SubState = "AFTERGRAB";
Caster.image_index = 0;

Caster.visible = true;

Caster.x = x + 254;

CameraReset(6);


layer_sequence_destroy(Iwannadie);
instance_destroy();


CameraReset(6);
