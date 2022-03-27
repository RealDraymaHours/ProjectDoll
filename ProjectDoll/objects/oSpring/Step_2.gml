// Launch player
if (place_meeting(x, y - 1, oPlayer)) {
    // Shake screen
    with (oCamera) {
        alarm[0] = 8;
        screenShake = true;
    }

    // HIGH JUMP!
    with (oPlayer)
        v = -jumpHeight * 2;
    
}

// Launch push blocks (copy + paste)
if (place_meeting(x, y - 1, oPushBlock)) {
    // Shake screen
    with (oCamera) {
        alarm[0] = 8;
        screenShake = true;
    }

    // HIGH JUMP!
    with (instance_place(x, y - 1, oPushBlock)) { // Target specific push block
        v = -14;
        if (place_meeting(x, y - 1, oPlayer)) {
            oPlayer.y -= 14;
        }
    }
}

