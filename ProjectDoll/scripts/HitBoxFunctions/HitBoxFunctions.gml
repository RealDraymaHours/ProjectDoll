// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setPlayerHitbox(Damage,Stagger, WrathGain,KnockbackDirection, KnockbackStrenght, KnockbackLength, Break, HitBoxSprite)
{
	tempHitBox = instance_create(oPlayer.x, oPlayer.y, oPlayerHitbox);
	
	tempHitBox.Damage = Damage;
	tempHitBox.KnockbackStrenght = KnockbackStrenght;
	tempHitBox.KnockbackDirection = KnockbackDirection;
	tempHitBox.KnockbackLenght = KnockbackLength;	
	tempHitBox.Break = Break;
	tempHitBox.MySprite = HitBoxSprite; 
	tempHitBox.Stagger = Stagger;
	tempHitBox.WrathGain = WrathGain;
	
	tempHitBox.XS = oPlayer.XS;
	tempHitBox.YS = oPlayer.YS;
	tempHitBox.IA = oPlayer.dir;
	
	tempHitBox.StatsSet = true; 
}

function setPlayerGrabHitbox()
{
	grabHit = instance_create(oPlayer.x,oPlayer.y,oPlayerGrabHitbox);
	
	if oPlayer.facing = oPlayer.RIGHT
	{
		grabHit.image_xscale = 1;
	}
	else
	{
		grabHit.image_xscale = -1;
	}
	
}

function setEnemyHitbox(Enemy, StunnedAmount, Damage,KnockBackDir, KnockbackAcc, KnockbackFric, HitBoxSprite, EffectColor)
{
	tempHitBox = instance_create(Enemy.x, Enemy.y, eHitbox);
	
	tempHitBox.StunnedAmount = StunnedAmount;
	tempHitBox.Damage = Damage;
	tempHitBox.sprite_index = HitBoxSprite;
	tempHitBox.image_xscale = Enemy.image_xscale;
	tempHitBox.image_yscale = Enemy.image_yscale;
	tempHitBox.Caster = Enemy;
	
	tempHitBox.KnockbackAcc = KnockbackAcc;
	tempHitBox.KnockbackFric = KnockbackFric;
	tempHitBox.KnockbackDir = KnockBackDir;
	
	tempHitBox.EffectColor = EffectColor;
	
	tempHitBox.StatsSet = true;
}