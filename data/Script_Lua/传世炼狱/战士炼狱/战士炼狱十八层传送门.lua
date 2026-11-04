-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 战士炼狱十八层传送门
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "战士炼狱十八层传送门",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:teleport(206, 12, 14)
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
