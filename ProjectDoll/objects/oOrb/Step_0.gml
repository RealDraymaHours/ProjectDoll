if MoveDown

if distance_to_object(oPlayer) < 40
{
	move_towards_point(oPlayer.x,oPlayer.y, 6);
}
else
{
	EnemyStepGravity(self);
}
