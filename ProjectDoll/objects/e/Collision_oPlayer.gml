/// @description Contact damage
if ((!oPlayer.Staggered) && (oPlayer.state != "DASH") && (Active))
{	
	if ((oPlayer.state == "PARRY") && (CanParry))
	{
		ParryActive(other.x,other.y,self,StunnedAmount);
	}
	else
	{
		DamagePlayer(1);
	}
	
	if ActiveKnockbackDir != "N"
	{
		KnockBackPlayer(ActiveKnockbackDir, ActiveKnockbackAcc, ActiveKnockbackFric);	
	}
}


