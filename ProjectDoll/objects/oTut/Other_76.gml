/// @description Insert description here
// You can write your code in this editor

if (event_data[? "message"] == "Create_TutScythe")
{
	instance_create(x,y - 60, eTutScythe);
}


if (event_data[? "message"] == "Create_TutSlash1Hitbox")
{
	setEnemyHitbox(self,20, 1,"H",80,80,sTutorialBossSlash1Hitbox);
}

if (event_data[? "message"] == "Create_TutSlash2Hitbox")
{
	setEnemyHitbox(self,20, 1,"V",-10,-10,sTutorialBossSlash2Hitbox);
}

if (event_data[? "message"] == "Create_TutSlash3Hitbox")
{
	setEnemyHitbox(self,50, 1,"V",70,70,sTutorialBossSlash3Hitbox);
}


if (event_data[? "message"] == "Create_TutorialStabbing_Hitbox")
{
	setEnemyHitbox(self,10, 1,"H",70,70,sTutorialBossStabbingHitbox);
}



if (event_data[? "message"] == "Create_TutorialStomHitbox")
{
	setEnemyHitbox(self,1, 1,"V",70,70,sTutorialBossStompingHitbox);
}

