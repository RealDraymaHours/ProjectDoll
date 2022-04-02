
sIdle = sPlayerSpiderIdle;
sRun = sPlayerSpiderRun;
sJumpD = sPlayerSpiderJumpD;
sJumpM = sPlayerSpiderJumpM;
sJumpU = sPlayerSpiderJumpU;
sSlide = sPlayerSpiderSlide;
sDash = sPlayerSpiderDash;

sBase1 = sPlayerSpiderBaseCombo1;
sBase2 = sPlayerSpiderBaseCombo2;
sBase3 = sPlayerSpiderBaseCombo3;

sHeavy1 = sPlayerSpiderHeavyCombo1;
sHeavy2 = sPlayerSpiderHeavyCombo2;
sHeavy2 = sPlayerSpiderHeavyCombo2;

sRA1 = sPlayerSpiderRACombo1;
sRA2 = sPlayerSpiderRACombo2;
sRA3 = sPlayerSpiderRACombo1;
sRA4 = sPlayerSpiderRACombo2;


//sParry = sPlayerParry;
//sDeath = sPlayerDeath;
		draw_text(x, y - 80, onGround);
		draw_text(x, y - 120, facing);		
		draw_text(x, y - 180, dir);


switch (state) {
    case "IDLE": 
        sprite_index = sIdle;
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
	case "ATTACK":

		if ComboCounter != -1
		{
			if (ComboArray[ComboCounter] == 1)
			{
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
			}
			else
			{
				if !onGround
				{
					switch(ComboCounter)
					{
						case(0):							
							sprite_index = sHeavy2;
							ComboForceEnd();
						break;
						case(1):
							sprite_index = sHeavy2;
							ComboForceEnd();
						break;
						case(2):
							sprite_index = sHeavy2;
							ComboForceEnd();							
						break;
					}
				}
				else
				{
					sprite_index = sHeavy1;
				}
			}
		}
	break;
	case("RAGEART"):
	{
		if onGround
		{
			sprite_index = sRA1;	
		}
		else
		{
			sprite_index = sRA2;
		}
				
	}

}

// Draw player

if global.Staggered = false
{	
	if ((IsAttacking) && (!onGround))
	{
		if facing == RIGHT
		{
			draw_sprite_ext(sprite_index, image_index, x, y, facing * 1, 1, dir, c_white, image_alpha);
			YS = 1;
			XS = facing * 1
		}
		else
		{
			draw_sprite_ext(sprite_index, image_index, x, y, facing * -1, -1, dir, c_white, image_alpha);
			YS = -1;
			XS = facing * -1	
		}
		
	}
	else if state == "DASH"
	{
		draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, dir, c_white, image_alpha);
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
	draw_sprite_ext(sprite_index, image_index, x, y + (16 - 16 * yscale) * 0.25, facing * xscale, yscale, 0, c_purple, image_alpha);    
	else
	draw_sprite_ext(sprite_index, image_index, x, y, facing * xscale, yscale, 0, c_purple, image_alpha);
}






/*
	if (onGround)
	draw_sprite_ext(sprite_index, image_index, x, y + (16 - 16 * yscale) * 0.25, facing * xscale, yscale, 0, c_white, image_alpha);    
	else