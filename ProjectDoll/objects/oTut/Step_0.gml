switch(state)
{
	case("IDLE"):
		sprite_index = sTutorialBossIdle;
	break;
	case("STAB"):
		sprite_index = sTutorialBossStabbing;
	break;
	case("SLASH"):
		sprite_index = sTutorialBossSlash;
	break;
	case("THROW"):
		if SubState != "THROWING"
		{
			sprite_index = sTutorialBossThrowStart;
		}
		else
		{
			sprite_index = sTutorialBossThrow;	
		}	
	break;
	case("JUMP"):
		sprite_index = sTutorialBossJump;
	break;
	case("STOMP"):
		sprite_index = sTutorialBossStomping;
	break;
	case("STUNNED"):
		sprite_index = sTutorialBossParried;
	break;
}

if Knockback
{
	state = "STUNNED";
	move_contact_solid(KnockbackDirection, KnockbackStrenght);
	KnockbackStrenght = lerp(KnockbackStrenght,0,0.03);
}


EnemyStepGravity(self);

if (flashAlpha > 0)
{
	flashAlpha -= 0.1;	
}
