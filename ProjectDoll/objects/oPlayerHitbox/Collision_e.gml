if !other.Staggered
{

	if other.state == "PARRY"
	{
		oPlayer.state = "STUNNED";
		instance_destroy();	
	}
	else if other.Poise < Break
	{
		other.KnockbackDir = KnockbackDir;
		other.KnockbackAcc = KnockbackAcc;
		other.KnockbackFric = KnockbackFric;
		other.knockback = true;
	
		other.FinisherMeter -= Stagger;
		
		EnemyDamageParticleCotton(other.x,other.y);
	}
	else
	{
		other.FinisherMeter -= Stagger;
		EnemyDamageParticleCotton(other.x,other.y);
	}
	
	if ((global.Mana <= global.MaxMana))
	{
		global.Mana += WrathGain;	
	}
}