/// @desc check the ground
if state != "HOOK"
{
	var temp;

	// Check if you were onGround previous frame
	temp = onGround;

	onGround = OnGround();

	// Squash sprite during jump landing
	if (!temp && onGround) {
	    if (v >= 0) { 
			ComboReset();
	        yscale = 0.66;
	        xscale = 1.33;  
	    }
	}

	// Update relative collision
	cLeft  = place_meeting(x - 1, y, oBlock); 
	cRight = place_meeting(x + 1, y, oBlock); 
	cAbove = place_meeting(x, y - 1, oParSolid);
}
