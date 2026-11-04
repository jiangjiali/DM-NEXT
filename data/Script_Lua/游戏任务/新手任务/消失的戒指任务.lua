-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 消失的戒指任务
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "消失的戒指任务",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["落霞岛_首饰1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--消失的戒指/@_RW_fulfilTaskDesp2>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "原来是你啊，村民们说，你来落霞村不久，已经帮大家做了\\"
	say = say .. "很多好事了，大家都很佩服你。呵呵，你能帮我一个忙吗？\\"
	say = say .. "<非常愿意/@_RW_fulfilTask2>                <没事/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask2(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(11, 2)
	player:give_exp(4200)
	player:add_gold(300)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "杂货铺掌柜在我这定做的结婚戒指不见了，真是急死人啊。\\"
	say = say .. "我一直没有找到，你能帮我找找看吗？听说近来不少人家都\\"
	say = say .. "失窃了，这到底是怎么回事呢？村里的老兵号称万事通，你\\"
	say = say .. "去找他问问吧。老兵在村子中央（253：248）的大树下。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["落霞岛_老兵1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我夜观天象，发现黑气冲天，煞星犯北斗，以此断定，村里\\"
	say = say .. "必有妖孽作乱。是首饰店的杏子让你来的吧，你说吧，有什\\"
	say = say .. "么事情需要我帮忙。\\"
	say = say .. "<打听结婚戒指/@_RW_fulfilTask5>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask5(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(11, 3)
	player:give_exp(7500)
	player:add_gold(300)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "哈哈，这事问我，你算找对人了，村子近来不怎么太平啊！\\"
	say = say .. "昨天有一只棍犬混进了村子，很有可能是那家伙干的坏事。\\"
	say = say .. "你回去把这事告诉首饰店店员吧，别让她等着急了。首饰店\\"
	say = say .. "在村子中央的（241：232）附近。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["落霞岛_首饰2"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--消失的戒指/@_RW_fulfilTaskDesp6>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp6(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "村里的老兵以前跟白云道观的蛟川道人学过道家法术，神通\\"
	say = say .. "广大。他甚至可以把人瞬间转移到很远的地方……对了，老\\"
	say = say .. "兵告诉你答案了吗？\\"
	say = say .. "<转告老兵的答案/@_RW_fulfilTask6>                <不知道/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask6(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(11, 4)
	player:give_exp(18000)
	player:add_gold(300)
	player:give_item("幻彩项链", 1, true)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "快去杀死棍犬吧，结婚戒指就在它身上。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["落霞岛_首饰3"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--消失的戒指/@_RW_fulfilTaskDesp7>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp7(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "棍犬是一种很凶猛的动物，普通人要对付它可是要花一番气\\"
	say = say .. "力的。你这么快就回来了，难道你真的如村民传说中那么勇\\"
	say = say .. "敢和强大吗？了不起。你真的杀死棍犬，抢回结婚戒指了？\\"
	say = say .. "<交还结婚戒指/@_RW_fulfilTask7_7>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask7_7(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("结婚戒指", 1) and 1 or 0)) ~= 0 then
		player:complete_task(11)
		player:take_item("结婚戒指", 1)
		player:give_exp(8000)
		player:add_gold(300)
		player:give_item("结婚戒指", 1)
		player:add_task(12)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
		say = say .. "果然是英雄出少年，名不虚传啊。再麻烦你跑一趟，快把戒\\"
		say = say .. "指交给杂货铺掌柜吧，关乎他的人生大事哦。杂货铺就在村\\"
		say = say .. "子中央的（233：255）附近。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

M["海角_首饰1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--消失的戒指/@_RW_fulfilTaskDesp19>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp19(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "原来是你啊，村民们说，你来海角村不久，已经帮大家做了\\"
	say = say .. "很多好事了，大家都很佩服你。呵呵，你能帮我一个忙吗？\\"
	say = say .. "<非常愿意/@_RW_fulfilTask19_19>                <没事/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask19_19(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(24, 2)
	player:give_exp(4200)
	player:add_gold(300)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "杂货铺掌柜在我这定做的结婚戒指不见了，真是急死人啊。\\"
	say = say .. "我一直没有找到，你能帮我找找看吗？听说近来不少人家都\\"
	say = say .. "失窃了，这到底是怎么回事呢？村里的老兵号称万事通，你\\"
	say = say .. "去找他问问吧。老兵在村子中央（400：620）附近。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_老兵1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--消失的戒指/@_RW_fulfilTaskDesp20>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp20(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我夜观天象，发现黑气冲天，煞星犯北斗，以此断定，村里\\"
	say = say .. "必有妖孽作乱。是首饰店的小娟让你来的吧，你说吧，有什\\"
	say = say .. "么事情需要我帮忙。\\"
	say = say .. "<打听结婚戒指/@_RW_fulfilTask20_20>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask20_20(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(24, 3)
	player:give_exp(7500)
	player:add_gold(300)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "哈哈，这事问我，你算找对人了，村子近来不怎么太平啊！\\"
	say = say .. "昨天有一只棍犬混进了村子，很有可能是那家伙干的坏事。\\"
	say = say .. "你回去把这事告诉首饰店店员吧，别让她等着急了。首饰店\\"
	say = say .. "在村子中央的（241：232）附近。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_首饰2"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--消失的戒指/@_RW_fulfilTaskDesp21>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp21(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "村里的老兵以前跟白云道观的蛟川道人学过道家法术，神通\\"
	say = say .. "广大。他甚至可以把人瞬间转移到很远的地方……对了，老\\"
	say = say .. "兵告诉你答案了吗？\\"
	say = say .. "<转告老兵的答案/@_RW_fulfilTask21_21>                <不知道/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask21_21(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(24, 4)
	player:give_exp(18000)
	player:add_gold(300)
	player:give_item("幻彩项链", 1, true)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "快去杀死棍犬吧，结婚戒指就在它身上。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_首饰3"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--消失的戒指/@_RW_fulfilTaskDesp22>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp22(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("结婚戒指", 1) and 1 or 0)) ~= 0 then
		player:complete_task(24)
		player:take_item("结婚戒指", 1)
		player:give_exp(8000)
		player:add_gold(300)
		player:give_item("结婚戒指", 1)
		player:add_task(25)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300绑定金币。")
		say = say .. "果然是英雄出少年，名不虚传啊。再麻烦你跑一趟，快把戒\\"
		say = say .. "指交给杂货铺掌柜吧，关乎他的人生大事哦。杂货铺就在北\\"
		say = say .. "门右边的（429：600）附近。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

return M
