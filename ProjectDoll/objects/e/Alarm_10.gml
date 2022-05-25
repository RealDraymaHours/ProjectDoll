///@desc grab

	CameraZoom(5,6);
	
	state = "GRABBED";
	Cutscene = instance_create(x,y,oCutscene);
	Cutscene.alarm[0] = 146;
	
	Cutscene.Caster = self;
	
	if image_xscale == 1
	{
		if collision_line(x, y, x + 240, y, oParSolid,false,false)
		{
				image_xscale = -1;
		}
	}
	else
	{
		if collision_line(x, y, x - 240, y, oParSolid,false,false)
		{
				image_xscale = 1;
		}
	}
	
	Cutscene.spawnX = x;
	Cutscene.spawnY = y;
	
	Cutscene.StatSet = true;
	FinisherMeter = 0;
	
	instance_destroy(oPlayer);
	
	visible = false;

