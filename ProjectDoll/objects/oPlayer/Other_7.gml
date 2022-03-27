/// @description Combo's
if IsAttacking
{
	if Combo == 2
	{
		Combo = 0;
		IsAttacking = false;
		state = "IDLE";
	}
	else
	{
		Combo++;
		IsAttacking = false;
		state = "IDLE";
		alarm[2] = 10;
	}
}
