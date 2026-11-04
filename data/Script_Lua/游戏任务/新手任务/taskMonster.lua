-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: taskMonster
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "taskMonster",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.gunquan(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player.map_id == 53 and 1 or 0)) ~= 0 and ((player:item_count("结婚戒指") < 1 and 1 or 0)) ~= 0 and ((player:task_step(11) == 4 and 1 or 0)) ~= 0 then
		player:give_item("结婚戒指", 1, true)
		player:modify_task(11, 5)
	elseif ((player.map_id == 16 and 1 or 0)) ~= 0 and ((player:item_count("结婚戒指") < 1 and 1 or 0)) ~= 0 and ((player:task_step(24) == 4 and 1 or 0)) ~= 0 then
		player:give_item("结婚戒指", 1, true)
		player:modify_task(24, 5)
	end
	return { say = say, page = goto_page, close = close }
end

function M.shiwei(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player.map_id == 47 and 1 or 0)) ~= 0 and ((player:task_step(27) == 3 and 1 or 0)) ~= 0 then
		player:set_task_value(27, 0, player:get_task_value(27, 0) - 1)
	end
	if ((player.map_id == 47 and 1 or 0)) ~= 0 and ((player:task_step(27) == 2 and 1 or 0)) ~= 0 then
		player:set_task_value(27, 0, player:get_task_value(27, 0) - 1)
		player:modify_task(27, 3)
	end
	if ((player:get_task_value(27, 0) == 0 and 1 or 0)) ~= 0 then
		player:modify_task(27, 4)
	end
	if ((player.map_id == 43 and 1 or 0)) ~= 0 and ((player:item_count("传世史记") < 1 and 1 or 0)) ~= 0 and ((player:task_step(28) == 2 and 1 or 0)) ~= 0 then
		player:give_item("传世史记", 1, true)
		player:modify_task(28, 3)
	end
	return { say = say, page = goto_page, close = close }
end

return M
