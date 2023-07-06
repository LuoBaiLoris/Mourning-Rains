draw_set_halign(fa_left)
draw_set_valign(fa_top)
if(global.debug=true){
	draw_set_font(font_mars_needs_cunnilingus)
	draw_set_color(c_red)
    draw_text(5, 15, "D")
	draw_set_color(c_yellow)
    draw_text(20, 15, "E")
	draw_set_color(c_lime)
    draw_text(35, 15, "B")
	draw_set_color(c_aqua)
    draw_text(50, 15, "U")
	draw_set_color(c_orange)
    draw_text(65, 15, "G")
	//draw_set_color(c_yellow)
	rainbow+=1
	draw_set_color(make_color_hsv((rainbow % 255), 255, 255))
	draw_set_font(font_simsun)
	draw_room="Current Room:"+string(room)+"("+room_get_name(room)+")"
	draw_fps="Current FPS:"+string(fps)+"/"+string(room_speed)+"("+string(fps_real)+")"
	draw_language="Current Language:"+Lang_GetString("str_language_name")
	draw_windowsize="Current Window Size:"+string(world._window_size)+"x("+string(window_get_width())+"x"+string(window_get_height())+")"
	draw_instance_count="Instance Count:"+string(instance_count)
	draw_mousexy="Mouse XY:["+string(mouse_x)+","+string(mouse_y)+"]"
	draw_hp_kr="HP:["+string(Player_GetHp())+"/"+string(Player_GetHpMax())+"]"
if(room=room_menu&&instance_exists(menu)){
	draw_letter="Choice Naming Letter:"+strisng(menu._choice_naming_letter)
    draw_text(0, 175, draw_letter)
	}
if(Player_IsInBattle()){
	turn_timer=Battle_GetTurnTime()
	draw_soulxy="Soul XY:["+string(battle_soul.x)+","+string(battle_soul.y)+"]"
	draw_battle_button="Choice Button:"+string(Battle_GetMenuChoiceButton())
	draw_turn="Turn Number:"+string(Battle_GetTurnNumber())
	if(instance_exists(battle_turn)&&variable_instance_exists(battle_turn,"timer")&&battle_turn.timer!=-1){
	draw_turn_timer="Turn Timer:"+string(turn_timer)+"("+string(battle_turn.timer)+")"
	}else{
	draw_turn_timer="Turn Timer:"+string(turn_timer)}
	draw_board="Board State:["+string(battle_board.x)+","+string(battle_board.y)+","+string(battle_board.angle)+"],["+string(battle_board.up)+","+string(battle_board.down)+","+string(battle_board.left)+","+string(battle_board.right)+"]"
	draw_state="Battle State & Menu:["+string(Battle_GetState())+","+string(Battle_GetMenu())+"]"
    draw_text(0, 175, draw_soulxy)
    draw_text(0, 195, draw_battle_button)
    draw_text(0, 215, draw_turn)
    draw_text(0, 235, draw_turn_timer)
	draw_text(0, 255, draw_board)
	draw_text(0, 275, draw_state)
	if(instance_exists(battle_soul_blue)||instance_exists(battle_soul_blue_aqua)){
	draw_text(0, 295, "Moving:"+string(battle_soul.moving))
	draw_text(0, 215, "Falling Speed(move):"+string(battle_soul.move))
	draw_text(0, 335, "On Block:"+string(battle_soul.on_block))
	draw_text(0, 355, "On Platform:"+string(battle_soul.on_platform))
	draw_text(0, 375, "On Board:"+string(battle_soul.on_board))
	draw_text(0, 395, "Gravity Jump:"+string(battle_soul.gravity_jump))
	draw_text(0, 415, "Gravity Fall:"+string(battle_soul.gravity_fall))
	draw_text(0, 435, "Dir:"+string(battle_soul.dir))
	}else if(instance_exists(battle_soul)){
	draw_text(0, 295, "Soul Image Angle:"+string(battle_soul.image_angle))}
	if(instance_exists(battle_soul_green)||instance_exists(battle_soul_green_aqua)){
	if(instance_exists(battle_soul_green_shield1)&&!instance_exists(battle_soul_green_shield2)){
	draw_text(0, 315, "Green Soul Angles:["+string(battle_soul.image_angle)+","+string(battle_soul_green_shield1.image_angle)+"]")}
	if(instance_exists(battle_soul_green_shield1)&&instance_exists(battle_soul_green_shield2)){
	draw_text(0, 315, "Green Soul Angles:["+string(battle_soul.image_angle)+","+string(battle_soul_green_shield1.image_angle)+","+string(battle_soul_green_shield2.image_angle)+"]")}
	}
	if(instance_exists(battle_soul_orange)||instance_exists(battle_soul_aqua_orange)){
	draw_text(0, 315, "Moveable:"+string(battle_soul.moveable))
	draw_text(0, 335, "Moving:["+string(battle_soul.moveup)+","+string(battle_soul.movedown)+","+string(battle_soul.moveleft)+","+string(battle_soul.moveright)+"]")
	}
}else{
	if(instance_exists(char_player)){
	draw_playerxy="Character XY:["+string(char_player.x)+","+string(char_player.y)+"]"
	draw_playerspeed="Character Move Speed:["+string(char_player.move_speed[DIR.UP])+","+string(char_player.move_speed[DIR.DOWN])+","+string(char_player.move_speed[DIR.LEFT])+","+string(char_player.move_speed[DIR.RIGHT])+"]"
	draw_playersprite="Character Sprite:"+sprite_get_name(char_player.sprite_index)+"["+string(floor(char_player.image_index))+"]"
	draw_playercanmove="Moveable:"+string(char_player.can_move)+"["+string(char_player.moveable)+","+string(char_player._moveable_box)+","+string(char_player._moveable_dialog)+","+string(char_player._moveable_encounter)+","+string(char_player._moveable_menu)+","+string(char_player._moveable_save)+","+string(char_player._moveable_warp)+"]"
	draw_text(0, 175, draw_playerxy)
	draw_text(0, 195, draw_playerspeed)
	draw_text(0, 215, draw_playersprite)
	draw_text(0, 235, draw_playercanmove)}
}
    draw_text(0, 35, draw_room)
    draw_text(0, 55, draw_fps)
    draw_text(0, 75, draw_language)
    draw_text(0, 95, draw_windowsize)
    draw_text(0, 115, draw_instance_count)
    draw_text(0, 135, draw_mousexy)
    draw_text(0, 155, draw_hp_kr)
	if(global.undead=true){
	draw_text(85,15,"Undead Mode")}
	}
