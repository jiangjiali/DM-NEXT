-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 打听好友任务
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "打听好友任务",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["落霞岛_杂货"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(5) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--打听加好友/@_RW_fulfilTaskDesp1>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(12) == 1 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "求婚的勇气任务", "落霞岛_杂货1")
	elseif ((player:task_step(12) == 3 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "求婚的勇气任务", "落霞岛_杂货2")
	elseif ((player:task_step(12) == 6 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "求婚的勇气任务", "落霞岛_杂货3")
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
	say = say .. "年轻人，是元铁匠让你来的吧，他刚才还在我面前夸你能干\\"
	say = say .. "呢！你找我有什么事情吗？\\"
	say = say .. "<打听加好友/@_RW_fulfilTask1_1>                <没事/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask1_1(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:complete_task(5)
	player:give_exp(4200)
	player:add_gold(300)
	player:add_task(6)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "你可以点右下界面中的社交界面（CTRL+I），里面有加好友\\"
	say = say .. "的选项，输入你要加的人的名字点确定就可以啦。如果你的\\"
	say = say .. "朋友在你身边的话，可以直接右键点他的头像进行操作。\\"
	say = say .. "你现在去书店老板那里看看，他会教你如何拜师的。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_杂货"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(18) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--打听加好友/@_RW_fulfilTaskDesp10>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(25) == 1 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "求婚的勇气任务", "海角_杂货1")
	elseif ((player:task_step(25) == 3 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "求婚的勇气任务", "海角_杂货2")
	elseif ((player:task_step(25) == 6 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "求婚的勇气任务", "海角_杂货3")
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
	say = say .. "年轻人，是元铁匠让你来的吧，他刚才还在我面前夸你能干\\"
	say = say .. "呢！你找我有什么事情吗？\\"
	say = say .. "<打听加好友/@_RW_fulfilTask10_10>                <没事/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask10_10(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:complete_task(18)
	player:give_exp(4200)
	player:add_gold(300)
	player:add_task(19)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "你可以点右下界面中的社交界面（CTRL+I），里面有加好友\\"
	say = say .. "的选项，输入你要加的人的名字点确定就可以啦。如果你的\\"
	say = say .. "朋友在你身边的话，可以直接右键点他的头像进行操作。\\"
	say = say .. "你现在去书店老板那里看看，他会教你如何拜师的。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
