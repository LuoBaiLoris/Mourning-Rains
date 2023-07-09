///@arg target,skip*
function BezierAnim_Destroy(){
	var TARGET=argument[0];
	var SKIP=argument[1];
	if(SKIP=undefined){
		SKIP=false;
	}
	
	for(var i=0; i<ds_list_size(global._bezier_anim); i++){
		var map=global._bezier_anim[|i];
		var INST=map[?BEZIER_ANIM_DATA.TARGET];
		if(instance_exists(TARGET)&&(TARGET=INST||TARGET=INST.object_index)){
			if(SKIP){
				bezier_use(map[?BEZIER_ANIM_DATA.BEZIER],1,INST);
			}
			ds_map_destroy(map);
			ds_list_delete(global._bezier_anim,i);
			i-=1;
		}
	}
	return true;
	
	
}