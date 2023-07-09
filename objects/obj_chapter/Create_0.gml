if (live_call()) return live_result;
audio_stop_all()
audio_play_sound(bgm_Its_raining_somewhere_else,0,1)
c0 = 
{
	x : 120,
	y : 240,
	r : 60,
	clr : c_white,
	_2nd_title:Lang_GetString("str_chapter_0"),
	unlock : true
}

c1 = 
{
	x : 120,
	y : 240,
	r : 60,
	clr : c_white,
	_2nd_title:"",
	unlock : false
}

c2 = 
{
	x : 120,
	y : 240,
	r : 60,
	clr : c_white,
	_2nd_title:"",
	unlock : false
}

c3 = 
{
	x : 120,
	y : 240,
	r : 60,
	clr : c_white,
	_2nd_title:"",
	unlock : false
}

c4 = 
{
	x : 120,
	y : 240,
	r : 60,
	clr : c_white,
	_2nd_title:"",
	unlock : false
}
c5 = 
{
	x : 120,
	y : 240,
	r : 60,
	clr : c_white,
	_2nd_title:"",
	unlock : false
}

audio = false
circles = [c0,c1,c2,c3,c4,c5]
pressed=false
selected=-1
