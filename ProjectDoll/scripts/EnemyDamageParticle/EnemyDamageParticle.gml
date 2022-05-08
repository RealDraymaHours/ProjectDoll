// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyDamageParticle(Enemy)
{
	repeat((5))
	{
		Thing = instance_create(Enemy.x + random_range(-8, 8), Enemy.y, oHitEffect);
	
		with (Thing)
		{
			if oPlayer.facing == oPlayer.RIGHT
			{
				direction = 0 + random_range(-45, 45);
			}
			else
			{
				direction = 180 + random_range(-45, 45);
			}
		}
		Thing.image_blend = Enemy.Color;
	}
	
}

function EnemyDamageParticleRage(Enemy, Rage)
{
	repeat(Rage)
	{
		Thing = instance_create(Enemy.x + random_range(-8, 8), Enemy.y, oHitEffect);
	
		with (Thing)
		{
			if oPlayer.facing == oPlayer.RIGHT
			{
				direction = 0 + random_range(-45, 45);
			}
			else
			{
				direction = 180 + random_range(-45, 45);
			}
		}
		Thing.image_blend = Enemy.Color;
	}
	
}
