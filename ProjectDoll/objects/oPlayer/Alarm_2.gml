/// @description Reset Combo
if ((!IsAttacking) && (onGround))
{
	ComboReset();
	ComboFinisher = false;
}
else
{
	alarm[2] = 30;
}