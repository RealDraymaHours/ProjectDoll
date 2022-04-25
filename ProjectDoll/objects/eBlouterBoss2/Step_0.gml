/// @description
if FinisherMeter >= MaxFinishMeter
{
	if state != "STUNNED"{ audio_play_sound(PlayerWeaponHit1,100,false);}
	state = "STUNNED";
}

switch(state)
{
	case("STUNNED"):
		sprite_index = sBlouter2Stunned;
		h = 0;
		v = 0;
		if alarm[2] == -1{alarm[2] = 120;}
	break;
	case("IDLE"):
		if alarm[1] == -1{alarm[1] = 30; sprite_index = sBlouter2Idle;}
		h = 0;
		v = 0;
	break;
	case("SLAM"):
		h = 0;
		v = 0;
		sprite_index = sBlouter2Slam;
	break;
	case("SPIKE"):
		if ((sprite_index != sBlouterSpikeReset) && (sprite_index != sBlouterSpikeDamage) && (sprite_index != sBlouterToPhase2))
		{
			sprite_index = sBlouterSpike;	
		}
	break;
	case("WALK"):
		sprite_index = sBlouterWalk;
		EnemyStepGravity(self);
		dir = sign(oPlayer.x - x);
		h = (dir * 2);
		v = (min(7,v+0.05));
		if distance_to_object(oPlayer) < 20{image_index = 1; state = "SLAM";}
	break;
	case("SLASH"):
		EnemyStepGravity(self);
	break;
	case("JUMP"):		
			switch(SubState)
			{
				case("JUMP"):
					if ((sprite_index != sBlouter2JumpStart)&&(sprite_index != sBlouterJumpMid)){PlayerX = oPlayer.x}
					if sprite_index != sBlouterJumpMid{sprite_index = sBlouter2JumpStart;}
					move_towards_point(PlayerX, StartY -220,8);
					if(position_meeting(PlayerX, StartY - 150, self)){SubState = "BEFOREDOWN"; image_index = 0;}
				break;
				case("BEFOREDOWN"):
					sprite_index =  sBlouterJumpBeforeDown;
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
						vspeed = 12;
					}
				break;
				case("GETUP"):			
					Active = false;
					sprite_index = sBlouter2JumpEnd;
					image_index = 0;
					SubState = "JUMPSPIKE";
				break;
			}	
	break;
	case("GAISER"):
		sprite_index = sBlouter2Gaiser;
	break;

}



if Health < 1
{
	state = "DEATH"
}
