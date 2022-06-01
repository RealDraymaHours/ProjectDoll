/*
if (event_data[? "message"] == "Create_TutScythe")
{
	instance_create(x,y - 60, eTutScythe);
}
*/

if event_data[?"event_type"] == "sprite event"
{
	switch(event_data[? "message"])
	{
		case("Create_TutScythe"):
			instance_create(x,y - 60, eTutScythe);
		break;
		case("Create_TutSlash1Hitbox"):
			setEnemyHitbox(self,20, 1,"H",80,80,sTutorialBossSlash1Hitbox,make_color_rgb(255,0,255));
		break;
		case("Create_TutSlash2Hitbox"):
			setEnemyHitbox(self,20, 1,"V",-10,-10,sTutorialBossSlash2Hitbox,make_color_rgb(255,0,255));
		break;
		case("Create_TutSlash3Hitbox"):
			setEnemyHitbox(self,50, 1,"V",70,70,sTutorialBossSlash3Hitbox,make_color_rgb(255,0,255));
			ShakeCamera(4,12);
		break;
		case("Create_TutorialStabbing_Hitbox"):
			setEnemyHitbox(self,10, 1,"H",70,70,sTutorialBossStabbingHitbox,make_color_rgb(255,0,255));
		break;
		case("Create_TutorialBoss_Whip1Hitbox"):
			setEnemyHitbox(self,1, 1,"N",70,70,sTutorialBossWhip1Hitbox,make_color_rgb(255,0,255));
		break;
		case("Create_TutorialBoss_Whip2Hitbox"):
			setEnemyHitbox(self,1, 1,"N",70,70,sTutorialBossWhip2Hitbox,make_color_rgb(255,0,255));
		break;
		case("Create_TutorialBoss_Whip3Hitbox"):
			setEnemyHitbox(self,1, 1,"N",70,70,sTutorialBossWhip3Hitbox,make_color_rgb(255,0,255));
		break;
		case("Create_TutorialBoss_IronMaidenHitbox"):
			setEnemyHitboxPERIL(self,1,"N",70,70,sTutorialBossIronMaidenHitbox);
			depth = oPlayer.depth - 1;
			ShakeCamera(4,12);
		break;
		case("Create_TutorialBoss_CrawlHitbox"):
			setEnemyHitboxPERIL(self,1,"N",70,70,sTutorialBossCrawlGoingHitbox);
		break;
		case("Create_TutorialBoss_HellBullet"):
		
		for(var i = 0; i < 9; i++)
		{
			bullet = instance_create(x-12,y-200,oTutBullet);
			
			switch(Bullets)
			{
				case(0):
					switch(i)
					{
						case(0):
							bullet.image_angle = 190;
						break;

						case(1):
							bullet.image_angle = 210;
						break;

						case(2):
							bullet.image_angle = 230;
						break;

						case(3):
							bullet.image_angle = 250;
						break;

						case(4):
							bullet.image_angle = 270;
						break;

						case(5):
							bullet.image_angle = 290;
						break;

						case(6):
							bullet.image_angle = 310;
						break;

						case(7):
							bullet.image_angle = 330;
						break;

						case(8):
							bullet.image_angle = 350;
						break;

					}
				break;
				case(1):
					switch(i)
					{
						case(0):
							bullet.image_angle = 195;
						break;

						case(1):
							bullet.image_angle = 215;
						break;

						case(2):
							bullet.image_angle = 235;
						break;

						case(3):
							bullet.image_angle = 255;
						break;

						case(4):
							bullet.image_angle = 275;
						break;

						case(5):
							bullet.image_angle = 295;
						break;

						case(6):
							bullet.image_angle = 315;
						break;

						case(7):
							bullet.image_angle = 335;
						break;

						case(8):
							bullet.image_angle = 355;
						break;



					}
				break;
				case(2):
					switch(i)
					{
						case(0):
							bullet.image_angle = 190;
						break;
						case(1):
							bullet.image_angle = 210;
						break;

						case(2):
							bullet.image_angle = 230;
						break;

						case(3):
							bullet.image_angle = 250;
						break;

						case(4):
							bullet.image_angle = 270;
						break;

						case(5):
							bullet.image_angle = 290;
						break;

						case(6):
							bullet.image_angle = 310;
						break;

						case(7):
							bullet.image_angle = 330;
						break;

						case(8):
							bullet.image_angle = 350;
						break;


					}
				break;

			}
			if Bullets == 2{Bullets = 0;}else{Bullets++;}
		}			
		break;
		case("FlipCheck"):
			FlipCheck(self);
		break;
	}
}



if (event_data[? "message"] == "Damage_Me_Small")
{
	if !visible{Health -= 5; ShakeCamera(2,4);}
	
	switch(irandom(2))
	{
		case(0):
			audio_play_sound(PlayerWeaponHit1,100,false);
		break;
		case(1):
			audio_play_sound(PlayerWeaponHit2,100,false);
		break;
		case(2):
			audio_play_sound(PlayerWeaponHit3,100,false);
		break;
	}
}

if (event_data[? "message"] == "Damage_Me_Medium")
{
	if !visible{Health -= 60; ShakeCamera(2,4);}
}

if (event_data[? "message"] == "Damage_Me_Big")
{
	if !visible{Health -= 120; ShakeCamera(12,12);}
	
	switch(irandom(2))
	{
		case(0):
			audio_play_sound(PlayerWeaponHit1,100,false);
		break;
		case(1):
			audio_play_sound(PlayerWeaponHit2,100,false);
		break;
		case(2):
			audio_play_sound(PlayerWeaponHit3,100,false);
		break;
	}
}
