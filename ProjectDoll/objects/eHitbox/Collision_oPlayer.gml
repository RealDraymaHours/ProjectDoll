/// @description DamagePlayer
if other.Parry
{
	ParryMelee(other.x,other.y,Caster,self.id);
	other.state = "IDLE";
	other.Parry = false;
}
else if ((!other.Staggered) && (other.state != "DASH"))
{
	DamagePlayer(Damage);	
}