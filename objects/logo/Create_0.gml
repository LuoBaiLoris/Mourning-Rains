if (live_call()) return live_result;
_hint=false;
alarm[0]=200;
alarm[1]=1200;
time = 0
audio_stop_all()
audio_play_sound(snd_logo,0,false);
audio_play_sound(bgm_Its_raining_somewhere_else,0,true)