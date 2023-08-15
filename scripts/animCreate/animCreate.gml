/**
 *  animCreate(inst, change_var, curve, index, type, offset/target, duration ,delay) 创建Anim任务并自动执行。（注意只需要创建一次！）
 * @param	{Any}					inst
 * @param	{String}				change_var
 * @param	{Real}					curve
 * @param	{Real}					index
 * @param	{Real}					type
 * @param	{Real}					offset/target
 * @param	{Real}					duration
 * @param	{Real}					delay
 * @return	{Real}					AnimID
 */
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
	if is_array(_inst)
	{
		_anim.inst = [id,_inst]
	}
	
	array_insert(global._anim_list_l,array_length(global._anim_list_l),_anim)

}

