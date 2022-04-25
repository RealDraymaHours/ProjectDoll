if(MoveToPlayer)
{
	//NewSpeed += 0.01;
	image_angle = direction;
	speed = 5;
	move_towards_point(oPlayer.x, oPlayer.y, NewSpeed);
}

part_emitter_region(part_system, part_emitter, x -2, x +2, y +2  ,y -2, ps_shape_diamond, ps_distr_invgaussian);
part_particles_create(part_system,x,y,part_type,100);
part_emitter_burst(part_system, part_emitter, part_type, 10);
