function animDestroy(_inst,_value)
{
	if array_length(global._anim_list_l) != 0
	{
		for(var i=0;i<array_length(global._anim_list_l);i++)
		{
			var anim = global._anim_list_l[i]
			if is_array(anim.inst)
			{
				if instance_exists(anim.inst[0])
				{
					if anim.value == _value
					{
						array_delete(global._anim_list_l,i,1)
					}
				}
			}
			else if instance_exists(anim.inst)
			{
				if anim.inst == _inst
				{
					if anim.value == _value
					{
						array_delete(global._anim_list_l,i,1)
					}
				}
			}
		}
	}
}