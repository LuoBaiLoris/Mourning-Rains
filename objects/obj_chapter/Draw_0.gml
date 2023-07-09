if (live_call()) return live_result;
function Char_Draw(_x,_y,_r,_color)
{
	draw_roundrect_color_ext(_x-120,_y-60,_x+120,_y+60,10,10,_color,_color,0)
	draw_roundrect_color_ext(_x-115,_y-55,_x+115,_y+55,10,10,c_black,c_black,0)
	draw_set_color(c_gray)
	draw_line(_x-115,_y-5,_x+115,_y-5)
	//draw_circle_color(_x,_y,_r,_color,_color,0)
	//draw_circle_color(_x,_y,_r-4,c_black,c_black,0)

}
c0.x = 180
c1.x = 180+270*1
c2.x = 180+270*2
c3.x = 180+270*3
c4.x = 180+270*4
c5.x = 180+270*5
c6.x = 180+270*6
c7.x = 180+270*7
for (var i=0;i<array_length(circles);i++)
{
	
	var c = circles[i]
	if i< array_length(circles)-1
	{
		if(circles[i+1].unlock){draw_set_color(c_white)}else{draw_set_color(c_gray)}
		draw_line_width(c.x,c.y,circles[i+1].x,circles[i+1].y,2)
	}
	c.y = 240//+sin(i+current_time*0.0015)*20
	Char_Draw(c.x,c.y,c.r,c.clr)
	draw_set_color(c_white)
	if(i=0){
		draw_text_scribble(c.x-40-60,c.y-15-30,Lang_GetString("str_prologue"))
	}else{
		draw_text_scribble(c.x-40-60,c.y-15-30,Lang_GetString("str_chapter")+string(i))
	}
	if(c.unlock){
		draw_text_scribble(c.x-40-60,c.y-15+20,c._2nd_title)
	}else{
		draw_text_scribble(c.x-40-60,c.y-15+20,Lang_GetString("str_unlock_to_view"))
	}
	
}


