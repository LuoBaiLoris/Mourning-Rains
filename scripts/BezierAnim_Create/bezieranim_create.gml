///@arg target,beizer,duration,delay*
function BezierAnim_Create(){
	var TARGET=argument[0];
	var BEZIER=argument[1];
	var DURATION=argument[2];
	var DELAY=argument[3];
	if(DELAY=undefined){
		DELAY=0;
	}
	
	if(instance_exists(TARGET)){
		for(var i=0; i<instance_number(TARGET); i++){
			var INST=instance_find(TARGET,i);
			var map=ds_map_create();
			ds_map_add(map,BEZIER_ANIM_DATA.TARGET,INST);
			ds_map_add(map,BEZIER_ANIM_DATA.BEZIER,BEZIER);
			ds_map_add(map,BEZIER_ANIM_DATA.DURATION,DURATION);
			ds_map_add(map,BEZIER_ANIM_DATA.DELAY,DELAY);
			ds_map_add(map,BEZIER_ANIM_DATA.TIME,0);
			ds_list_add(global._bezier_anim,map);
		}
	}
	return true;
	
	
}