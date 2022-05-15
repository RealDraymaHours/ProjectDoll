instance_create((x - 25),y + 53,oPlayer);

Caster.state = "IDLE";
Caster.SubState = "IDLE";
Caster.visible = true;

Caster.x = x + 20;
//318 706
//-25 -53


layer_sequence_destroy(Iwannadie);
instance_destroy();


CameraReset(6);
