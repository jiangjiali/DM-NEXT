-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: magiccolor
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "magiccolor",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.color(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (player:check_and_update_use_date()) ~= 0 then
		player:change_magic_color((tonumber(ScriptEngine.param(0)) or 0), (tonumber(ScriptEngine.param(1)) or 0))
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
