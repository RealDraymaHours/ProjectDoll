/// @description DamagePlayer

if other.Parry
{
	
	ParryMelee(other.x,other.y,Caster,self.id);
	other.Parry = false;
	other.state = "RIPOST";
	ShakeCamera(4,8);

}

else if ((!other.Staggered) && (other.state != "DASH"))
{
	if (StatsSet)
	{
		DamagePlayer(Damage);
	}
	
	if KnockbackDir != "N"
	{
		KnockBackPlayer(KnockbackDir, KnockbackAcc, KnockbackFric);	
	}
	
}

