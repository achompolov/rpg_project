///scrMove_State


//Get the xMoveSpeed and yMoveSpeed
xMoveSpeed = lengthdir_x(length,dir);
yMoveSpeed = lengthdir_y(length,dir);

/*//Attack state
if (objInput.key_attack) {
    image_index = 0;
    state = scrAttack_State;
}
*/


//Dash state
if ((objInput.key_dash) && (stamina >= 50)) {
    if ((xMoveSpeed > 0)||(xMoveSpeed < 0)) || ((yMoveSpeed > 0) || (yMoveSpeed < 0)) {
        state = scrDash_State;
        stamina -= 50;
        alarm[0] = room_speed/6;

    }
}

//Get the length
if (objInput.xaxis == 0 && objInput.yaxis == 0) {
    length = 0;
}else {
    length = heroMoveSpeed;
}

//Get direction
dir = point_direction(0,0,objInput.xaxis,objInput.yaxis);

//Collision
    //Horizontal collisin
    if (place_meeting(x+xMoveSpeed,y,objCollide)) {
        while(!place_meeting(x+sign(xMoveSpeed),y,objCollide)) {
            x += sign(xMoveSpeed);
        }
        xMoveSpeed = 0;
    }
    x += xMoveSpeed; //Move phy_position_x

    //Vertical collisin
    if (place_meeting(x,y+yMoveSpeed,objCollide)) {
        while(!place_meeting(x,y+sign(yMoveSpeed),objCollide)) {
            y += sign(yMoveSpeed);
        }
        yMoveSpeed = 0;
    }
    y += yMoveSpeed; //Move phy_position_y
    

//Sprite animation
image_speed = sign(length)*.2;

if (length == 0) { 
    image_index = 0;
}

    //Vertical sprites
    if (yMoveSpeed > 0) {
        sprite_index = sprBigEye_Down;
    }else if (yMoveSpeed < 0){
        sprite_index = sprBigEye_Up;
    }
    //Horizontal sprites
    if (xMoveSpeed > 0) {
        sprite_index = sprBigEye_Right;
    }else if (xMoveSpeed < 0){
        sprite_index = sprBigEye_Left;
    }













