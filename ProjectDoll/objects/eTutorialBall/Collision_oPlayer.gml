/// @description Contact damage

if ((other.state != "DASH") && (other.state != "PARRY") && (!other.Staggered)) 
{
	DamagePlayer(1);	
}
