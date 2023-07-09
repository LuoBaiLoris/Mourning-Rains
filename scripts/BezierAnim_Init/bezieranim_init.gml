function BezierAnim_Init(){
	
	global._bezier_anim=ds_list_create();
	
	enum BEZIER_ANIM_DATA{
		TARGET,
		BEZIER,
		DURATION,
		DELAY,
		TIME
	}
	
	return true;
	
	
}