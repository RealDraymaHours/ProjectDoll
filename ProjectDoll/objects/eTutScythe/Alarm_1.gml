/// @description 
if !Parried
{
	oTut.state = "IDLE";	
	oTut.SubState = "IDLE";	
	instance_destroy();	
}
else
{
	oTut.state = "CATCHSCYTHE";
	oTut.SubState = "IDLE";	
	oTut.alarm[8] = 40;
	oTut.Knockback = true;
	oTut.KnockbackStrenght = 1;
	oTut.flashAlpha = 1;
	DamageEnemyOther(oTut,3,30);
	EnemyDamageParticleRage(oTut,10);
	
	
	if image_xscale == 1{oTut.KnockbackDirection = 0;}else{oTut.KnockbackDirection = 180;}
	
	instance_destroy();	
}
