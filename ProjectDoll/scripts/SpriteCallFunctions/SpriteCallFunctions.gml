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
	switch(Move)
	{
		case("BaseCombo1"):
			if oPlayer.onGround
			{
				if oPlayer.facing = oPlayer.RIGHT
				{
					setPlayerHitbox(10,10,5,"H",0.01,5,10,sPlayerTearBaseCombo1Hitbox);
				}
				else
				{
					setPlayerHitbox(10,10,5,"H",0.01,-5,10,sPlayerTearBaseCombo1Hitbox);
				}
			}
			else
			{
				setPlayerHitbox(10,10,5,"H",0,0,10,sPlayerTearBaseCombo1Hitbox);
			}
			
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////	
		case("BaseCombo2"):
			if oPlayer.onGround
			{
				if oPlayer.facing = oPlayer.RIGHT
				{
					setPlayerHitbox(10,10,5,"H",0.01,5,10,sPlayerTearBaseCombo2Hitbox);
				}
				else
				{
					setPlayerHitbox(10,10,5,"H",0.01,-5,10,sPlayerTearBaseCombo2Hitbox);
				}
			}
			else
			{
				setPlayerHitbox(10,10,5,"H",0,0,1000,sPlayerTearBaseCombo2Hitbox);
			}		
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////			
		case("BaseCombo3"):
			if oPlayer.onGround
			{
				if oPlayer.facing = oPlayer.RIGHT
				{

					setPlayerHitbox(20,20,20,"H",20,500,10,sPlayerTearBaseCombo3Hitbox);
				}
				else
				{
					setPlayerHitbox(20,20,20,"H",-20,500,10,sPlayerTearBaseCombo3Hitbox);
				}
			}
			else
			{
				setPlayerHitbox(20,20,20,"H",0,0,10,sPlayerTearBaseCombo3Hitbox);
			}	
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////			
		case("GroundUp"):
			setPlayerHitbox(20, 20,20,"V",-15,100,10,sPlayerTearGroundUpHitbox);
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////			
		case("GroundDir"):
			if oPlayer.facing = oPlayer.RIGHT
			{
				setPlayerHitbox(20,20,30,"H",20,500,10,sPlayerTearGroundDirHitbox);
			}
			else
			{
				setPlayerHitbox(20,20,30,"H",-20,500,10,sPlayerTearGroundDirHitbox);
			}
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////	
		case("GroundDown"):
			setPlayerHitbox(20,20,5,"V",-15,100,10,sPlayerTearGroundDownHitbox);
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////	
		case("AirUp"):
			setPlayerHitbox(20,20,20,"H",0,0,1,sPlayerTearAirUpHitbox);
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////	
		case("AirDir"):
			if oPlayer.facing = oPlayer.RIGHT
			{
				setPlayerHitbox(20,20,30,"H",20,500,10,sPlayerTearAirDirHitbox);
			}
			else
			{
				setPlayerHitbox(20,20,30,"H",-20,500,10,sPlayerTearAirDirHitbox);
			}
		break;
///////////////////////////////////////////////////////////////////////////////////////////////////////	
		case("AirDown"):
			setPlayerHitbox(20,20,5,"V",15,100,10,sPlayerTearAirDownHitbox);
		break;
	}
}
