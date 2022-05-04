if(MoveToPlayer)
{
	NewSpeed += 0.1;
	speed = random_range(5, 10);
	move_towards_point(p.x, p.y, NewSpeed);
}

image_angle = direction;
