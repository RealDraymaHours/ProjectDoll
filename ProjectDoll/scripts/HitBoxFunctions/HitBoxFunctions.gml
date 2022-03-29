// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setPlayerHitbox(PlayerX,PlayerY,Damage,Knockback, Break, HitBoxSprite)
{
	tempHitBox = instance_create(PlayerX, PlayerY, oPlayerHitbox);
	
	tempHitBox.Damage = Damage;
	tempHitBox.knockback = Knockback;
	tempHitBox.Break = Break;
	tempHitBox.MySprite = HitBoxSprite; 
	
	tempHitBox.XS = oPlayer.XS;
	tempHitBox.YS = oPlayer.YS;
	tempHitBox.IA = oPlayer.dir;
	
	tempHitBox.StatsSet = true; 
}

function setEnemyHitbox(EnemyX,EnemyY,Damage,Knockback, HitBoxSprite)
{
	
}