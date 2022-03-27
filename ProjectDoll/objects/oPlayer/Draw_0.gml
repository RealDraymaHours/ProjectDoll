
sIdle = sPlayerSpiderIdle;
sRun = sPlayerSpiderRun;
sJumpD = sPlayerSpiderJumpD;
sJumpM = sPlayerSpiderJumpM;
sJumpU = sPlayerSpiderJumpU;
sSlide = sPlayerSpiderSlide;

sLCombo1 = sPlayerSpiderBaseCombo1;
sLCombo2 = sPlayerSpiderBaseCombo2;
sLCombo3 = sPlayerSpiderBaseCombo3;
//sParry = sPlayerParry;
//sDeath = sPlayerDeath;

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
	case "LATTACK":
		switch(Combo)
		{
			case(1):
				sprite_index = sLCombo1;
			break;
			case(2):
				sprite_index = sLCombo2;
			break;
			case(3):
				sprite_index = sLCombo3;
			break;
		}

	break;

}

// Draw player

if global.Staggered = false
{

	draw_sprite_ext(sprite_index, image_index, x, y, facing * 1, 1, 0, c_white, image_alpha);
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