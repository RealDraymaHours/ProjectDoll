/// @description Combo's
if IsAttacking
{
	if ComboEnd()
	{
		if onGround
		{
			ComboReset();
		}		
		
		ComboFinisher = true;
		IsAttacking = false;
		state = "IDLE";
	}
	else
	{
		//ComboAdd(3,1);
		IsAttacking = false;
		state = "IDLE";
		alarm[2] = 30;
	}
}

if ((state == "PARRY") || (state == "PARRIED"))
{
	state = "IDLE";	
}

if sprite_index == sPlayerTearRipost{sprite_index = sPlayerTearIdle;}
