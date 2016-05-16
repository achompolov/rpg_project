///scrGet_Input

//Get inputs
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_dash = keyboard_check_pressed(ord('C'));
key_attack = keyboard_check_pressed(ord('X'));
key_frozen = keyboard_check_pressed(ord('Z'));
key_pause = keyboard_check_pressed(ord('P'));
key_select = keyboard_check_pressed(vk_enter);

//Get the axis
xaxis = (key_right - key_left);
yaxis = (key_down - key_up);
