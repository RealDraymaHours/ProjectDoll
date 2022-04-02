// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetXSandYS(sprite){
	XSYS = [0,0];
	switch(sprite)
	{
		case(sPlayerSpiderBaseCombo1):
			XSYS = [1,-1];
		break;
		case(sPlayerSpiderBaseCombo2):
			XSYS = [1,-1];
		break;
		case(sPlayerSpiderBaseCombo3):
			XSYS = [1,-1];
		break;
		case(sPlayerSpiderHeavyCombo1):
			XSYS = [-1,1];
		break;
		case(sPlayerSpiderHeavyCombo2):
			XSYS = [1,-1];
		break;
	}
	
	return XSYS
}