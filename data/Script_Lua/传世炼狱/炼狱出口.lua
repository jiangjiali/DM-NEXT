-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 炼狱出口
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "炼狱出口",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.goout(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.multimap_hum_teleport(164, 219, 16)
	ScriptEngine.system_msg("炼狱入口已经慢慢的消失了..........")
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
