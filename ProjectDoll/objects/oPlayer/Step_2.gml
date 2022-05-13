// Actual collision checks + movement
if state != "HOOK"
{
	var i;

	// Vertical
	for (i = 0; i < abs(v); ++i) {
	    if (!place_meeting(x, y + sign(v), oParSolid))
	        y += sign(v);
	    else {	
	        v = 0;
	        break;
	    }
	}

	// Horizontal
	for (i = 0; i < abs(h); ++i) {
	    // UP slope
	    if (place_meeting(x + sign(h), y, oParSolid) && !place_meeting(x + sign(h), y - 1, oParSolid))
	        y = --y;
    
	    // DOWN slope
	    if (!place_meeting(x + sign(h), y, oParSolid) && !place_meeting(x + sign(h), y + 1, oParSolid) && place_meeting(x + sign(h), y + 2, oParSolid))
	        y = ++y;
        
	    if (!place_meeting(x + sign(h), y, oParSolid))
	        x += sign(h); 
	    else {
	        // Push block
	        if (place_meeting(x + sign(h), y, oPushBlock)) {
	            with (instance_place(x + sign(h), y, oPushBlock))
	                h = other.h
	        } else
	            h = 0;
	        break;
	    }
	}
}
///////////////////////////////////////////////////////////////////////////////

if global.Health > global.MaxHealth
{
	global.Health = global.MaxHealth;
}

if global.Mana > global.MaxMana
{
	global.Mana = global.MaxMana;
}
