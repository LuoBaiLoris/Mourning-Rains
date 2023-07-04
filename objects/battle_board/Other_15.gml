/// @description Newcreate
global.borders = [];
global.borderCount = array_length(global.borders);

mainboard = instance_create_depth(x,y,0,battle_board_extra);
ds_list_add(
	mainboard.listVertex,
	[-283,-65],[283,-65],[283,65],[-283,65]
	);
mainboard.updateDivide();

global.borders = [mainboard];
battle_board.New_use = true;