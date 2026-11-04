-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 屠夫刀子任务
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "屠夫刀子任务",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["落霞岛_屠夫"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--屠夫的刀子/@_RW_fulfilTaskDesp1>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(1) == 3 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--屠夫的刀子/@_RW_fulfilTaskDesp3>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(1) == 4 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--屠夫的刀子/@_RW_fulfilTaskDesp4>\\\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp4(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "不错不错，这么快就找到了3块高品质的鹿肉，你的进步蛮\\"
	say = say .. "快嘛！快把鹿肉给我吧，乡亲们等着我开张呢！\\"
	say = say .. "<交还鹿肉/@_RW_fulfilTask4_4>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask4_4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("鹿肉", 3) and 1 or 0)) ~= 0 then
		player:complete_task(1)
		player:take_item("鹿肉", 3)
		player:give_item("幻彩戒指", 2, true)
		player:give_item("新鲜鹿肉", 1)
		player:add_gold(100)
		player:give_exp(450)
		player:add_task(2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了100金币。")
		say = say .. "太好了，今年过节乡亲们可都有口福了！今天上午村里的炼\\"
		say = say .. "药师到我这定购了一些鹿肉，我一直没时间给他送过去，你\\"
		say = say .. "帮我送给他吧，他就在村子南门边的药铺（219：269）。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "是新手向导让你来的吧。这老小子人倒是好，带的新人桃李\\"
	say = say .. "满天下；就是贪吃了点，经常到我这里蹭饭。现在我碰到困\\"
	say = say .. "难，他还记得派人来帮我，算是有点良心。我有事情需要你\\"
	say = say .. "帮忙，你愿意吗？\\"
	say = say .. "<愿意接受/@_RW_fulfilTaskDesp1_1>                <我没空/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp1_1(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(1, 2)
	player:give_exp(150)
	player:add_gold(100)
	player:give_item("磨损的刀子", 1)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了100金币。")
	say = say .. "近来生意兴隆，每天客户盈门，我都忙得没时间去铁匠铺打\\"
	say = say .. "磨杀鹿刀了。能否麻烦你帮我去找铁匠打磨一下刀子呢？我\\"
	say = say .. "会酬谢你的。他就在村子西门附近的铁匠铺（227：216）。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["落霞岛_铁匠"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1) == 2 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--屠夫的刀子/@_RW_fulfilTaskDesp2>\\\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这是屠夫阿三的杀鹿刀吧，阿三这家伙天生神力，应该去从\\"
	say = say .. "军报国啊，做个屠夫真是埋没了他！阿三虽然杀鹿技艺精湛\\"
	say = say .. "无比，但是没有我的磨刀功夫，他再厉害也是白搭，呵呵。\\"
	say = say .. "你把刀子交给我吧！\\"
	say = say .. "<麻烦你磨刀/@_RW_fulfilTask2_2>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask2_2(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(1, 3)
	player:give_exp(300)
	player:add_gold(100)
	player:take_item("磨损的刀子", 1)
	player:give_item("锋利的刀子", 1)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了100金币。")
	say = say .. "刀子已经帮你磨好了，看你初来乍到，就照顾你，不收钱了\\"
	say = say .. "。快把磨好的刀子送还给屠夫吧，他等得着急呢！\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp3(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "呵呵，铁匠做事就是快，这村里我最佩服他了。别看他瘦瘦\\"
	say = say .. "的，但是一身气力，丝毫不输于我。你把刀子还给我吧，有\\"
	say = say .. "了锋利的刀，我向你展示一下“庖丁解鹿”的功夫，哈哈！\\"
	say = say .. "<刀磨好了，给你/@_RW_fulfilTask3_3>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask3_3(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(1, 4)
	player:give_exp(300)
	player:add_gold(100)
	player:take_item("锋利的刀子", 1)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了100金币。")
	say = say .. "谢谢你，年轻人，作为报酬就送你些零钱吧。落霞村里一年\\"
	say = say .. "一度的庆祝节日到了，鹿肉有些供不应求，能不能帮忙找些\\"
	say = say .. "品质高的鹿肉来，村子周围有很多鹿跑来跑去的。<color=green 你杀死鹿>\\"
	say = say .. "<color=green 之后，将鼠标放在鹿的尸体上面，按住ALT+鼠标左键，就可>\\"
	say = say .. "<color=green 以获得鹿肉了>。提示：需要任意品质的鹿肉1块。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_屠夫"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(14) == 1 and 1 or 0)) ~= 0 then
		say = say .. "<新手任务--屠夫的刀子/@_RW_fulfilTaskDesp10>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(14) == 3 and 1 or 0)) ~= 0 then
		say = say .. "<新手任务--屠夫的刀子/@_RW_fulfilTaskDesp12>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(14) == 4 and 1 or 0)) ~= 0 then
		say = say .. "<新手任务--屠夫的刀子/@_RW_fulfilTaskDesp13>\\\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp13(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "不错不错，这么快就找到了 3块高品质的猪肉，你的进步蛮\\"
	say = say .. "快嘛！快把猪肉给我吧，乡亲们等着我开张呢！\\"
	say = say .. "<交还猪肉/@_RW_fulfilTask13_13>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask13_13(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("猪肉", 3) and 1 or 0)) ~= 0 then
		player:complete_task(14)
		player:take_item("猪肉", 3)
		player:give_item("幻彩戒指", 2, true)
		player:give_item("新鲜猪肉", 1)
		player:add_gold(100)
		player:give_exp(450)
		player:add_task(15)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了450金币。")
		say = say .. "太好了，今年过节乡亲们可都有口福了！今天上午村里的炼\\"
		say = say .. "药师到我这定购了一些猪肉，我一直没时间给他送过去，你\\"
		say = say .. "帮我送给他吧，他就在村子中央的药铺（417：615）。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp12(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "呵呵，铁匠做事就是快，这村里我最佩服他了。别看他瘦瘦\\"
	say = say .. "的，但是一身气力，丝毫不输于我。你把刀子还给我吧，有\\"
	say = say .. "了锋利的刀，我向你展示一下“庖丁解猪”的功夫，哈哈！\\"
	say = say .. "<刀磨好了，给你/@_RW_fulfilTask12_12>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask12_12(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(14, 4)
	player:give_exp(300)
	player:add_gold(100)
	player:take_item("锋利的刀子", 1)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了100金币。")
	say = say .. "谢谢你，年轻人，作为报酬就送你些零钱吧。海角村里一年\\"
	say = say .. "一度的庆祝节日到了，猪肉有些供不应求，能不能帮忙找些\\"
	say = say .. "品质高的猪肉来，村子周围有很多猪跑来跑去的。<color=green 你杀死猪>\\"
	say = say .. "<color=green 之后，将鼠标放在猪的尸体上面，按住ALT+鼠标左键，就可>\\"
	say = say .. "<color=green 以获得猪肉了>。提示：需要任意品质的猪肉1块。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp10(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "是新手向导让你来的吧。这老小子人倒是好，带的新人桃李\\"
	say = say .. "满天下；就是贪吃了点，经常到我这里蹭饭。现在我碰到困\\"
	say = say .. "难，他还记得派人来帮我，算是有点良心。我有事情需要你\\"
	say = say .. "帮忙，你愿意吗？\\"
	say = say .. "<愿意接受/@_RW_fulfilTask10_10>                <我没空/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask10_10(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(14, 2)
	player:give_exp(150)
	player:add_gold(100)
	player:give_item("磨损的刀子", 1)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了100金币。")
	say = say .. "近来生意兴隆，每天客户盈门，我都忙得没时间去铁匠铺打\\"
	say = say .. "磨杀猪刀了。能否麻烦你帮我去找铁匠打磨一下刀子呢？我\\"
	say = say .. "会酬谢你的。他就在村子北门附近的铁匠铺（417：595）。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_铁匠10"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(14) == 2 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--屠夫的刀子/@_RW_fulfilTaskDesp11>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(17) == 1 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "打听挖矿任务", "海角_铁匠11")
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp11(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这是屠夫阿三的杀猪刀吧，阿三这家伙天生神力，应该去从\\"
	say = say .. "军报国啊，做个屠夫真是埋没了他！阿三虽然杀猪技艺精湛\\"
	say = say .. "无比，但是没有我的磨刀功夫，他再厉害也是白搭，呵呵。\\"
	say = say .. "你把刀子交给我吧！\\"
	say = say .. "<麻烦你磨刀/@_RW_fulfilTask11_11>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask11_11(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(14, 3)
	player:give_exp(300)
	player:add_gold(100)
	player:take_item("磨损的刀子", 1)
	player:give_item("锋利的刀子", 1)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了100金币。")
	say = say .. "刀子已经帮你磨好了，看你初来乍到，就照顾你，不收钱了\\"
	say = say .. "。快把磨好的刀子送还给屠夫吧，他等得着急呢！\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
