
sIdle = sPlayerSpiderIdle;
sRun = sPlayerSpiderRun;
sJumpD = sPlayerSpiderJumpD;
sJumpM = sPlayerSpiderJumpM;
sJumpU = sPlayerSpiderJumpU;
sSlide = sPlayerSpiderSlide;


//sParry = sPlayerParry;
//sDeath = sPlayerDeath;
		var ComboString = string(ComboArray[0]) +  string(ComboArray[1]) +  string(ComboArray[2]);
		draw_text(x, y - 80, ComboString);
		draw_text(x, y - 180, state);


switch (state) {
    case "IDLE": 
        sprite_index = sIdle;
    break;
    
    case "RUN": 
        sprite_index = sRun;
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
						sprite_index = sPlayerSpiderBaseCombo1;
					break;
					case(1):
						sprite_index = sPlayerSpiderBaseCombo2;
					break;
					case(2):
						sprite_index = sPlayerSpiderBaseCombo3;
					break;
				}
			}
			else if (ComboArray[ComboCounter] == 2)
			{
				sprite_index = sPlayerSpiderBaseCombo4;
			}
		}

	break;

}

// Draw player

if global.Staggered = false
{	
	if ((IsAttacking) && (!onGround))
	{
		if facing == RIGHT
		{
			if mouse_x >= x
			{
				draw_sprite_ext(sprite_index, image_index, x, y, facing * 1, 1, dir, c_white, image_alpha);
				YS = 1;
				XS = facing * 1
			}
			else
			{
				draw_sprite_ext(sprite_index, image_index, x, y, facing * 1, -1, dir, c_white, image_alpha);
				YS = -1;
				XS = facing * 1

			}
			
		}
		else
		{
			if mouse_x >= x
			{
				draw_sprite_ext(sprite_index, image_index, x, y, facing * -1, 1, dir, c_white, image_alpha);
				YS = 1;
				XS = facing * -1
			}
			else
			{
				draw_sprite_ext(sprite_index, image_index, x, y, facing * -1, -1, dir, c_white, image_alpha);
				YS = -1;
				XS = facing * -1
			}
		}
		
	}
	else
	{
		draw_sprite_ext(sprite_index, image_index, x, y, facing * 1, 1, 0, c_white, image_alpha);
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