-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: magicfont
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "magicfont",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.magic(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (player:check_and_update_use_date()) ~= 0 then
		player:change_font((tonumber(ScriptEngine.param(0)) or 0))
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.fontcolor(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (player:check_and_update_use_date()) ~= 0 then
		player:change_font_color((tonumber(ScriptEngine.param(0)) or 0))
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
