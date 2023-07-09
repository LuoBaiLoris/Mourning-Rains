function animStep()
{
	if array_length(global._anim_list_l) != 0
	{
		for(var i=0;i<array_length(global._anim_list_l);i++)
		{
			var anim = global._anim_list_l[i]
			if anim.time <= anim.during
			{
				anim.time ++
				if anim.time >= 0
				{
					var _channel = animcurve_get_channel(anim.anim_curve, anim.anim_index);
					var _val = animcurve_channel_evaluate(_channel, 1/anim.during*anim.time)*(anim.value_type);
					if anim.type == 1
					{
						_val = animcurve_channel_evaluate(_channel, 1/anim.during*anim.time)*(anim.value_type-anim.start);
					}
					if instance_exists(anim.inst)
					{
						variable_instance_set(anim.inst,anim.value,anim.start+_val)
					}
					else
					{
						array_delete(global._anim_list_l,i,1)
					}
				}
			}
			else if anim.time == anim.during+1
			{
				array_delete(global._anim_list_l,i,1)
			}
		}
	}
}
