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
	repeat(5)
	{
		instance_create(otherX, otherY, oParryEffect);	
		healeff = instance_create(otherX, otherY, oHealEffect);	
		rageeff = instance_create(otherX, otherY, oRageEffect);	
		
		healeff.image_blend = selfID.EffectColor;
		rageeff.image_blend = selfID.EffectColor;
		
		healeff.EffectColor = selfID.EffectColor;
		rageeff.EffectColor = selfID.EffectColor;
	}
	
	Caster.FinisherMeter += selfID.StunnedAmount;
	Caster.Parried = true;
	Caster.flashAlpha = 1;
	audio_play_sound(PlayerParryWIP,1,false);

	global.state = "RIPOST";
	oPlayer.sprite_index = sPlayerTearRipost;
	global.Parry = false;
	oPlayer.IsAttacking = false;
	oPlayer.Staggered = false;

	//oPlayer.alarm[3] = 1;
	instance_destroy(selfID);
}

function ParryEffect(otherX, otherY, Color)
{
	audio_play_sound(PlayerParryWIP,1,false);
	
	repeat(5)
	{
		instance_create(otherX, otherY, oParryEffect);	
		healeff = instance_create(otherX, otherY, oHealEffect);	
		rageeff = instance_create(otherX, otherY, oRageEffect);	
		
		healeff.image_blend = Color;
		rageeff.image_blend = Color;
		healeff.EffectColor = Color;
		rageeff.EffectColor = Color;
	}
	
	global.state = "RIPOST";
	oPlayer.sprite_index = sPlayerTearRipost;
	global.Parry = false;
	oPlayer.IsAttacking = false;
	oPlayer.Staggered = false;

	
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
