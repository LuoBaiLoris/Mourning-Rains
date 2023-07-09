///@arg bezier,step,id*
function bezier_use(){
	var BEZIER=argument[0];
	var STEP=argument[1];
	var ID=(argument_count>=3 ? argument[2] : id);
	
	with(ID){
		var pos=bezier_get_value(BEZIER,STEP);
		x=pos[0];
		y=pos[1];
	}
	return(x!=xprevious||y!=yprevious);
	
	
}