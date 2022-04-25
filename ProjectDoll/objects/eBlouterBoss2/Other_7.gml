/// @description 
switch(state)
{
	case("SLASH"):
		if oPlayer.x >= x
		{
			HAcc = 20;
			HFric = 20;
			HDir = "H"
			
		}
		else
		{
			HAcc = -20;
			HFric = -20;
			HDir = "H"
		}
		switch(sprite_index)
		{
			case(sBlouter2SlashCombo0):
				AnimationLock = true;
				sprite_index = sBlouter2SlashCombo1;
				setEnemyHitbox(self,50,1,HDir,HAcc,HFric, sBlouter2SlashComboHitbox1);
				
			break;
			case(sBlouter2SlashCombo1):
				AnimationLock = true;
				sprite_index = sBlouter2SlashCombo2;
				setEnemyHitbox(self,50,1,HDir,HAcc,HFric, sBlouter2SlashComboHitbox2);
			break;
			case(sBlouter2SlashCombo2):
				AnimationLock = true;
				sprite_index = sBlouter2SlashCombo3;
				setEnemyHitbox(self,120,2,HDir,HAcc*2,HFric*2, sBlouter2SlashComboHitbox3);

			break;
			case(sBlouter2SlashCombo3):
				AnimationLock = true;
				state = "IDLE";
			break;
		}
	break;
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
			case("JUMPSPIKE"):
				//SubState = "JUMP";
				//state = "IDLE";
				sprite_index = sBlouterSpikeDamage
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
				state = "SPIKE"
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
		else if sprite_index == sBlouterSpikeReset
		{
			sprite_index = sBlouterToPhase2;
			image_speed = 2;
		}
		else
		{
			image_speed = 1;
			state = "IDLE";
			SubState = "JUMP";
		}
	break;
	case("GAISER"):
		state = "IDLE";

	break;
}
//testingshit
