-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: LevelUpEnv
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "LevelUpEnv",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.LevelUp(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("level") == 30 and 1 or 0)) ~= 0 then
		player:add_bag_size(10)
	end
	if ((player:get_var("level") == 40 and 1 or 0)) ~= 0 then
		player:add_bag_size(10)
	end
	if ((player:get_var("level") == 50 and 1 or 0)) ~= 0 then
		player:add_bag_size(10)
	end
	if ((player:get_var("level") == 60 and 1 or 0)) ~= 0 then
		player:add_bag_size(10)
	end
	if ((player:get_var("level") == 70 and 1 or 0)) ~= 0 then
		player:add_bag_size(10)
	end
	if ((player:get_var("level") == 80 and 1 or 0)) ~= 0 then
		player:add_bag_size(10)
	end
	if ((player:get_var("level") == 90 and 1 or 0)) ~= 0 then
		player:add_bag_size(10)
	end
	if ((player.has_master and 1 or 0)) ~= 0 and ((player:get_var("level") > 34 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "LevelUpEnv", "Graduate")
	end
	return { say = say, page = goto_page, close = close }
end

function M.Graduate(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:give_credit(3)
	player:add_teacher_credit(5)
	player:leave_teacher()
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
