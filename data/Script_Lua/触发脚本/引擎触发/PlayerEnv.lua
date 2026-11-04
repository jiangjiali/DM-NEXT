-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: PlayerEnv
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "PlayerEnv",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.OnDeath(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:clear_god_bless()
	player:add_name_list("还魂石")
	player:set_var("deathid", player:get_var_str("mapid"))
	player:set_var("deathx", player:get_var_str("posx"))
	player:set_var("deathy", player:get_var_str("posy"))
	return { say = say, page = goto_page, close = close }
end

function M.GoLingWu(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:teleport(1031, 58, 261)
	return { say = say, page = goto_page, close = close }
end

return M
