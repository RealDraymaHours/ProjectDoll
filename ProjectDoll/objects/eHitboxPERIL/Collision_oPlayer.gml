/// @description DamagePlayer
if !other.Staggered
{
	DamagePlayer(Damage);

	
	if KnockbackDir != "N"
	{
		KnockBackPlayer(KnockbackDir, KnockbackAcc, KnockbackFric);	
	}
	
	switch(sprite_index)
	{
		case(sTutorialBossIronMaidenHitbox):
			other.x = oTut.x;
			other.y = oTut.y;
		break;
	}
}

