if MoveToPlayer
{
	
	rnd = irandom(9);
	switch(rnd)
	{
		case(0):
			audio_play_sound(CollectSoul1, 10, false);
		break;
		case(1):
			audio_play_sound(CollectSoul2, 10, false);
		break;
		case(2):
			audio_play_sound(CollectSoul3, 10, false);
		break;
		case(3):
			audio_play_sound(CollectSoul4, 10, false);
		break;
		case(4):
			audio_play_sound(CollectSoul5, 10, false);
		break;
		case(5):
			audio_play_sound(CollectSoul6, 10, false);
		break;
		case(6):
			audio_play_sound(CollectSoul7, 10, false);
		break;
		case(7):
			audio_play_sound(CollectSoul8, 10, false);
		break;
		case(8):
			audio_play_sound(CollectSoul9, 10, false);
		break;
		case(9):
			audio_play_sound(CollectSoul10, 10, false);
		break;
	}
	
	
	instance_destroy();
	
	if global.Health != global.MaxHealth
	{
		global.Health += Gain;	
	}
}
