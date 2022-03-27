/// @description Insert description here
// You can write your code in this editor			
if (event_data[? "message"] == "Player_Step")
{
if (state == "RUN")
        with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
            direction = 90 + random_range(-45, 45); 
}

if (event_data[? "message"] == "Player_Forward")
{
    facing = RIGHT;
        h = Approach(h, 20, groundFric);   
    h = Approach(h, 120, groundAccel);
}

