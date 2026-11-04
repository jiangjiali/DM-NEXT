-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: leopard
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "leopard",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.leopard1(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:set_pet_bag_size(5)
	return { say = say, page = goto_page, close = close }
end

function M.leopard2(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:set_pet_bag_size(5)
	return { say = say, page = goto_page, close = close }
end

function M.leopard3(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:set_pet_bag_size(10)
	return { say = say, page = goto_page, close = close }
end

function M.leopard4(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:set_pet_bag_size(10)
	return { say = say, page = goto_page, close = close }
end

function M.leopard5(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:set_pet_bag_size(10)
	return { say = say, page = goto_page, close = close }
end

function M.leopard6(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:set_pet_bag_size(10)
	return { say = say, page = goto_page, close = close }
end

function M.leopard7(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:set_pet_bag_size(10)
	return { say = say, page = goto_page, close = close }
end

function M.use(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("ui_dc1") == 0 and 1 or 0)) ~= 0 then
		player:call_mon("!丛林豹0")
	elseif ((player:get_var("ui_dc1") == 1 and 1 or 0)) ~= 0 then
		player:call_mon("!丛林豹1")
	elseif ((player:get_var("ui_dc1") == 2 and 1 or 0)) ~= 0 then
		player:call_mon("!丛林豹2")
	elseif ((player:get_var("ui_dc1") == 3 and 1 or 0)) ~= 0 then
		player:call_mon("!丛林豹3")
	elseif ((player:get_var("ui_dc1") == 4 and 1 or 0)) ~= 0 then
		player:call_mon("!丛林豹4")
	elseif ((player:get_var("ui_dc1") == 5 and 1 or 0)) ~= 0 then
		player:call_mon("!丛林豹5")
	elseif (0) ~= 0 then
		player:call_mon("!丛林豹6")
	elseif (0) ~= 0 then
		player:call_mon("!丛林豹7")
	end
	return { say = say, page = goto_page, close = close }
end

function M.upgrade(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:upgrade_pet_item("mc=+10")
	return { say = say, page = goto_page, close = close }
end

return M
