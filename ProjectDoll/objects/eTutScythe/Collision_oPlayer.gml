/// @description 
if ((other.Parry) && (!Parried) && (!GoBack))
{
	Parried = true;	
	myhb = myhb * 1.3;
	GoBack = true;
	
	ParryEffect(other.x,other.y);
}
else if ((!other.Staggered) && (other.state != "DASH") && (!Parried))
{
	if distance_to_object(oTut) > 20
	{
		DamagePlayer(1);	
	}
}