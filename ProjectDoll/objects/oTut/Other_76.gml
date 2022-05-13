if (event_data[? "message"] == "Create_TutScythe")
{
	instance_create(x,y - 60, eTutScythe);
}


if (event_data[? "message"] == "Create_TutSlash1Hitbox")
{
	setEnemyHitbox(self,20, 1,"H",80,80,sTutorialBossSlash1Hitbox,make_color_rgb(255,0,255));
}

if (event_data[? "message"] == "Create_TutSlash2Hitbox")
{
	setEnemyHitbox(self,20, 1,"V",-10,-10,sTutorialBossSlash2Hitbox,make_color_rgb(255,0,255));
}

if (event_data[? "message"] == "Create_TutSlash3Hitbox")
{
	setEnemyHitbox(self,50, 1,"V",70,70,sTutorialBossSlash3Hitbox,make_color_rgb(255,0,255));
}


if (event_data[? "message"] == "Create_TutorialStabbing_Hitbox")
{
	setEnemyHitbox(self,10, 1,"H",70,70,sTutorialBossStabbingHitbox,make_color_rgb(255,0,255));
}



if (event_data[? "message"] == "Create_TutorialStomHitbox")
{
	setEnemyHitbox(self,1, 1,"V",70,70,sTutorialBossStompingHitbox,make_color_rgb(255,0,255));
}



if (event_data[? "message"] == "Create_TutorialBoss_Whip1Hitbox")
{
	setEnemyHitbox(self,1, 1,"N",70,70,sTutorialBossWhip1Hitbox,make_color_rgb(255,0,255));
}

if (event_data[? "message"] == "Create_TutorialBoss_Whip2Hitbox")
{
	setEnemyHitbox(self,1, 1,"N",70,70,sTutorialBossWhip2Hitbox,make_color_rgb(255,0,255));
}

if (event_data[? "message"] == "Create_TutorialBoss_Whip3Hitbox")
{
	setEnemyHitbox(self,1, 1,"N",70,70,sTutorialBossWhip3Hitbox,make_color_rgb(255,0,255));
}

if (event_data[? "message"] == "FlipCheck")
{
	FlipCheck(self);
}


if (event_data[? "message"] == "Damage_Me_Small")
{
	if !visible{Health -= 20;}
}

if (event_data[? "message"] == "Damage_Me_Medium")
{
	if !visible{Health -= 60;}
}

if (event_data[? "message"] == "Damage_Me_Big")
{
	if !visible{Health -= 120;}
}
