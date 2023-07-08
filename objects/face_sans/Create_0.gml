if (live_call()) return live_result;

face_id=-1;
emotion=0;
gui=false;
talking=false;

_emotion_previous=-1;
_talking_previous=false;

image_xscale=2;
image_yscale=2;
sprite_index = spr_dialog_sans_face 
//Custom
idle_sprite[0]=spr_dialog_sans_face;
for (var i=0;i<6;i++)
{
	idle_sprite[i] = spr_dialog_sans_face
	idle_speed[i]=0;
	idle_image[i]=i;
	talk_sprite[i]=spr_dialog_sans_face;
	talk_image[i]=i;
	talk_speed[i]=0;
}



