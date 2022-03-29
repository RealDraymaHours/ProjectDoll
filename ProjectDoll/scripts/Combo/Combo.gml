// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ComboReset()
{
	oPlayer.ComboArray = [-1,-1,-1];
	oPlayer.ComboCounter = -1;
}

function ComboGetSprite(Array, Index)
{
	
}


function ComboSearch(MaxWeaponCombo, itemType)
{
	for(var i = 0; i < MaxWeaponCombo; i += 1)
	{
		if (oPlayer.ComboArray[i] == itemType)
		{
			return(i);
		}
	}
	return(-1);
}
		
function ComboEnd()
{
	for(var i = 0; i < 3; i += 1)
	{
		if (oPlayer.ComboArray[i] == -1)
		{
			return false;
		}
	}
	return true;
}
		
		
function ComboAdd(MaxWeaponCombo, itemType) {
	var _slot = ComboSearch(MaxWeaponCombo, -1);
	if (_slot != -1)
	{
		//audio_play_sound(mGetItem,10,false);
		with (oPlayer) ComboArray[_slot] = itemType;
		return true;
	}
	else return false;
}



//Light Spider = 1
//Heavy Spider = 2

//Light Hand = 3
//Heavy Hand = 4
