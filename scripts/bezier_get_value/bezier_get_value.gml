function bezier_get_value(_bezier,perc){
	var normal=perc/100;
	
	var coltroler_points=[];
	coltroler_points[0]=_bezier[$"start_point"];
	coltroler_points=array_concat(coltroler_points,_bezier[$"points"]);
	array_push(coltroler_points,_bezier[$"end_point"]);
	
	var next_coltroler_points=[];
	while(array_length(coltroler_points)>1){
		next_coltroler_points=[];
		
		for(var i=0; i<array_length(coltroler_points)-1; i++){
			var point1=coltroler_points[i];
			var point2=coltroler_points[i+1];
			
			var next_point=[];
			next_point[0]=lerp(point1[0],point2[0],normal);
			next_point[1]=lerp(point1[1],point2[1],normal);
			next_coltroler_points[i]=next_point;
		}
		coltroler_points=next_coltroler_points;
	}
	return(coltroler_points[0]);
	
	
}