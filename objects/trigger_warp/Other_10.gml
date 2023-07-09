///@desc Trigger
if (live_call()) return live_result;
event_inherited();
if room == room_grillbys
{
	target_room = room_startmenu
}
if(room_exists(target_room)){
	fader.color=fade_in_color;
	Fader_Fade(-1,1,fade_in_time);
	if(instance_exists(char_player)){
		char_player._moveable_warp=false;
	}
	if(bgm_fade){
		BGM_SetVolume(0,0,bgm_fade_time);
	}
	alarm[0]=fade_in_time+warp_wait+1;
}else{
	Console_OutputLine("Attempt to warp to non-existing room "+string(target_room)+"!");
}