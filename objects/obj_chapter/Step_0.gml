if (live_call()) return live_result;
a=instance_create_depth(random((640+400)*2), 0, 0, obj_season_effect)
a.image_xscale=1
a.image_yscale=1
a.image_index=1
a.image_angle=a.direction
a.alarm[1]=-1
a.alarm[0]=1

if(!pressed){
for (var i=0;i<array_length(circles);i++)
{
	var c = circles[i]
	if(c.unlock){
	if point_in_rectangle(mouse_x,mouse_y,c.x-120,c.y-60,c.x+120,c.y+60)
	{
		c.clr = c_yellow
	}
	else
	{
		c.clr = c_white
	}}else{
		c.clr=c_gray
	}
	
	if point_in_rectangle(mouse_x,mouse_y,c.x-120,c.y-60,c.x+120,c.y+60)
	{
		if(c.unlock&&selected!=i){audio_play_sound(snd_menu_switch,0,0)}
		selected=i
	}
}
var a=false
for (var i=0;i<array_length(circles);i++)
{
	var c = circles[i]
	if point_in_rectangle(mouse_x,mouse_y,c.x-120,c.y-60,c.x+120,c.y+60)
	{
		a=true
	}
}
if(!a){selected=-1}}
if point_in_rectangle(mouse_x,mouse_y,camera.x+320+160,0,camera.x+640,640)
{
	camera.x = clamp(camera.x+5,0,640+400)
}

if point_in_rectangle(mouse_x,mouse_y,camera.x,0,camera.x+160,640)
{
	camera.x = clamp(camera.x-5,0,640+400)
}
if(selected!=-1&&mouse_check_button_pressed(mb_left)&&!pressed){
	if(circles[selected].unlock){
		audio_play_sound(snd_menu_confirm,0,0)
		pressed=true
		Fader_Fade(0,1,30)
		alarm[1]=60
	}else{
		audio_play_sound(snd_hurt,0,0)
	}
}