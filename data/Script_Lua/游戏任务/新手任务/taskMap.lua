-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: taskMap
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "taskMap",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.start27(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(27) == 2 and 1 or 0)) ~= 0 then
		player:modify_task(27, 3)
	end
	return { say = say, page = goto_page, close = close }
end

return M
