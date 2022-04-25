if !other.Staggered
{

	if other.state == "PARRY"
	{
		oPlayer.state = "STUNNED";
		instance_destroy();	
	}
	
	EnemyDamageParticleCotton(other);
	
	if ((global.Mana <= global.MaxMana))
	{
		global.Mana += WrathGain;	
	}
}