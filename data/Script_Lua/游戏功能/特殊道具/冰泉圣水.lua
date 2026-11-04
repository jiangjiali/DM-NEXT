-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 冰泉圣水
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "冰泉圣水",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:repair_equipment(0, 19)) and 1 or 0)) ~= 0 then
		player:damage_using_item_dura(1)
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

return M
