-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 打听拜师任务
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "打听拜师任务",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["落霞岛_书店1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--打听拜师/@_RW_fulfilTaskDesp5>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp5(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "年轻人，谢谢你帮我的忙呢！你找我有什么事情吗？\\"
	say = say .. "<打听拜师/@_RW_fulfilTask5_5>                <没事/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask5_5(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:complete_task(6)
	player:give_exp(4200)
	player:add_gold(300)
	player:add_task(7)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "你可以在新手向导或者中州武馆教头处拜师，点击“拜师”\\"
	say = say .. "选项后输入师父的名字就可以了，前提是师父必须到场。\\"
	say = say .. "你现在去服装店老板那里看看，他会教你如何结婚的。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_书店10"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--打听拜师/@_RW_fulfilTaskDesp15>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp15(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:complete_task(19)
	player:give_exp(4200)
	player:add_gold(300)
	player:add_task(20)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "你可以在新手向导或者中州武馆教头处拜师，点击“拜师”\\"
	say = say .. "选项后输入师父的名字就可以了，前提是师父必须到场。\\"
	say = say .. "你现在去服装店老板那里看看，他会教你如何结婚的。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
