if MoveBack
{
	oPlayer.state = "IDLE";
	instance_destroy();	
}
else if Grabbed
{
	if TheThingIgrabbed.state == "STUNNED"
	{
		TheThingIgrabbed.alarm[10] = 1;
		instance_destroy();
	}
	else
	{
		oPlayer.state = "IDLE";	
		with oPlayer
		{
			if !oHook.GrabbedAnEnemy{KnockBackPlayer(180,-10,-10);}
		
			hspeed = 0;
			vspeed = 0;	
			CanDash = true;
		}	
	
		instance_destroy();
	}
}
