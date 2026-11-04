-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 传世宝典
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "传世宝典",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	local lua_flash = ""
	lua_flash = lua_flash .. "<color=white 欢迎来到传世宝典>\\\\<新手帮助/@@guide>\\\\<退出/@exit>"
	return { say = say, page = goto_page, close = close, flash = lua_flash }
end

return M
