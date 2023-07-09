function BezierAnim_Step(){
	for(var i=0; i<ds_list_size(global._bezier_anim); i++){
		var map=global._bezier_anim[|i];
		var TARGET=map[?BEZIER_ANIM_DATA.TARGET];
		var BEZIER=map[?BEZIER_ANIM_DATA.BEZIER];
		var DURATION=map[?BEZIER_ANIM_DATA.DURATION];
		var DELAY=map[?BEZIER_ANIM_DATA.DELAY];
		var TIME=map[?BEZIER_ANIM_DATA.TIME];
		if(DELAY>0){
			map[?BEZIER_ANIM_DATA.DELAY]-=1;
		}else{
			bezier_use(BEZIER,TIME/DURATION*100,TARGET);
			map[?BEZIER_ANIM_DATA.TIME]+=1;
			if(map[?BEZIER_ANIM_DATA.TIME]>DURATION){
				ds_map_destroy(map);
				ds_list_delete(global._bezier_anim,i);
				i-=1;
			}
		}
	}
	
	
}