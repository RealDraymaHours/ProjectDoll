if other.state == "PARRY"
{
	oPlayer.state = "STUNNED";
	instance_destroy();	
}
else if other.Poise > Break
{
	other.knockback = true;
}