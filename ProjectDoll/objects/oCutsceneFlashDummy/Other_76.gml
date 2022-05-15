if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        case "SetTutorialPlayerGrab1":
            sprite_index = sTutorialBoss1GrabBoss;
        break;
		case("Damage_Me_Medium"):
		case("Damage_Me_Big"):
			flashAlpha = 1;
		break;
    }
} 
