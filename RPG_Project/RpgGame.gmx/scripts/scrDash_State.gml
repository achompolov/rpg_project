///scrDash_State

//Get the length
length = heroMoveSpeed*4;

//Get the xMoveSpeed and yMoveSpeed
xMoveSpeed = lengthdir_x(length,dir);
yMoveSpeed = lengthdir_y(length,dir);

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
    
//Creating the dash effect
var dash = instance_create(x,y,objDashEffect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;









