///scrSave_Game

//Create save data structure
var saveData = ds_map_create();

with(objBigEye) {
    saveData[? "x"] = objBigEye.xStart;
    saveData[? "y"] = objBigEye.yStart;
    saveData[? "hp"] = objBigEye.hp;
    saveData[? "xp"] = objBigEye.xp;
    saveData[? "maxXp"] = objBigEye.maxXp;
    saveData[? "level"] = objBigEye.level;
}
with(objInput) {
    saveData[? "room"] = previousRoom;
}

var saveString = json_encode(saveData);
ds_map_destroy(saveData);
saveString = base64_encode(saveString);

var file = file_text_open_write(working_directory + "save_game.txt");
file_text_write_string(file, saveString);
file_text_close(file);

show_message("Game saved");

