///@arg target
function BezierAnim_IsExists(){
	var TARGET=argument[0];
	var exists=false;
	
	for(var i=0; i<ds_list_size(global._bezier_anim); i++){
		var map=global._bezier_anim[|i];
		var INST=map[?BEZIER_ANIM_DATA.TARGET];
		if(instance_exists(TARGET)&&(TARGET=INST||TARGET=INST.object_index)){
			exists=true;
			break;
		}
	}
	return exists;
	
	
}