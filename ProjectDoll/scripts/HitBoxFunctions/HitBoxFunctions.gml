// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setPlayerHitbox(Damage,Stagger, WrathGain,KnockbackDirection, KnockbackFric, KnockbackAcc, Break, HitBoxSprite)
{
	tempHitBox = instance_create(oPlayer.x, oPlayer.y, oPlayerHitbox);
	
	tempHitBox.Damage = Damage;
	tempHitBox.KnockbackAcc = KnockbackAcc;
	tempHitBox.KnockbackFric = KnockbackFric;
	tempHitBox.KnockbackDir = KnockbackDirection;
	tempHitBox.Break = Break;
	tempHitBox.MySprite = HitBoxSprite; 
	tempHitBox.Stagger = Stagger;
	tempHitBox.WrathGain = WrathGain;
	
	tempHitBox.XS = oPlayer.XS;
	tempHitBox.YS = oPlayer.YS;
	tempHitBox.IA = oPlayer.dir;
	
	tempHitBox.StatsSet = true; 
}

function setEnemyHitbox(Enemy, Damage,KnockBackDir, KnockbackAcc, KnockbackFric, HitBoxSprite)
{
	tempHitBox = instance_create(Enemy.x, Enemy.y, eHitbox);
	
	tempHitBox.Damage = Damage;
	tempHitBox.sprite_index = HitBoxSprite;
	tempHitBox.Xscale = Enemy.image_xscale;
	tempHitBox.Yscale = Enemy.image_yscale;
	tempHitBox.Caster = Enemy;
	tempHitBox.KnockbackAcc = KnockbackAcc;
	tempHitBox.KnockbackFric = KnockbackFric;
	tempHitBox.KnockbackDir = KnockBackDir;
	tempHitBox.StatsSet = true;
}