-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: marryitem
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "marryitem",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.rose(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:damage_using_item_dura(1)) and 1 or 0)) ~= 0 then
		player:show_pile((tonumber(ScriptEngine.param(0)) or 0), 600, 0)
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.candle(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:damage_using_item_dura(1)) and 1 or 0)) ~= 0 then
		player:show_pile(8, 600, 0)
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.banger(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:damage_using_item_dura(1)) and 1 or 0)) ~= 0 then
		player:show_damage_pile(20, 2, 15, 2, 10, 2)
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
