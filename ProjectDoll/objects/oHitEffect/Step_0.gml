if((MoveToPlayer) && (instance_exists(p)))
{
	NewSpeed += 0.1;
	image_angle = direction;
	speed = random_range(5, 10);
	move_towards_point(p.x, p.y, NewSpeed);
}

image_angle = direction;

if (flashAlpha > 0)
{
	flashAlpha -= 0.1;	
}
