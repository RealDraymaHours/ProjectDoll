#macro view view_camera[0]

Bview_width = 3456/Multiplier;
Bview_height = 1800/Multiplier;

if view_width != Bview_width
{
	if view_width < Bview_width
	{
		if ((view_width - Bview_width) > (1.63 * Speed))
		{
			view_width = Bview_width;
		}
		else
		{
			view_width += 1.63 * Speed;
		}
		
	}
	else
	{
		if ((view_width - Bview_width) < (1.63 * Speed))
		{
			view_width = Bview_width;
		}
		else
		{
			view_width -= 1.63 * Speed;
		}
		
	}
}

if view_height != Bview_height
{
	if view_height < Bview_height
	{
		if ((view_height - Bview_height) > (1 * Speed))
		{
			view_height = Bview_height;
		}
		else
		{
			view_height += 1 * Speed;
		}
		
	}
	else
	{
		if ((view_height - Bview_height) < (1 * Speed))
		{
			view_height = Bview_height;
		}
		else
		{
			view_height -= 1 * Speed;
		}
		
	}
}


camera_set_view_size(view, view_width, view_height);

switch(state)
{
	case("BASE"):
	#region Base
		if instance_exists(p)
		{	
			var _x = clamp(p.x-view_width/2,0,room_width-view_width);
			var _y = clamp(p.y-view_height/2,0,room_height-view_height);
			camera_set_view_pos(view,_x,_y);
	
			var _cur_x = camera_get_view_x(view);
			var _cur_y = camera_get_view_x(view);
			var _spd = 1;
	
	
			camera_set_view_pos(view,
									lerp(_cur_x,_x,_spd),
									lerp(_cur_y,_y,_spd)
									)
		}
	#endregion
	break;
	case("BOSS"):
	#region Boss
		
		if instance_exists(p)
		{	
			Bview_height = view_height + (oPlayer.DistanceToBoss);
			Bview_width = view_width + (oPlayer.DistanceToBoss);
			
			var _x = clamp(p.x-Bview_width/2,0,room_width-view_width);
			var _y = clamp(p.y-Bview_height/2,0,room_height-view_height);
			camera_set_view_pos(view,_x,_y);
	
			var _cur_x = camera_get_view_x(view);
			var _cur_y = camera_get_view_x(view);
			var _spd = 1;
	
	
			camera_set_view_pos(view,
									lerp(_cur_x,_x,_spd),
									lerp(_cur_y,_y,_spd)
									)
		}
	#endregion
	break;
}

// Screenshake
if (screenShake) {
    __view_set( e__VW.Angle, 0, random_range(-Intensity, Intensity) );
} else {
    // Reset
    __view_set( e__VW.Angle, 0, 0 );
}

