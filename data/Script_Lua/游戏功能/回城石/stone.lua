-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: stone
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "stone",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.gohome1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:use_home_stone()) and 1 or 0)) ~= 0 then
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

function M.gohome2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:use_home_stone()) and 1 or 0)) ~= 0 then
		player:damage_using_item_dura(1)
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

function M.RandomTeleport(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:damage_using_item_dura(1)
	player:random_teleport()
	return { say = say, page = goto_page, close = close }
end

return M
