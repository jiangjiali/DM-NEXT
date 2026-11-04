-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 神武殿
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "神武殿",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.gift(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:damage_using_item_dura(1)) and 1 or 0)) ~= 0 then
		player:give_item("秒杀附身", 1)
		player:give_item("重击附身", 1)
		player:give_item("神佑附身", 1)
		player:give_item("神御附身", 1)
		player:give_item("治疗神水", 5)
	end
	return { say = say, page = goto_page, close = close }
end

return M
