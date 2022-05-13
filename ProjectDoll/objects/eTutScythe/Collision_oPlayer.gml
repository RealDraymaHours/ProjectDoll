/// @description 

if ((!other.Staggered) && (other.state != "DASH") && (!Parried))
{
	DamagePlayer(1);	
}
else if((!Parried) && (!GoBack) && (oPlayer.Parry))
{
	myhb = myhb * 1.3;
	GoBack = true;
	
	ParryEffect(other.x,other.y,make_color_rgb(255,0,255));
	
}
