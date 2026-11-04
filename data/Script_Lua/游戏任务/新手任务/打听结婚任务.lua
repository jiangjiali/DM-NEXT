-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 打听结婚任务
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "打听结婚任务",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["落霞岛_衣服"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(7) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--打听结婚/@_RW_fulfilTaskDesp1>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(12) == 2 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "求婚的勇气任务", "落霞岛_衣服1")
	elseif ((player:task_step(13) == 1 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "王都送信任务", "落霞岛_衣服2")
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
	say = say .. "年轻人，是书店老板让你来的吧，他刚才还在我面前夸你能\\"
	say = say .. "干呢！你找我有什么事情吗？\\"
	say = say .. "<打听结婚/@_RW_fulfilTask1_1>                <没事/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask1_1(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:complete_task(7)
	player:give_exp(4200)
	player:add_gold(300)
	player:add_task(8)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "想结婚的话，要经历重重考验才行。\\"
	say = say .. "到机关洞中找到红娘，她会帮助你完成结婚任务的。\\"
	say = say .. "你现在去炼药师那里看看，他会教你如何交易的。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_衣服"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(20) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--打听结婚/@_RW_fulfilTaskDesp10>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(25) == 2 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "求婚的勇气任务", "海角_衣服1")
	elseif ((player:task_step(26) == 1 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "王都送信任务", "海角_衣服2")
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
	player:complete_task(20)
	player:give_exp(4200)
	player:add_gold(300)
	player:add_task(21)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "想结婚的话，要经历重重考验才行。\\"
	say = say .. "到机关洞中找到红娘，她会帮助你完成结婚任务的。\\"
	say = say .. "你现在去炼药师那里看看，他会教你如何交易的。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
