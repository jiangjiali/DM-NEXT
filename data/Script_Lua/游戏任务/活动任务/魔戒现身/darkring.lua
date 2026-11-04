-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: darkring
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "darkring",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.pickup(player)
	local say = ""
	local goto_page = nil
	local close = false
	if not (((player:hour_between(13, 13) and 1 or 0)) ~= 0) then
		player:delete_using_item()
	end
	return { say = say, page = goto_page, close = close }
end

return M
