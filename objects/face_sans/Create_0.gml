if (live_call()) return live_result;

face_id=-1;
emotion=0;
gui=false;
talking=false;

_emotion_previous=-1;
_talking_previous=false;

image_xscale=2;
image_yscale=2;

//Custom
idle_sprite[0]=spr_dialog_sans_face;
idle_image[0]=0;
idle_speed[0]=0;
talk_sprite[0]=spr_dialog_sans_face;
talk_image[0]=0;
talk_speed[0]=0;