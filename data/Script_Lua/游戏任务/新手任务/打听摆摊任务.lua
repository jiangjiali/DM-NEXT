-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 打听摆摊任务
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "打听摆摊任务",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["落霞_首饰"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(9) == 1 and 1 or 0)) ~= 0 then
		say = say .. "年轻人，是炼药师让你来的吧，他刚才还在我面前夸你能干\\"
		say = say .. "呢！你找我有什么事情吗？\\"
		say = say .. "<打听摆摊/@_RW_fulfilTask1>                <没事/@exit>"
	elseif ((player:task_step(11) == 1 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "消失的戒指任务", "落霞岛_首饰1")
	elseif ((player:task_step(11) == 3 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "消失的戒指任务", "落霞岛_首饰2")
	elseif ((player:task_step(11) == 5 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "消失的戒指任务", "落霞岛_首饰3")
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask1(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:complete_task(9)
	player:give_exp(4200)
	player:add_gold(8000)
	player:add_task(10)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了8000金币。")
	say = say .. "想摆摊出售东西的话，只要点击界面右下方的摆摊按钮就可\\"
	say = say .. "以了，不过你要达到20级以上才可以摆摊哦。\\"
	say = say .. "你现在去老兵那里看看，他会声望的知识的。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_首饰"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(22) == 1 and 1 or 0)) ~= 0 then
		say = say .. "年轻人，是炼药师让你来的吧，他刚才还在我面前夸你能干\\"
		say = say .. "呢！你找我有什么事情吗？\\"
		say = say .. "<打听摆摊/@_RW_fulfilTask17>                <没事/@exit>"
	elseif ((player:task_step(24) == 1 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "消失的戒指任务", "海角_首饰1")
	elseif ((player:task_step(24) == 3 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "消失的戒指任务", "海角_首饰2")
	elseif ((player:task_step(24) == 5 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "消失的戒指任务", "海角_首饰3")
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask17(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:complete_task(22)
	player:give_exp(4200)
	player:add_gold(8000)
	player:add_task(23)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了8000金币。")
	say = say .. "想摆摊出售东西的话，只要点击界面右下方的摆摊按钮就可\\"
	say = say .. "以了，不过你要达到20级以上才可以摆摊哦。\\"
	say = say .. "你现在去老兵那里看看，他会告诉你声望的知识的。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
