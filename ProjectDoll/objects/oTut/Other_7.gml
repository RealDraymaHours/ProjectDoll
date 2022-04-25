/// @description 
switch(state)
{
	case("IDLE"):
		rnd = irandom(4);
	
		switch(rnd)
		{
			case(0):
				state = "STAB";
			break;
			case(1):
				if PrevState == "SLASH"{state = "STAB";}else{state = "SLASH";}
			break;
			case(2):
				if PrevState == "JUMP"{state = "THROW";}else{state = "JUMP";}
			break;
			case(3):
				if PrevState == "THROW"{state = "JUMP";}else{state = "THROW";}
			break;
			case(4):
				if PrevState == "STOMP"{state = "THROW";}else{state = "STOMP";}
			break;
		}
	
		PrevState = state;
		SubState = "JUMP";
	break;
	case("STAB"):
		state = "IDLE";
	break;
	case("SLASH"):
		state = "IDLE";
	break;
	case("THROW"):
		if SubState != "THROWING"
		{
			SubState = "THROWING";	
		}
	break;
	case("JUMP"):
		state = "IDLE";
	break;
	case("STOMP"):
		state = "IDLE";
	break;
	case("STUNNED"):
		if !Knockback{state = "IDLE";}
	break;
}


