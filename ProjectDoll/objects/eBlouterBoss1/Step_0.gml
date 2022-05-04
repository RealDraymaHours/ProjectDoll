/// @description
if FinisherMeter >= MaxFinishMeter
{
	if state != "STUNNED"{ audio_play_sound(PlayerWeaponHit1,100,false);}
	state = "STUNNED";
}

switch(state)
{
	case("STUNNED"):
		sprite_index = sBlouterStunned;
		Active = false;
		if alarm[2] == -1{alarm[2] = 120;}
	break;
	case("IDLE"):
		EnemyStepGravity(self);
		if alarm[1] == -1{alarm[1] = 30; sprite_index = sBlouterIdle;}
		h = 0;
		v = 0;
		Active = false;
	break;
	case("SLAM"):
		h = 0;
		v = 0;
		sprite_index = sBlouterSlam;
	break;
	case("SPIKE"):
		if ((sprite_index != sBlouterSpikeReset) && (sprite_index != sBlouterSpikeDamage))
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
		if distance_to_object(oPlayer) < 5{image_index = 1; state = "SLAM";}
	break;
	case("JUMP"):		
			switch(SubState)
			{
				case("JUMP"):
					if ((sprite_index != sBlouterJumpStart)&&(sprite_index != sBlouterJumpMid)){PlayerX = oPlayer.x}
					if sprite_index != sBlouterJumpMid{sprite_index = sBlouterJumpStart;}
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
					sprite_index = sBlouterJumpEnd;
					image_index = 0;
					SubState = "WAITFOREND";
				break;
			}	
	break;
	case("GAISER"):
		sprite_index = sBlouterGaiser;
	break;

}



if ((Health < 1))
{
	h = 0;
	v = 0;
	hspeed = 0;
	vspeed = 0;
	if(state != "DEATH")
	{
		state = "DEATH"
		image_index = 0;
		sprite_index = sBlouterToPhase2;
	}
	
	EnemyStepGravity(self);
	
}
