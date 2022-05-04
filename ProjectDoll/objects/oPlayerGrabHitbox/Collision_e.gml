if other.state != "STUNNED"
{
	oPlayer.state = "PARRIED"	
	audio_play_sound(PlayerParryWIP,1000,false);	
	
	repeat(10)
	{
		instance_create(oPlayer.x, oPlayer.y, oParriedEffect);	
	}
	
	instance_destroy();
}

