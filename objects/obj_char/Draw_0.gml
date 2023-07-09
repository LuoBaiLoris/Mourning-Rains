if (live_call()) return live_result;
function Char_Draw(_x,_y,_r,_color)
{
	draw_roundrect_color_ext(_x-60,_y-60,_x+60,_y+60,20,20,_color,_color,0)
	draw_roundrect_color_ext(_x-55,_y-55,_x+55,_y+55,20,20,c_black,c_black,0)
	//draw_circle_color(_x,_y,_r,_color,_color,0)
	//draw_circle_color(_x,_y,_r-4,c_black,c_black,0)

}
c0.x = 120
c1.x = 120+150*1
c2.x = 120+150*2
c3.x = 120+150*3
c4.x = 120+150*4
c5.x = 120+150*5
c6.x = 120+150*6
c7.x = 120+150*7
for (var i=0;i<array_length(circles);i++)
{
	
	var c = circles[i]
	if i< array_length(circles)-1
	{
		draw_line_width(c.x,c.y,circles[i+1].x,circles[i+1].y,2)
	}
	c.y = 240//+sin(i+current_time*0.0015)*20
	Char_Draw(c.x,c.y,c.r,c.clr)
	draw_text_scribble(c.x-40,c.y-15,"[scale,2][font_simsun]章节 "+string(i))
	
}


