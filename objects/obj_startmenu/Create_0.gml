Fader_Fade(1,0,60)
audio_stop_all()	
audio_play_sound(bgm_Its_raining_somewhere_else,0,true)

selected=0
temp=false
audio=false
x1=room_width/5
x2=room_width/5*4
y1=room_height/20*11
y2=room_height/4*3
Anim_Create(id,"x1",ANIM_TWEEN.SINE,ANIM_EASE.OUT,320,room_width/5-320,60)
Anim_Create(id,"x2",ANIM_TWEEN.SINE,ANIM_EASE.OUT,320,room_width/5*4-320,60)
Anim_Create(id,"y1",ANIM_TWEEN.SINE,ANIM_EASE.OUT,240,room_height/20*11-240,60)
Anim_Create(id,"y2",ANIM_TWEEN.SINE,ANIM_EASE.OUT,240,room_height/4*3-240,60)