-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 打听挖矿任务
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "打听挖矿任务",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["落霞岛_铁匠1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(4) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--打听挖矿/@_RW_fulfilTaskDesp1>\\\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "年轻人，你帮屠夫阿三磨好刀子了啊，他刚才还在我面前夸\\"
	say = say .. "你能干呢！你找我有什么事情吗？\\"
	say = say .. "<打听挖矿/@_RW_fulfilTask1_1>                <没事/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask1_1(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:complete_task(4)
	player:give_exp(4200)
	player:add_gold(300)
	player:add_task(5)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "你可以在我这里购买鹤嘴锄，装备上后去落霞的东南部的矿\\"
	say = say .. "洞（476，400）中，攻击矿洞的墙壁就可以获得矿石了，回\\"
	say = say .. "来卖给我，我会根据纯度收购的。\\"
	say = say .. "你现在去杂货店掌柜那里看看，他会教你如何加好友的。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_铁匠11"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(17) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--打听挖矿/@_RW_fulfilTaskDesp10>\\\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp10(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "年轻人，你帮屠夫阿三磨好刀子了啊，他刚才还在我面前夸\\"
	say = say .. "你能干呢！你找我有什么事情吗？\\"
	say = say .. "<打听挖矿/@_RW_fulfilTask10_10>                <没事/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask10_10(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:complete_task(17)
	player:give_exp(4200)
	player:add_gold(300)
	player:add_task(18)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "你可以在我这里购买鹤嘴锄，装备上后去落霞的东南部的矿\\"
	say = say .. "洞（476，400）中，攻击矿洞的墙壁就可以获得矿石了，回\\"
	say = say .. "来卖给我，我会根据纯度收购的。\\"
	say = say .. "你现在去杂货店掌柜那里看看，他会教你如何加好友的。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
