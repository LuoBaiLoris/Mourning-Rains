if (live_call()) return live_result;
//show_debug_message(1)
if room == room_grillbys
{
	show_debug_overlay(false)
	time ++
	if time == 10
	{
		Dialog_Add("{font 4}{voice 2}* 嘿,小鬼头,你在吃点啥")
		Dialog_Add("*{font 3}{voice 0} 你摇了摇头,表示没在吃什么")
		
		Dialog_Add("{font 4}{voice 2}* 不吃也好,只要你别再挥舞起你那把&刀子到处砍怪物就好")
		Dialog_Add("*{font 3}{voice 0} 不好的回忆涌上心头,你面露难色")
		
		Dialog_Add("{font 4}{voice 2}* 瞧你那丧气的样子,意料之中的很让&人觉得讽刺")
		Dialog_Add("{font 4}{voice 2}* 死了的怪物就是死了,这是【尘埃落&地】的事实")
		Dialog_Add("{font 4}{voice 2}* 回见,享受你的“油炸空气”吧")
		Dialog_Add("*{font 3}{voice 0} 你叫住了衫斯")
		
		Dialog_Add("{font 4}{voice 2}* 怎么,你还想和我分享一下你的“美&食”？")
		Dialog_Add("{font 4}{voice 2}* 我还有一【骷髅】子事情要做,比如&去岗哨上打个盹什么的")
		Dialog_Add("*{font 3}{voice 0} 你说想至少为他们做点什么补偿")
		
		Dialog_Add("{font 4}{voice 2}* 哈,那你自己做不就好了,你不是还有&你那“决心”和【发光的小星星】么")
		Dialog_Add("*{font 3}{voice 0} 你和衫斯讲了讲决心的限制")
		
		Dialog_Add("{font 4}{voice 2}* 所以,你这是找上我了是吧,我稍微&想一下")
		Dialog_Add("{font 4}{voice 2}* ...")
		Dialog_Add("{font 4}{voice 2}* 看在帕派瑞斯的份上,我答应你")
		Dialog_Add("*{font 3}{voice 0} 你开心的点了点头")
		
		Dialog_Add("{font 4}{voice 2}* 但你记住,你在过程中不能伤害任何&怪物")
		Dialog_Add("{font 4}{voice 2}* 否则我会让你再次 横 尸 此 地")
		Dialog_Add("{font 4}{voice 2}* 走了")
		Dialog_Start();
	}
}