if ((state == "DEATH") || (sprite_index = sPlushDeath))
{
	instance_destroy();	
}

if state == "SLAM"
{
	if sprite_index = sPlushForwardSlamStart
	{
		sprite_index = sPlushForwardSlamEnd;	
		setEnemyHitbox(self,1,1,"N",0,0,sPlushForwardSlamHitBox);
	}
	else
	{
		state = "IDLE";
	}
}
