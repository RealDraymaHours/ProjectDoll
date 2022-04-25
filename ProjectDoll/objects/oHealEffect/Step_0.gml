if(MoveToPlayer)
{
	NewSpeed += 0.1;
	speed = random_range(5, 10);
	move_towards_point(oPlayer.x, oPlayer.y, NewSpeed);
}

image_angle = direction;
