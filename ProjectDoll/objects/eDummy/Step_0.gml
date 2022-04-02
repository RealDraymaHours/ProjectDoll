/// @description 
EnemyStepGravity(self);

if Knockback
{
	EnemyKnockback(self.KnockbackAcc,self.KnockbackFric,self, self.KnockbackDir);
}

if ((Health <= 0) && (state != "DEATH"))
{
	image_index = 0;
	state = "DEATH";
}

if ((state == "DEATH") && (image_index == 7) && (!ReleaseStuff))
{
	repeat(10)
	instance_create(x,y,oOrb);	
}
