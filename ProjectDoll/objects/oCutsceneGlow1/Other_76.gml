if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        case "SetTutorialPlayerGrab1":	
            sprite_index = sTutorialBoss1GrabPlayerHand;
			color = make_color_rgb(146,39,143);
			valuesSet = true;
        break;	
    }
} 



