/// @description Contact damage
if ((!oPlayer.Staggered) && (oPlayer.state != "DASH") && (Active))
{
	DamagePlayer(1);
	
	if ActiveKnockbackDir != "N"
	{
		KnockBackPlayer(ActiveKnockbackDir, ActiveKnockbackAcc, ActiveKnockbackFric);	
	}
}


