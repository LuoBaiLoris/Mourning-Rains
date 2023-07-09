///@arg {id}实例/inst,{string}变量/value,{id}动画曲线/AnimCurve,{int}索引/index,{bool}类型/type,{number}开始值/start,{number}偏移值/offset||目标值/target,{int}持续时间/duration,{int}延迟/delay*
function animCreate(){
	var _inst=argument[0];
	var _value=argument[1];
	var _curve=argument[2];
	var _index=argument[3];
	var _type=argument[4];
	var _start=argument[5];
	var _value_type=argument[6];
	var _during=argument[7];
	
	var _delay = 0
	if argument_count > 8
	{
		_delay = argument[8]
	}
	var _anim = 
	{
		inst : _inst,
		value : _value,
		anim_curve : _curve,	
		anim_index : _index,
		during : _during,
		time : -_delay,
		start : _start,
		type : _type,
		value_type : _value_type
	}
	
	array_insert(global._anim_list_l,array_length(global._anim_list_l),_anim)
}

