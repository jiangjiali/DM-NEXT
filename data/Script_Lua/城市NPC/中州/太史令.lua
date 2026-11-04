-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 太史令
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "太史令",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "斗转星移，岁月如歌。传世大陆五千年的光辉历史，给后人\\"
	say = say .. "留下了无尽的宝藏传说，还有无数张神秘的藏宝图流传于世\\"
	say = say .. "。如果你有藏宝图却无法参透其中奥妙的话，可以拿给我看\\"
	say = say .. "看，老夫是这个大陆上知识最渊博的人；当然，如果你挖到\\"
	say = say .. "了宝盒打不开，我还可以帮你无偿打开。\\"
	say = say .. "<解开藏宝图的秘密/@ExamMap>  <归还已开藏宝图/@BackMap>\\"
	say = say .. "<参与竞争挖宝/@Compete>\\"
	say = say .. "<帮我打开宝盒/@OpenBox>\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.ExamMap(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("普通藏宝图", 1) and 1 or 0)) ~= 0 then
		player:take_item("普通藏宝图", 1)
		goto_page = "loneyMap"
	else
		say = say .. "年轻人，做人要诚实，你没有藏宝图来找我干吗？老夫很生\\"
		say = say .. "气，后果很严重！\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.loneyMap(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

function M.BackMap(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你没有已开藏宝图，何谈归还？ \\\\"
	say = say .. "<离 开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.Compete(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你来的真是时候！目前正有一场竞争挖宝正在进行当中。你\\"
	say = say .. "赶紧出发，凭你的身手肯定可以第一个拿到宝盒！\\\\"
	say = say .. "<宝藏的秘密－竞争挖宝/@_RW_taskDesp&2201>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["_RW_taskDesp&2201"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这张藏宝图上面说的是一个故事，我把故事复述给你听。故\\"
	say = say .. "事里面会提到藏宝地点的大致范围，请你仔细推敲。你如此\\"
	say = say .. "聪明睿智，我相信你很快就可以找到宝藏。\\"
	say = say .. "<接受任务/@_RW_accept&2201>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["_RW_accept&2201"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "几百年前，一支人类精锐之师闯入了地下魔域六层，一路杀\\"
	say = say .. "敌无数，正待功成班师之际，魔域的夺命之柱冲天而起，刹\\"
	say = say .. "那间魔气纵横，夺魂无数。英雄们历经奋战，终因寡不敌众\\"
	say = say .. "全部壮烈牺牲。但是他们的浩然英气却纵横于魔域之中，并凝\\"
	say = say .. "结成混元天地之宝，其中有一处宝物就在<Color=red 地下魔域 6-2层通>\\"
	say = say .. "<Color=red 往心之魔域的入口附近>，有待于各位英雄去寻觅。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.OpenBox(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("远古宝盒", 1) and 1 or 0)) ~= 0 then
		player:take_item("远古宝盒", 1)
		goto_page = "BoxItem"
	else
		say = say .. "年轻人，做人要诚实，你没有远古的宝箱，来瞎掺和什么，\\"
		say = say .. "你这是欺骗行为。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.BoxItem(player)
	local say = ""
	local goto_page = nil
	local close = false
	do
		local __sel = ScriptEngine.range_random(2, 19)
		if __sel == 2 then
			player:give_item("银蛇剑", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了银蛇剑!")
		elseif __sel == 3 then
			player:give_item("离别钩", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了离别钩!")
		elseif __sel == 4 then
			player:give_item("无极", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了无极!")
		elseif __sel == 5 then
			player:give_item("龙纹", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了龙纹!")
		elseif __sel == 6 then
			player:give_item("魔法权杖", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了魔法权杖!")
		elseif __sel == 7 then
			player:give_item("骨玉", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了骨玉!")
		elseif __sel == 7 then
			player:give_item("血饮", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了血饮!")
		elseif __sel == 8 then
			player:give_item("龙牙利刃", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了龙牙利刃!")
		elseif __sel == 9 then
			player:give_item("铜锤", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了铜锤!")
		elseif __sel == 10 then
			player:give_item("裁决", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了裁决!")
		elseif __sel == 11 then
			player:give_item("屠龙刀", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了屠龙刀!")
		elseif __sel == 12 then
			player:give_item("雷裂刀", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了雷裂刀!")
		elseif __sel == 13 then
			player:give_item("紫月圣君", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了紫月圣君!")
		elseif __sel == 14 then
			player:give_item("耀阳圣尊", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了耀阳圣尊!")
		elseif __sel == 15 then
			player:give_item("碧海天王", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了碧海天王!")
		elseif __sel == 16 then
			player:give_item("大关刀", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了大关刀!")
		elseif __sel == 17 then
			player:give_item("狼牙棒", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了狼牙棒!")
		elseif __sel == 18 then
			player:give_item("井中月", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了井中月!")
		elseif __sel == 19 then
			player:give_item("血剑", 1)
			ScriptEngine.system_msg("太神奇了!<$username>的远古宝盒换得了血剑!")
		else
			player:give_item("乌木剑", 1)
			ScriptEngine.system_msg("真不幸!<$username>的远古宝盒换得了乌木剑!")
		end
	end
	return { say = say, page = goto_page, close = close }
end

return M
