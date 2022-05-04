/// @description 
rnd = irandom(4);	


if visible = true
switch(state)
{
	#region IDLE
	case("IDLE"):
		switch(rnd)
		{
			case(0):
				state = "STAB"; SubState = "STAB1"; NoFlip = true;
			break;
			case(1):
				if PrevState == "SLASH"{state = "STAB"; SubState = "STAB1" NoFlip = true;}
				else{state = "SLASH";  SubState = "SLASH1";}
			break;
			case(2):
				if PrevState == "JUMP"{state = "THROW";}else{state = "JUMP"; SubState = "JUMPSTART";}
			break;
			case(3):
				if PrevState == "THROW"{state = "JUMP" SubState = "JUMPSTART";}else{state = "THROW"; NoFlip = true;}
			break;
			case(4):
				if PrevState == "STOMP"{state = "THROW";}else{state = "STOMP"; SubState = "STOMPSTART";}
			break;
		}
		PrevState = state;
	break;
	#endregion

	case("STAB"):
		state = "IDLE";
	break;
	
	#region SLASH
	case("SLASH"):
		switch(SubState)
		{
			case("SLASH1"):
				SubState = "SLASH2";
			break;
			case("SLASH2"):
				SubState = "SLASH3";
			break;
			case("SLASH3"):
				state = "IDLE";
				SubState = "JUMP";
			break;		
		}
		FlipCheck(self);
	break;
	#endregion
	
	case("THROW"):
		if SubState != "THROWING"
		{
			SubState = "THROWING";	
		}
	break;
	case("JUMP"):
			switch(SubState)
			{
				case("JUMPSTART"):
					sprite_index = sTutorialBossJumpStart;
					SubState = "JUMP";
				break;
				case("BEFOREDOWN"):
					sprite_index = sTutorialBossJumpDown;
					SubState = "DOWNWARDS"
				break;
				case("WAITFOREND"):
					SubState = "IDLE";
					state = "IDLE";
				break;
			}
	break;
	case("STOMP"):
		switch(SubState)
		{
			case("STOMPSTART"):
				SubState = "STOMP";
				NoFlip = true;
			break;
			case("STOMP"):
				
			break;
			case("STOMPEND"):
				
				SubState = "IDLE";
				state = "IDLE";
				NoFlip = false;
			break;
		}
	break;
	case("STUNNED"):
	break;
	case("CATCHSCYTHE"):
		if !Knockback{state = "IDLE";}
	break;
	case("PARRIED"):
		state = PrevState;
		Parried = false;
		switch(SubState)
		{
			case("SLASH1"):
				SubState = "SLASH2";
			break;
			case("SLASH2"):
				SubState = "SLASH3";
			break;
			case("SLASH3"):
				SubState = "JUMP";
				state = "IDLE";
				NoFlip = false;
			break;
		}
	break;
}
