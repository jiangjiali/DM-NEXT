-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: transform
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "transform",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.testtransformto(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:damage_using_item_dura(1)) and 1 or 0)) ~= 0 then
		player:transform(ScriptEngine.param(0))
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.transformto(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (player:check_and_update_use_date()) ~= 0 then
		player:transform(ScriptEngine.param(0))
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
