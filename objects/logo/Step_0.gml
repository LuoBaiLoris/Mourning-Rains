if (live_call()) return live_result;
time ++
if(Input_IsPressed(INPUT.CONFIRM)){
	audio_stop_all()
	room_goto(room_grillbys);
}