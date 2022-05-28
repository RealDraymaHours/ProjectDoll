/// @description 
if visible = true
switch(state)
{
	#region IDLE
	case("IDLE"):
		if distance_to_object(p) > 130
		{
			
			if !Phase2
			{
				rnd = irandom(2);	
				switch(rnd)
				{
					case(0):
						if PrevState == "JUMP"{state = "THROW"; SubState = "THROWSTART"; NoFlip = true;}
						else{state = "JUMP"; SubState = "JUMPSTART";}
					break;
					case(1):
						if PrevState == "THROW"{state = "JUMP" SubState = "JUMPSTART";}else{state = "THROW"; SubState = "THROWSTART"; NoFlip = true;}
					break;

				}
			}
			else
			{
				rnd = irandom(2);	
				switch(rnd)
				{
					case(0):
						if PrevState == "JUMP"{state = "THROW"; SubState = "THROWSTART"; NoFlip = true;}
						else{state = "JUMP"; SubState = "JUMPSTART";}
					break;
					case(1):
						if PrevState == "THROW"{state = "JUMP" SubState = "JUMPSTART";}else{state = "THROW"; SubState = "THROWSTART"; NoFlip = true;}
					break;
					case(2):
						if PrevState == "CRAWL"{state = "HELL" SubState = "HELL"; NoFlip = true;}else{state = "CRAWL"; SubState = "CRAWLSTART"; NoFlip = true;}
					break;
					case(3):
						if PrevState == "HELL"{state = "CRAWL"; SubState = "CRAWLSTART"; NoFlip = true;}else{state = "HELL" SubState = "HELL"; NoFlip = true;}
					break;

				}
			}
			
		}
		else
		{
		
		if Phase2
		{
			rnd = irandom(4);	
				switch(rnd)
				{
					case(0):
						if PrevState == "SLASH"{state = "STAB"; SubState = "STAB1" NoFlip = true;}
						else{state = "SLASH";  SubState = "SLASH1";}
					break;
					case(1):
						if PrevState == "THROW"{state = "JUMP" SubState = "JUMPSTART";}else{state = "THROW"; SubState = "THROWSTART"; NoFlip = true;}
					break;
					case(2):
						if PrevState == "WHIP"{state = "SLASH";  SubState = "SLASH1";}else{state = "WHIP"; SubState = "WHIP"; NoFlip = true;}
					break;
					case(3):
						if PrevState == "IRONMAIDEN"{state = "THROW"; SubState = "THROWSTART"; NoFlip = true;}else{state = "IRONMAIDEN"; SubState = "IRONMAIDEN";}
					break;
					case(4):
						state = "HELL"; SubState = "HELL";
					break;
				}
		}
		else
		{
				rnd = irandom(5);	
				switch(rnd)
				{
					case(0):
						if PrevState == "STAB"{state = "SLASH";  SubState = "SLASH1";}else{state = "STAB"; SubState = "STAB1"; NoFlip = true;}
					break;
					case(1):
						if PrevState == "SLASH"{state = "STAB"; SubState = "STAB1" NoFlip = true;}
						else{state = "SLASH";  SubState = "SLASH1";}
					break;
					case(2):
						if PrevState == "THROW"{state = "JUMP" SubState = "JUMPSTART";}else{state = "THROW"; SubState = "THROWSTART"; NoFlip = true;}
					break;
					case(3):
						if PrevState == "IRONMAIDEN"{state = "THROW"; SubState = "THROWSTART"; NoFlip = true;}else{state = "IRONMAIDEN"; SubState = "IRONMAIDEN";}
					break;
				}
		}			
}
	PrevState = state;
	break;
	#endregion

	case("STAB"):
		state = "IDLE";
		SubState = "IDLE";
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
				SubState = "IDLE";
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
	case("WHIP"):
		state = "IDLE";
		SubState = "IDLE";
	break;
	case("IRONMAIDEN"):
		state = "IDLE";
		SubState = "IDLE";
		depth = oPlayer.depth + 1;
	break;
	case("CRAWL"):
		if SubState == "CRAWLSTART"
		{
			alarm[1] = 250;
			SubState = "CRAWLGOING";
			if x < p.x
			{
				hspeed = 6;
			}
			else
			{
				hspeed = -6;
			}	
		}
		else if SubState == "CRAWLEND"
		{
				state = "IDLE";
				SubState = "IDLE";
		}
	break;
	case("HELL"):
		state = "IDLE";
		SubState = "IDLE";
	break;
}

if ((state = "AFTERGRAB") || (SubState == "AFTERGRAB"))
{
	state = "IDLE";
	SubState = "IDLE";
}
