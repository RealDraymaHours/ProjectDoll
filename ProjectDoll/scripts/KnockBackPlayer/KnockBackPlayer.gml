// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function KnockBackPlayer(Direction, Acc, Fric){
	if Direction == "H"
	{
		oPlayer.h = 0 
		oPlayer.h = 0
		oPlayer.v = 0;   
		oPlayer.v = 0;
		//right
		oPlayer.h = Approach(oPlayer.h, Fric, oPlayer.groundFric);   
		oPlayer.h = Approach(oPlayer.h, Acc, oPlayer.groundAccel);
		oPlayer.v = 0;   
		oPlayer.v = 0;
	}
	else
	{
		oPlayer.h = 0 
		oPlayer.h = 0
		oPlayer.v = 0;   
		oPlayer.v = 0;
		
		oPlayer.v = Approach(oPlayer.v, Fric, oPlayer.airFric);   
		oPlayer.v = Approach(oPlayer.v, Acc, oPlayer.airAccel);
	}
}