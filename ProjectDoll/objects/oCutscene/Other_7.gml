instance_create((x - 30),y + 51,oPlayer);
Caster.state = "IDLE";
Caster.visible = true;

if Left{Caster.x = x - 326;}else{Caster.x = x + 326;}


layer_sequence_destroy(Iwannadie);
instance_destroy();


CameraReset(6);
