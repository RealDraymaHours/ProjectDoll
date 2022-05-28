// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



function SpriteCallToHitbox(Move, Weapon)
{
	switch(Weapon)
	{
		case("Cyan"):
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
					setPlayerHitbox(5,2,5,0,5,5,10,sPlayerCyanBaseCombo1Hitbox);
				}
				else
				{
					setPlayerHitbox(5,2,5,180,5,5,10,sPlayerCyanBaseCombo1Hitbox);
				}
			}
			else
			{
				setPlayerHitbox(5,1,1,0,1,1,0,sPlayerCyanBaseCombo1Hitbox);
			}
			
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////	
		case("BaseCombo2"):
			if oPlayer.onGround
			{
				if oPlayer.facing = oPlayer.RIGHT
				{
					setPlayerHitbox(7,4,5,0,5,5,10,sPlayerCyanBaseCombo2Hitbox);
				}
				else
				{
					setPlayerHitbox(7,4,5,180,5,5,10,sPlayerCyanBaseCombo2Hitbox);
				}
			}
			else
			{
				setPlayerHitbox(7,1,1,0,0,1,0,sPlayerCyanBaseCombo2Hitbox);
			}		
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////			
		case("BaseCombo3"):
			if oPlayer.onGround
			{
				if oPlayer.facing = oPlayer.RIGHT
				{

					setPlayerHitbox(10,10,20,0,15,5,10,sPlayerCyanBaseCombo3Hitbox);
				}
				else
				{
					setPlayerHitbox(10,10,20,180,15,5,10,sPlayerCyanBaseCombo3Hitbox);
				}
			}
			else
			{
				setPlayerHitbox(10,2,5,0,0,1,0,sPlayerCyanBaseCombo3Hitbox);
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
		case("AirNeutral"):
			setPlayerHitbox(20,200,5,0,0,0,0,sPlayerTearAirUpHitbox);
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////	
		case("AirDir"):
			if oPlayer.facing = oPlayer.RIGHT
			{
				setPlayerHitbox(10,8000,5,180,5,5,10,sPlayerCyanBaseCombo1Hitbox);
			}
			else
			{
				setPlayerHitbox(10,8000,5,180,5,5,10,sPlayerCyanBaseCombo1Hitbox);
			}
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////	
		case("AirDown"):
			setPlayerHitbox(20,5,5,"V",15,100,10,sPlayerTearAirDownHitbox);
		break;
	}
}
