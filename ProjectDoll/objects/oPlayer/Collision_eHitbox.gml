if Parry
{
	state = "IDLE";
	IsAttacking = false;
	Staggered = false;
	
	ParryMelee(x,y,other.Caster,other.id);


	if other.KnockbackDir != "N"
	{
		KnockBackPlayer(other.KnockbackDir, other.KnockbackAcc, other.KnockbackFric);	
	}
	
	Parry = false;
}
else if ((!Staggered) && (state != "DASH"))
{
	if (other.StatsSet)
	{
		DamagePlayer(other.Damage);
	}
	
	if other.KnockbackDir != "N"
	{
		KnockBackPlayer(other.KnockbackDir, other.KnockbackAcc, other.KnockbackFric);	
	}
	
}
