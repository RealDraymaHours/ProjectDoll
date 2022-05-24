if visible

if ((!Recovery) && (FinisherMeter >= MaxFinishMeter))
{
	if state != "STUNNED"{audio_play_sound(PlayerWeaponHit1,100,false);}
	FinisherMeter = MaxFinishMeter;
	state = "STUNNED";
	SubState = "STUNNED";
	sprite_index = sTutorialBossParried;
	instance_destroy(eTutScythe);
	Recovery = true;
}
else
{
	if ((Parried) && (state != "STUNNED")){state = "PARRIED";}
}

if ((Recovery) && (FinisherMeter <= 0)){image_index = 0; state = "IDLE"; SubState = "IDLE"; Recovery = false;}

if state != "STUNNED"
{
		switch(state)
		{
			case("IDLE"):
				sprite_index = sTutorialBossIdle;
				hspeed = 0;
				vspeed = 0;
				NoFlip = false;
			break;
			case("STAB"):
				sprite_index = sTutorialBossStabbing;
			break;
			case("SLASH"):
				NoFlip = true;
				switch(SubState)
				{
					case("SLASH1"):
						sprite_index = sTutorialBossSlash1;
					break;
					case("SLASH2"):
						sprite_index = sTutorialBossSlash2;
					break;
					case("SLASH3"):
						sprite_index = sTutorialBossSlash3;
					break;	
				}
			break;
			case("THROW"):
				if SubState != "THROWING"
				{
					sprite_index = sTutorialBossThrowStart;
				}
				else
				{
					sprite_index = sTutorialBossThrow;	
				}	
			break;
			case("JUMP"):		
					switch(SubState)
					{
						case("JUMPSTART"):
							PlayerX = oPlayer.x;
							sprite_index = sTutorialBossJumpStart;
						break;
						case("JUMP"):
						sprite_index = sTutorialBossJump;
							move_towards_point(PlayerX, StartY -180,8);
							if(position_meeting(PlayerX, StartY - 180, self)){SubState = "BEFOREDOWN"; image_index = 0;}
						break;
						break;
						case("BEFOREDOWN"):
							sprite_index =  sTutorialBossJumpToDown;
							hspeed = 0;
							vspeed = 0;
						break;
						case("DOWNWARDS"):				
							if (place_meeting(self.x,self.y + 1,oBlockNOWALL)){
								vspeed = 0;
								y = StartY;
								Active = false;
								SubState = "GETUP";
							}
							else
							{
								ActiveKnockbackAcc = 70;
								ActiveKnockbackFric = 70;
								ActiveKnockbackDir = "V"
								Active = true;;					
								vspeed = 18;
							}
						break;
						case("GETUP"):			
							Active = false;
							sprite_index = sTutorialBossIdle;
							image_index = 0;
							SubState = "WAITFOREND";
						break;
					}	
			case("STOMP"):
				switch(SubState)
				{		
					case("STOMPSTART"):
						sprite_index = sTutorialBossStompingStart;
					break;
					case("STOMP"):
						if distance_to_object(oPlayer) < 1{if alarm[1] == -1{ alarm[1] = 20; NoFlip = true;}};
						sprite_index = sTutorialBossStomping;
						move_towards_point(oPlayer.x,y,4);
					break;
					case("STOMPEND"):
						sprite_index = sTutorialBossStompingEnd;
					break;
				}
			break;
			case("CATCHSCYTHE"):
				sprite_index = sTutorialBossParried;
			break;
			
			case("WHIP"):
				sprite_index = sTutorialBossWhip;
			break;

			case("PARRIED"):
				switch(SubState)
				{
					case("SLASH1"):
						sprite_index = sTutorialBossSlash1Parried;
					break;
					case("SLASH2"):
						sprite_index = sTutorialBossSlash2Parried;
					break;
					case("SLASH3"):
						sprite_index = sTutorialBossSlash3Parried;
					break;
					case("STAB1"):
						image_index = 1;
						SubState = "STAB2";
						state = PrevState;
						Parried = false;
					break;
					case("STAB2"):
						image_index = 1;
						SubState = "STAB3";
						state = PrevState;
						Parried = false;
					break;
					case("STAB3"):
						image_index = 1;
						SubState = "STAB4";
						state = PrevState;
						Parried = false;
					break;
					case("STAB4"):
						SubState = "IDLE";
						state = PrevState;
						Parried = false;
						image_index = 10;
					break;
					case("WHIP"):
						state = PrevState;
						SubState = "WHIP";
						Parried = false;
					break;
				}
			break;
			case("GRABBED"):
				sprite_index = sTutorialBossIdle;
			break;
			case("AFTERGRAB"):
				sprite_index = sTutorialBossGrabGetUp;
			break;
		}
	if Knockback
	{
		state = "CATCHSCYTHE";
		move_contact_solid(KnockbackDirection, KnockbackStrenght);
		KnockbackStrenght = lerp(KnockbackStrenght,0,0.03);
	}

}
else
{
		y = StartY;
		sprite_index = sTutorialBossStunned;
		hspeed = 0;
		vspeed = 0;
}





if (flashAlpha > 0)
{
	flashAlpha -= 0.1;	
}
