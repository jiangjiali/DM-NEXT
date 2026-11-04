-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 打听声望任务
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "打听声望任务",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["落霞_老兵"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(10) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--打听声望/@_RW_fulfilTaskDesp1>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(11) == 2 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "消失的戒指任务", "落霞岛_老兵1")
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
	say = say .. "年轻人，你找我有什么事情吗？\\"
	say = say .. "<打听声望/@_RW_fulfilTask1_1>                <没事/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask1_1(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:complete_task(10)
	player:give_exp(4200)
	player:add_task(11)
	say = say .. "说到声望可是个好东西，你可以通过做任务或者拜师获得。\\"
	say = say .. "有了声望可以完成一些需要消耗声望的任务，还可以换取荣\\"
	say = say .. "誉勋章，技能书哦。\\"
	say = say .. "如果你有时间就去首饰店店员那里看看吧，她好像需要帮助。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_老兵"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(23) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--打听声望/@_RW_fulfilTaskDesp18>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(24) == 2 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "消失的戒指任务", "海角_老兵1")
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp18(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "年轻人，你找我有什么事情吗？\\"
	say = say .. "<打听声望/@_RW_fulfilTask18_18>                <没事/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask18_18(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:complete_task(23)
	player:give_exp(4200)
	player:add_task(24)
	say = say .. "说到声望可是个好东西，你可以通过做任务或者拜师获得。\\"
	say = say .. "有了声望可以完成一些需要消耗声望的任务，还可以换取荣\\"
	say = say .. "誉勋章，技能书哦。\\"
	say = say .. "如果你有时间就去首饰店店员那里看看吧，她好像需要帮助。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
