
sIdle = sPlayerTearIdle;
sRun = sPlayerTearRun;
sJumpD = sPlayerTearJumpD;
sJumpM = sPlayerTearJumpM;
sJumpU = sPlayerTearJumpU;
sSlide = sPlayerTearSlide;
sDash = sPlayerTearDash;
sStaggered = sPlayerTearStaggered;

sBase1 = sPlayerCyanBaseCombo1;
sBase2 = sPlayerCyanBaseCombo2;
sBase3 = sPlayerCyanBaseCombo3;

sGroundUp = sPlayerTearGroundUp;
sAirUp = sPlayerCyanAirNeutral;


draw_text_color(x-100,y-100,state,c_white,c_white,c_white,c_white,1);
//sParry = sPlayerParry;
//sDeath = sPlayerDeath;

//draw_text(x, y - 64, state);

switch (state) {
    case "IDLE": 
		if sprite_index != sPlayerTearRipost{sprite_index = sIdle;}     
    break;
    
    case "RUN": 
        sprite_index = sRun;
    break;
	
	case "DASH":
		sprite_index = sDash;
	break;
    
    case "JUMP":
        // Mid jump   
        if (!(place_meeting(x, y + 2, oParSolid) && v != 0) && v >= -1.0 && v <= 1.0) {  
            sprite_index = sJumpM;  
       } else { 
            // Rise + fall
            if (v <= 0)  
                sprite_index = sJumpU;  
            else
                sprite_index = sJumpD;
        }   
        // When against a wall   
        if (cRight || cLeft)
            sprite_index = sSlide;  
    break;
	case "PARRY":
		if sprite_index != sPlayerTearRipost{sprite_index = sParry;}
	break;
	case "PARRIED":
		sprite_index = sStaggered;
	break;
	case "ATTACK":
		if ComboCounter != -1
		{
			switch(ComboArray[ComboCounter])
			{
				case(1):
					switch(ComboCounter)
					{
						case(0):
							sprite_index = sBase1;
						break;
						case(1):
							sprite_index = sBase2;
						break;
						case(2):
							sprite_index = sBase3;
						break;
					}
				break;
				case(2):
				if !onGround
				{
					sprite_index = sAirUp;
					ComboForceEnd();
				}
				else
				{
					sprite_index = sGroundUp;
					ComboReset();
				}
				break;	
			}
		}
	break;
	case("GRAB"):
		sprite_index = sPlayerGrab;
		ComboForceEnd();
	break;
}
// Draw player

if !Staggered
{	
	if state == "DASH"
	{
		
		draw_sprite_ext(sprite_index, image_index, x, y, 1, facing, dir, c_white, image_alpha);
	}
	else
	{
		draw_sprite_ext(sprite_index, image_index, x, y, facing * 1, 1, dir, c_white, image_alpha);
		YS = 1;
		XS = facing * 1
		dir = 0;
	}
}
else
{
	if (onGround)
	draw_sprite_ext(sStaggered, image_index, x, y + (16 - 16 * yscale) * 0.25, facing * xscale, yscale, 0, c_purple, image_alpha);    
	else
	draw_sprite_ext(sStaggered, image_index, x, y, facing * xscale, yscale, 0, c_purple, image_alpha);
}

DrawTheGlow(sprite_index);






/*
	if (onGround)
	draw_sprite_ext(sprite_index, image_index, x, y + (16 - 16 * yscale) * 0.25, facing * xscale, yscale, 0, c_white, image_alpha);    
	else
	
	if Parry
{
	DrawParryGlow();
}
