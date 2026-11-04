-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: doubleexp
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "doubleexp",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.double(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("expfactor") ~= 100 and 1 or 0)) ~= 0 then
		close = true
	elseif (player:check_and_update_use_date()) ~= 0 then
		player.exp_factor = 200
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.doubleday(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("expfactor") ~= 100 and 1 or 0)) ~= 0 then
		close = true
	elseif ((player:hour_between(6, 18) and 1 or 0)) ~= 0 then
		player:check_and_update_use_date()
		player.exp_factor = 200
	else
		player.exp_factor = 200
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
