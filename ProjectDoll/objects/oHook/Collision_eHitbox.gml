if !MoveBack
{
	audio_play_sound(PlayerParryWIP,1000,false);
	
	repeat(10)
	{
		instance_create(x, y, oParriedEffect);	
	}
	
	MoveBack = true;
	
	with oPlayer
	{
		hspeed = 0;
		vspeed = 0;
		
		state = "IDLE";
		
		CanDash = true;	
	}
}
