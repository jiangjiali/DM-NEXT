-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 炼狱魔境八层传送门2
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "炼狱魔境八层传送门2",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:teleport(215, 14, 17)
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
