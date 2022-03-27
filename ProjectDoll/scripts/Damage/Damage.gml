function DamagePlayer(Amount)
{
	audio_play_sound(PlayerDamage,10,false);
	if !global.Staggered
	{
		global.Health -= Amount;
		with (oCamera) {
			ShakeCamera(8,2);
		}
	
		repeat(Amount)
		{
			instance_create(otherX, otherY, obj_SoulHit);	
		}	
		global.Staggered = true;
	}	
}

function DamageEnemy(Enemy, Amount)
{
	audio_play_sound(PlayerDamage,10,false);
	if !global.Staggered
	{
		global.Health -= Amount;
		with (oCamera) {
			ShakeCamera(8,2);
		}
	
		repeat(Amount)
		{
			instance_create(otherX, otherY, obj_SoulHit);	
		}	
		global.Staggered = true;
	}	
}