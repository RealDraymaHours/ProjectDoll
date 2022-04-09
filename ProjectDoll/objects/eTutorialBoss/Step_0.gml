/// @description

switch(state)
{
	case("IDLE"):
		if alarm[1] == -1{alarm[1] = 240; sprite_index = sBlouterIdle;}
	break;
	case("SLAM"):
		sprite_index = sBlouterSlam;
	break;
	case("SPIKE"):
		if ((sprite_index != sBlouterSpikeReset) && (sprite_index != sBlouterSpikeDamage))
		{
			sprite_index = sBlouterSpike;	
		}
	break;
	case("JUMP"):
			
			switch(SubState)
			{
				case("JUMP"):
					if ((sprite_index != sBlouterJumpStart)&&(sprite_index != sBlouterJumpMid)){PlayerX = oPlayer.x}
					if sprite_index != sBlouterJumpMid{sprite_index = sBlouterJumpStart;}
					move_towards_point(PlayerX, StartY -150,12);
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

}



if Health < 1
{
	state = "DEATH"
}
