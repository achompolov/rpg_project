///scrLevel_Up
if ( xp >= maxXp ) {
    level += 1;
    xp = xp - maxXp;
    
    if (level > 0) {
        maxXp += 100;
    }
    /*
    if (level < 10) {
        maxXp += 200;
    }
    if (level >= 10) {
        maxXp += 350;
    }
    if (level >= 15) {
        maxXp += 500;
    }
    if (level >= 25) {
        maxXp += 1000;
    }
    if (level >= 50) {
        maxXp += 5000;
    }
    */
}
