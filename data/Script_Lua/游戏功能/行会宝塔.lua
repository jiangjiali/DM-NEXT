-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 行会宝塔
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "行会宝塔",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:guild_tower_page(20)
	player:guild_tower_query()
	return { say = say, page = goto_page, close = close }
end

function M.ViewMaintain(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:guild_tower_query()
	return { say = say, page = goto_page, close = close }
end

function M.HandIn(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:guild_tower_page(28)
	player:guild_tower_query()
	return { say = say, page = goto_page, close = close }
end

function M.OpenTask(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:guild_tower_upgrade()
	return { say = say, page = goto_page, close = close }
end

function M.StartTask(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:guild_tower_upgrade()
	return { say = say, page = goto_page, close = close }
end

function M.guildlogo(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:change_guild_flag((tonumber(ScriptEngine.param(0)) or 0))
	return { say = say, page = goto_page, close = close }
end

function M.OpenZBGrid(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:guild_tower_page(22)
	player:guild_tower_query()
	return { say = say, page = goto_page, close = close }
end

function M.shengongfang(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:guild_tower_page(24)
	player:guild_tower_query()
	return { say = say, page = goto_page, close = close }
end

function M.RecTask(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:guild_tower_page(27)
	player:guild_tower_query()
	return { say = say, page = goto_page, close = close }
end

return M
