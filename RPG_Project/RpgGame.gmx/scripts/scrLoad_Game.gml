///scrLoad_Game

var file = file_text_open_read(working_directory + "save_game.txt");
var saveString = file_text_read_string(file);
file_text_close(file);
saveString = base64_decode(saveString);
var saveData = json_decode(saveString);

var saveRoom = saveData[? "room"];
if (room != saveRoom) {
    room_goto(saveRoom);
}

with(objBigEye) {
    xStart = saveData[? "x"];
    yStart = saveData[? "y"];
    if (instance_exists(objBigEye)) {
        objBigEye.x = xStart;
        objBigEye.y = yStart;
    } else {
        instance_create(xStart, yStart, objBigEye);
    }
    hp = saveData[? "hp"];
    xp = saveData[? "xp"];
    maxXp = saveData[? "maxXp"];
    level = saveData[? "level"];
}
with(objInput) {
    previousRoom = saveData[? "room"];
}

ds_map_destroy(saveData);
