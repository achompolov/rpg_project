///scrEnemy_Move

//Get the xMoveSpeed and yMoveSpeed
hSpeed += sign(objBigEye.y - x)*slimeSpeed;
vSpeed += sign(objBigEye.y - y)*slimeSpeed;

//Collision
    //Horizontal collision
    if (place_meeting(x+hSpeed,y,objCollide)) {
        while(!place_meeting(x+sign(hSpeed),y,objCollide)) {
            x += sign(hSpeed);
        }
        hSpeed = 0;
    }
    x += hSpeed; //Move phy_position_x

    //Vertical collision
    if (place_meeting(x,y+vSpeed,objCollide)) {
        while(!place_meeting(x,y+sign(vSpeed),objCollide)) {
            y += sign(vSpeed);
        }
        vSpeed = 0;
    }
    y += vSpeed; //Move phy_position_y













