-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: FirstEnv
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "FirstEnv",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.First(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:add_var("RedGem", "0")
	player:add_var("BlueGem", "0")
	player:add_var("BerylGem", "0")
	player:add_var("deathid", "0")
	player:add_var("deathx", "0")
	player:add_var("deathy", "0")
	goto_page = "firstlogin"
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.firstlogin(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你好，欢迎你第一次来到《传奇世界》，精彩世界在等你游历！\\"
	say = say .. "作为新人，现在你还一无所有，不过你马上就能得到一些必备\\"
	say = say .. "物品了。下面有三种兵器可供挑选，还有新手任务等着你哦！\\"
	say = say .. "选择<硬木剑/@give1>\\"
	say = say .. "选择<桃木剑/@give2>\\"
	say = say .. "选择<竹剑/@give3>\\"
	say = say .. "查看<武器介绍/@lista>\\"
	say = say .. "<新手任务/@goodnew>\\"
	say = say .. "<确定/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.give1(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:give_item("硬木剑", 1, true)
	goto_page = "clothes"
	return { say = say, page = goto_page, close = close }
end

function M.give2(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:give_item("桃木剑", 1, true)
	goto_page = "clothes"
	return { say = say, page = goto_page, close = close }
end

function M.give3(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:give_item("竹剑", 1, true)
	goto_page = "clothes"
	return { say = say, page = goto_page, close = close }
end

function M.lista(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "桃木剑：攻击2-5。\\"
	say = say .. "竹剑：攻击3-5 诅咒+1。\\"
	say = say .. "硬木剑：攻击2-4 幸运+1。\\\\"
	say = say .. "<挑选武器/@firstlogin>"
	return { say = say, page = goto_page, close = close }
end

function M.goodnew(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你可以在海角村里的398，590和落霞岛村里的248，240附近\\"
	say = say .. "找到新手向导，他可以为你提供帮助，同时你也可以在他那\\"
	say = say .. "里开始“新手任务”！\\\\"
	say = say .. "<知道了/@firstlogin>"
	return { say = say, page = goto_page, close = close }
end

function M.clothes(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "祝您在本服务器游戏愉快！\\\\"
	say = say .. "<测试领取/@books>\\\\"
	say = say .. "<确定/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.books(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("job") == 0 and 1 or 0)) ~= 0 then
		goto_page = "job1"
	elseif ((player:get_var("job") == 1 and 1 or 0)) ~= 0 then
		goto_page = "job2"
	elseif ((player:get_var("job") == 2 and 1 or 0)) ~= 0 then
		goto_page = "job3"
	end
	if (1) ~= 0 then
		player:set_level(56)
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

function M.job1(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:add_magic("初级剑法", 2)
	player:add_magic("攻杀剑法", 2)
	player:add_magic("护身真气", 4)
	player:add_magic("刺杀剑术", 2)
	player:add_magic("半月弯刀", 2)
	player:add_magic("野蛮冲撞", 4)
	player:add_magic("烈火剑法", 2)
	player:add_magic("战魂真悟", 2)
	player:add_magic("破击剑法", 2)
	player:add_magic("突斩", 2)
	player:add_magic("破盾斩", 2)
	player:add_magic("金刚护体", 2)
	player:add_magic("擒龙手", 2)
	player:add_magic("移形换影", 2)
	player:give_item("狂怒旋风", 1)
	player:give_item("英勇咆哮", 1)
	player:give_item("八方分影斩", 1)
	player:give_item("无赦", 1)
	player:give_item("血煞勋章", 1)
	player:give_item("血煞靴子", 1)
	player:give_item("血煞腰带", 1)
	player:give_item("血煞头盔", 1)
	player:give_item("血煞项链", 1)
	player:give_item("血煞戒指", 2)
	player:give_item("血煞手镯", 2)
	if ((player:get_var("sex") == 0 and 1 or 0)) ~= 0 then
		player:give_item("蟠龙金甲", 1)
	else
		player:give_item("蟠龙金袍", 1)
	end
	return { say = say, page = goto_page, close = close }
end

function M.job2(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:add_magic("小火球", 4)
	player:add_magic("火炎刀", 4)
	player:add_magic("抗拒火环", 2)
	player:add_magic("地狱火焰", 2)
	player:add_magic("疾光电影", 2)
	player:add_magic("雷电术", 2)
	player:add_magic("诱惑之光", 2)
	player:add_magic("瞬间移动", 2)
	player:add_magic("火墙", 2)
	player:add_magic("爆裂火焰", 4)
	player:add_magic("地狱雷光", 2)
	player:add_magic("魔法盾", 2)
	player:add_magic("圣言术", 2)
	player:add_magic("冰咆哮", 2)
	player:add_magic("化身蝙蝠", 2)
	player:add_magic("法之魄", 2)
	player:add_magic("兽灵术", 2)
	player:add_magic("风影盾", 2)
	player:add_magic("狂龙紫电", 2)
	player:add_magic("流星火雨", 2)
	player:add_magic("魔魂术", 2)
	player:give_item("寒冰风暴", 1)
	player:give_item("电灵附体", 1)
	player:give_item("夺魄", 1)
	player:give_item("魔雷勋章", 1)
	player:give_item("魔雷靴子", 1)
	player:give_item("魔雷腰带", 1)
	player:give_item("魔雷头盔", 1)
	player:give_item("魔雷项链", 1)
	player:give_item("魔雷手镯", 2)
	player:give_item("魔雷戒指", 2)
	if ((player:get_var("sex") == 0 and 1 or 0)) ~= 0 then
		player:give_item("蟠龙金甲", 1)
	else
		player:give_item("蟠龙金袍", 1)
	end
	return { say = say, page = goto_page, close = close }
end

function M.job3(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:add_magic("治疗术", 2)
	player:add_magic("精神战法", 2)
	player:add_magic("施毒术", 4)
	player:add_magic("灵魂道符", 4)
	player:add_magic("幽灵盾", 2)
	player:add_magic("神圣战甲术", 2)
	player:add_magic("困魔咒", 2)
	player:add_magic("骷髅召唤术", 2)
	player:add_magic("隐身术", 2)
	player:add_magic("集体隐身术", 2)
	player:add_magic("群体治愈术", 2)
	player:add_magic("召唤神兽", 2)
	player:add_magic("狮子吼", 2)
	player:add_magic("道心清明", 2)
	player:add_magic("神光术", 2)
	player:add_magic("解毒术", 2)
	player:add_magic("强化骷髅术", 2)
	player:add_magic("幽冥火咒", 2)
	player:add_magic("心灵召唤", 2)
	player:add_magic("遁地", 2)
	player:give_item("聚灵", 1)
	player:give_item("幽泉勋章", 1)
	player:give_item("幽泉靴子", 1)
	player:give_item("幽泉腰带", 1)
	player:give_item("幽泉头盔", 1)
	player:give_item("幽泉项链", 1)
	player:give_item("幽泉手镯", 2)
	player:give_item("幽泉戒指", 2)
	if ((player:get_var("sex") == 0 and 1 or 0)) ~= 0 then
		player:give_item("蟠龙金甲", 1)
	else
		player:give_item("蟠龙金袍", 1)
	end
	return { say = say, page = goto_page, close = close }
end

return M
