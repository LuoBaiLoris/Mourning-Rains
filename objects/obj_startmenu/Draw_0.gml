if (live_call()) return live_result;
draw_sprite(spr_logo,0,room_width/2,room_height/5)
draw_set_font(font_menu)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if(selected=1){draw_set_color(c_yellow)}
draw_text_scribble(x1,y1,Lang_GetString("str_startmenu_begin"))
if(selected=2){draw_set_color(c_yellow)}else{draw_set_color(c_white)}
draw_text_scribble(x1,y2,Lang_GetString("str_startmenu_settings"))
if(selected=3){draw_set_color(c_yellow)}else{draw_set_color(c_white)}
draw_text_scribble(x2,y1,Lang_GetString("str_startmenu_achieve"))
if(selected=4){draw_set_color(c_yellow)}else{draw_set_color(c_white)}
draw_text_scribble(x2,y2,Lang_GetString("str_startmenu_credits"))
draw_set_color(c_white)