if (live_call()) return live_result;
audio_stop_all()
if(selected=1){
	room_goto(room_read)
	Fader_Fade(1,0,30)
}
if(selected=2){
	fader.alpha=0
	room_goto(room_settings)
}
if(selected=3){
	fader.alpha=0
	room_goto(room_achievement)
}
if(selected=4){
	fader.alpha=0
	room_goto(room_credits)
}