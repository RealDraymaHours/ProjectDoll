// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



function SpriteCallToHitbox(Move, Weapon)
{
	switch(Weapon)
	{
		case("Blue"):
			MakeBlueHitbox(Move);
		break;
	}
}

function MakeBlueHitbox(Move)
{
/*
Right = 0;
Left = 180;
Up = 90;
Down = 270;

None = 1;
Small = 5;
Medium = 10;
Big = 20;
*/	
	
	switch(Move)
	{
		case("BaseCombo1"):
			if oPlayer.onGround
			{
				if oPlayer.facing = oPlayer.RIGHT
				{
					setPlayerHitbox(10,5,5,0,5,5,10,sPlayerCyanBaseCombo1Hitbox);
				}
				else
				{
					setPlayerHitbox(10,5,5,180,5,5,10,sPlayerCyanBaseCombo1Hitbox);
				}
			}
			else
			{
				setPlayerHitbox(10,1,1,0,1,1,0,sPlayerCyanBaseCombo1Hitbox);
			}
			
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////	
		case("BaseCombo2"):
			if oPlayer.onGround
			{
				if oPlayer.facing = oPlayer.RIGHT
				{
					setPlayerHitbox(10,10,5,0,5,5,10,sPlayerCyanBaseCombo2Hitbox);
				}
				else
				{
					setPlayerHitbox(10,10,5,180,5,5,10,sPlayerCyanBaseCombo2Hitbox);
				}
			}
			else
			{
				setPlayerHitbox(10,1,1,0,0,1,0,sPlayerCyanBaseCombo2Hitbox);
			}		
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////			
		case("BaseCombo3"):
			if oPlayer.onGround
			{
				if oPlayer.facing = oPlayer.RIGHT
				{

					setPlayerHitbox(20,20,20,0,15,5,10,sPlayerCyanBaseCombo3Hitbox);
				}
				else
				{
					setPlayerHitbox(20,20,20,180,15,5,10,sPlayerCyanBaseCombo3Hitbox);
				}
			}
			else
			{
				setPlayerHitbox(20,2,20,0,0,1,0,sPlayerCyanBaseCombo3Hitbox);
			}	
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////			
		case("GroundUp"):
			setPlayerHitbox(20, 10,20,"V",-15,100,10,sPlayerTearGroundUpHitbox);
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////			
		case("GroundDir"):
			if oPlayer.facing = oPlayer.RIGHT
			{
				setPlayerHitbox(20,5,30,"H",20,500,10,sPlayerTearGroundDirHitbox);
			}
			else
			{
				setPlayerHitbox(20,5,30,"H",-20,500,10,sPlayerTearGroundDirHitbox);
			}
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////	
		case("GroundDown"):
			setPlayerHitbox(20,7,5,"V",-15,100,10,sPlayerTearGroundDownHitbox);
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////	
		case("AirUp"):
			setPlayerHitbox(20,1,20,"H",0,0,1,sPlayerTearAirUpHitbox);
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////	
		case("AirDir"):
			if oPlayer.facing = oPlayer.RIGHT
			{
				setPlayerHitbox(20,5,30,"H",20,500,10,sPlayerTearAirDirHitbox);
			}
			else
			{
				setPlayerHitbox(20,5,30,"H",-20,500,10,sPlayerTearAirDirHitbox);
			}
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////	
		case("AirDown"):
			setPlayerHitbox(20,5,5,"V",15,100,10,sPlayerTearAirDownHitbox);
		break;
	}
}
