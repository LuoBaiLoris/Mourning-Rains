function bezier_create(start_x,start_y,end_x,end_y){
	var _bezier={};
	
	_bezier[$"start_point"]=[start_x,start_y];
	_bezier[$"end_point"]=[end_x,end_y];
	
	_bezier[$"points"]=[];
	
	return(_bezier);
	
	
}