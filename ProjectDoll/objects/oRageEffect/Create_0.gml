depth = -90;
X = 0.2;
Y = 0.2;
MoveToPlayer = false;
Gain = 2.5;

EffectColor = make_color_rgb(255,0,255);


if instance_exists(oPlayer)
{
	if oPlayer.onGround
	{
		direction = random_range(0, 180);
	}
	else
	{
		direction = random(360);
	}
}
else
{
	direction = random(360);
}

image_angle = direction;
speed = random_range(5, 10);
NewSpeed = speed;
alarm[0] = random_range(8,16);
