/// @description 


if((!Parried) && (!GoBack) && (oPlayer.Parry))
{
	myhb = myhb * 1.3;
	GoBack = true;
	Parried = true;
	
	ParryEffect(other.x,other.y,make_color_rgb(255,0,255));
	
}
else if ((!other.Staggered) && (other.state != "DASH") && (!Parried))
{
	DamagePlayer(1);	
}
