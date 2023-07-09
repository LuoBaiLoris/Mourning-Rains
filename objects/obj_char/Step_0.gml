if (live_call()) return live_result;

for (var i=0;i<array_length(circles);i++)
{
	var c = circles[i]
	if point_in_rectangle(mouse_x,mouse_y,c.x-60,c.y-60,c.x+60,c.y+60)
	{
		c.clr = c_yellow
	}
	else
	{
		c.clr = c_white
	}
	
	if point_in_rectangle(mouse_x,mouse_y,c.x-60,c.y-60,c.x+60,c.y+60)
	{
		if(!c.chosen){
		c.chosen = true
		audio_play_sound(snd_menu_switch,0,0)
	}
	}
	else 
	{
		c.chosen = false
	}
}
if point_in_rectangle(mouse_x,mouse_y,camera.x+320+160,0,camera.x+640,640)
{
	camera.x = clamp(camera.x+5,0,640)
}

if point_in_rectangle(mouse_x,mouse_y,camera.x,0,camera.x+160,640)
{
	camera.x = clamp(camera.x-5,0,640)
}
