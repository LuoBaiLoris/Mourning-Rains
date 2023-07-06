if(GameJolt_User_IsLogged()){
draw_sprite(spr_tick,0,45,207)
draw_set_color(c_lime)
draw_set_font(font_dialog)
draw_text_scribble(70,229+global.language,Lang_GetString("str_settings_gj_connected")+global.GameJolt_Username)}

if(global.gj_error=1){
draw_set_color(c_red)
draw_set_font(font_dialog)
draw_text_transformed(45,200,"X",2,2,0)
draw_set_font(font_dialog)
draw_text_transformed(70,230,Lang_GetString("str_settings_gjerror"),1,1,0)}

draw_sprite_ext(spr_pixel,0,450,246,80,20,0,c_red,1)
draw_sprite_ext(spr_pixel,0,450,246,80*world.volume,20,0,c_yellow,1)
draw_set_font(font_dialog)

if(choice!=5){
draw_set_color(c_white)
}else if(choice=5){
draw_set_color(c_yellow)}
draw_text_transformed(540,238.3,string(round(world.volume*100))+"%",2,2,0)