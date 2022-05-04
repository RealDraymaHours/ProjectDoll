function ParryProjectileReverse(mx,my,sx,sy){

repeat(20)
{
//	instance_create(xp, yp, obj_ParryHit);
}

audio_play_sound(PlayerParryWIP,1,false);

oPlayer.Parry = false;
move_towards_point(sx,sy,8);
Active= true;
}

function ParryProjectileDestroy(OtherX,OtherY,selfID)
{
	repeat(10)
	{
		instance_create(OtherX, OtherY, obj_ParryHit);	
	}
	audio_play_sound(PlayerParryWIP,1,false);
	oPlayer.Parry = false;
	instance_destroy(selfID);
	
	if global.Mana != global.MaxMana
	{
		global.Mana += 1;	
	}
}

function ParryMelee(otherX,otherY,Caster,selfID)
{
	repeat(10)
	{
		instance_create(otherX, otherY, oParryEffect);	
		instance_create(otherX, otherY, oHealEffect);	
		instance_create(otherX, otherY, oRageEffect);	
	}
	
	Caster.FinisherMeter += selfID.StunnedAmount;
	Caster.Parried = true;
	Caster.flashAlpha = 1;
	audio_play_sound(PlayerParryWIP,1,false);

	global.state = "IDLE";
	global.Parry = false;
	oPlayer.IsAttacking = false;
	oPlayer.Staggered = false;
	sprite_index = oPlayer.sIdle;

	//oPlayer.alarm[3] = 1;
	instance_destroy(selfID);
}

function ParryEffect(otherX, otherY)
{
	audio_play_sound(PlayerParryWIP,1,false);
	
	repeat(10)
	{
		instance_create(otherX, otherY, oParryEffect);	
		instance_create(otherX, otherY, oHealEffect);	
		instance_create(otherX, otherY, oRageEffect);	
	}
	
	global.state = "IDLE";
	global.Parry = false;
	oPlayer.IsAttacking = false;
	oPlayer.Staggered = false;
	oPlayer.sprite_index = oPlayer.sIdle;

	
}

function ParryActive(otherX,otherY,Caster,StunnedAmount)
{
	repeat(10)
	{
		instance_create(otherX, otherY, oParryEffect);	
		instance_create(otherX, otherY, oHealEffect);	
		instance_create(otherX, otherY, oRageEffect);	
	}
	
	Caster.FinisherMeter += StunnedAmount;

	audio_play_sound(PlayerParryWIP,1,false);
	global.Health += 1;
	Caster.Stunned = true;

	//oPlayer.alarm[3] = 1;
}
