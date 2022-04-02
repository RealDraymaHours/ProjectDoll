// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setPlayerHitbox(PlayerX,PlayerY,Damage,Stagger, WrathGain,KnockbackDirection, KnockbackFric, KnockbackAcc, Break, HitBoxSprite)
{
	tempHitBox = instance_create(PlayerX, PlayerY, oPlayerHitbox);
	
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

function setEnemyHitbox(EnemyX,EnemyY,Damage,Knockback, HitBoxSprite)
{
	
}