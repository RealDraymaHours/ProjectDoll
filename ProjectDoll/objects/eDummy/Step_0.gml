/// @description 
if state != "DEATH"
{
	if Stunned
	{
		state = "STUNNED";	
	}

	if ((Staggered))
	{
		state = "STAGGERED";
	}

	if ((Health <= 0))
	{
		image_index = 0;
		state = "DEATH";
	}

	if (state == "STAGGERED")
	{
		if v <= -1
		{
			sprite_index = sPlushStaggeredUp;	
		}
		else if Staggered
		{
			sprite_index = sPlushStaggeredSide;	
		}
		else
		{
			sprite_index = sPlushNormal;
		}
	}

	switch(state)
	{
		case("IDLE"):
			sprite_index = sPlushNormal;
			EnemyStepGravity(self);
			if alarm[1] == -1{alarm[1] = 120};
		break;
		case("SLAM"):
			h = 0;
			v = 0;
			if ((sprite_index != sPlushForwardSlamStart) && (sprite_index != sPlushForwardSlamEnd))
			{
				image_index = 0;
				sprite_index = sPlushForwardSlamStart;
			}
		break;
		case("WALK"):
			dir = sign(oPlayer.x - x);
			h = (dir * 2);
			v = (min(7,v+0.05));
			if distance_to_object(oPlayer) < 20{alarm[1] = 1;}
			if alarm[1] == -1{alarm[1] = 120};
		break;
		case("JUMP"):
			if alarm[1] == -1{alarm[1] = 1};
		break;
		case("STUNNED"):
			sprite_index = sPlushStunned;
			if alarm[2] == -1{alarm[2] = 30;}
		break;
		case("STAGGERED"):
			EnemyStepGravity(self);
			if !Staggered{state = "IDLE";}
		break;
	}
}
else
{
	sprite_index = sPlushDeath;
}




if Knockback
{
	move_contact_solid(KnockbackDirection, KnockbackStrenght);
	KnockbackStrenght = lerp(KnockbackStrenght,0,0.1);
}


if ((state == "DEATH") && (image_index == 7) && (!ReleaseStuff))
{
	audio_play_sound(PlayerWeaponHit1,10,false);
	ReleaseStuff = true;
	repeat(10)
	instance_create(x,y,oOrb);	
}

