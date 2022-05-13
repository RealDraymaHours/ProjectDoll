/*
if state != "STUNNED"
{
	oPlayer.state = "PARRIED";	
}
else
{
	
	CameraZoom(5,6);
	
	state = "GRABBED";
	instance_destroy(other);
	Cutscene = instance_create(x,y,oCutscene);
	Cutscene.sprite_index = sTutorialBoss1Grab1;
	
	if p.x > x
	{
		Cutscene.Left = true;
	}
	else
	{
		Cutscene.Left = false;
	}
	
	
	Cutscene.spawnX = x;
	Cutscene.spawnY = y;
	Cutscene.Caster = self;
	Cutscene.StatSet = true;
	FinisherMeter = 0;
	
	instance_destroy(oPlayer);
	
	visible = false;
}
*/

oPlayer.state = "PARRIED";	
