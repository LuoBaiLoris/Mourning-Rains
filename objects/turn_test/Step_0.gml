if(mouse_check_button(mb_left)){
	aa.x = mouse_x;
	aa.y = mouse_y;
}

if(mouse_check_button(mb_right)){
	bb.x = mouse_x;
	bb.y = mouse_y;
}

if(start = 1){
	time += 1;
	if(time > 1){
		battle_board.up = 50 + sin(time/20)*20;
	}
}