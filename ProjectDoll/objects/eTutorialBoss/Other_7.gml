/// @description 
switch(state)
{
	case("JUMP"):
		switch(SubState)
		{
			case("JUMP"):
				sprite_index = sBlouterJumpMid;
			break;
			case("BEFOREDOWN"):
				SubState = "DOWNWARDS";
				sprite_index = sBlouterJumpDown;
			break;
			case("WAITFOREND"):
				SubState = "JUMP";
				state = "IDLE";
			break;
		}
	break;
	case("SLAM"):
		state = "IDLE";
	break;
	case("SPIKE"):
		if sprite_index == sBlouterSpike
		{
			sprite_index = sBlouterSpikeDamage;
			Active = true;
			if oPlayer.x >= x
			{
				ActiveKnockbackAcc = 200;
				ActiveKnockbackFric = 200;
				ActiveKnockbackDir = "H"
			}
			else
			{
				ActiveKnockbackAcc = -200;
				ActiveKnockbackFric = -200;
				ActiveKnockbackDir = "H"
			}
			
		}
		else if sprite_index == sBlouterSpikeDamage
		{
			sprite_index = sBlouterSpikeReset;
			Active = false;
		}
		else
		{
			state = "IDLE";
		}
	break;
}
