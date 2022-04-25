/// @description 
if (event_data[? "message"] == "Blouter_Forward")
{
	if image_xscale < 0.9
	{
		EnemyKnockback(20,20,self,"H")
	}
	else
	{
		EnemyKnockback(-20,20,self,"H")
	}

}

if (event_data[? "message"] == "Create_BlouterSlam_Hitbox")
{
	setEnemyHitbox(self,301, 1,"V",70,70,sBlouterSlamHitbox);
}

if (event_data[? "message"] == "Blouter_Gaiser_Release")
{
	repeat(10)
	{
		Shroom = instance_create(x-15,y-25,eTutorialBall);	
		Shroom.xspd = random_range(-3,3);
		Shroom.yspd = random_range(-5,-10);
	}
}


