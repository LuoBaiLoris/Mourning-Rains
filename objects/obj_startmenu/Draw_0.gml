draw_sprite(spr_logo,0,room_width/2,room_height/5)
draw_set_font(font_simsun)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if(selected=1){draw_set_color(c_yellow)}
draw_text_transformed(room_width/5,room_height/20*11,Lang_GetString("str_startmenu_begin"),2,2,0)
if(selected=2){draw_set_color(c_yellow)}else{draw_set_color(c_white)}
draw_text_transformed(room_width/5,room_height/4*3,Lang_GetString("str_startmenu_settings"),2,2,0)
if(selected=3){draw_set_color(c_yellow)}else{draw_set_color(c_white)}
draw_text_transformed(room_width/5*4,room_height/20*11,Lang_GetString("str_startmenu_achieve"),2,2,0)
if(selected=4){draw_set_color(c_yellow)}else{draw_set_color(c_white)}
draw_text_transformed(room_width/5*4,room_height/4*3,Lang_GetString("str_startmenu_credits"),2,2,0)
draw_set_color(c_white)