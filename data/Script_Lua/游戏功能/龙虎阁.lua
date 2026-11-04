-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 龙虎阁
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "龙虎阁",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.CardType1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:check_and_update_use_date()) == 1) then
		player:use_lhg_card(2)
	end
	return { say = say, page = goto_page, close = close }
end

function M.CardType2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:check_and_update_use_date()) == 1) then
		player:use_lhg_card(1)
	end
	return { say = say, page = goto_page, close = close }
end

return M
