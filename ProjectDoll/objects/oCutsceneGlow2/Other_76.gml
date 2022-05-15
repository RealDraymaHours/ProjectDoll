if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        case "SetTutorialPlayerGrab1":
            sprite_index = sTutorialBoss1GrabPlayerCyan;
			color = make_color_rgb(0,255,255);
        break;	
    }
} 



