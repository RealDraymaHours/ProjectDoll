// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyDamageParticleCotton(EnemyX,EnemyY)
{
	repeat(irandom_range(1,5))
	with (instance_create(EnemyX + random_range(-8, 8), EnemyY, oParticleEnemyCotton))
	if oPlayer.facing == oPlayer.RIGHT
	{
		direction = 0 + random_range(-45, 45);
	}
	else
	{
		direction = 180 + random_range(-45, 45);
	}

}