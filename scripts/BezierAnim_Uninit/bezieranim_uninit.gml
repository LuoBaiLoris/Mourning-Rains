function BezierAnim_Uninit(){
	while(!ds_list_empty(global._bezier_anim)){
		var map=global._bezier_anim[|0];
		ds_map_destroy(map);
		ds_list_delete(global._bezier_anim,0);
	}
	ds_list_destroy(global._bezier_anim);
	return true;
	
	
}