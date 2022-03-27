// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShakeCamera(Time,Intensity){
	with(oCamera)
	{
		oCamera.Intensity = Intensity;
		alarm[0] = Time;
		screenShake = true;
	}
}

function ChangeViewPoint(State){

	oCamera.state = State;	

}

function ResetViewPoint(){
	self.state = "BASE";		
}