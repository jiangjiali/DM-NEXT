-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: LogoutEnv
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "LogoutEnv",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.Logout(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player.has_master and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "LogoutEnv", "sendtomaster")
	end
	if ((player:has_student() and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "LogoutEnv", "sendtostudent")
	end
	if ((player.is_married and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "LogoutEnv", "marryshow")
	end
	if ((player:get_flag(50) and 1 or 0)) ~= 0 then
		player:clear_flag(50)
	end
	if ((player:get_var("mapid") == 258 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "LogoutEnv", "eliminate")
	end
	if ((player:get_flag(7) and 1 or 0)) ~= 0 then
		player:clear_flag(7)
	end
	ScriptEngine.call(player, "LogoutEnv", "redname")
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.marryshow(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("sex") == 0 and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("marriage"), "您的丈夫<$username>在<$mapname>的 (<$posx>,<$posy>)处下线了！")
	else
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("marriage"), "您的妻子<$username>在<$mapname>的 (<$posx>,<$posy>)处下线了！")
	end
	return { say = say, page = goto_page, close = close }
end

function M.sendtomaster(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((ScriptEngine.is_online(player:get_var_str("master")) and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("master"), "您的徒弟<$username>在<$mapname>的 (<$posx>,<$posy>)处下线了")
	end
	return { say = say, page = goto_page, close = close }
end

function M.sendtostudent(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_student(0) and 1 or 0)) ~= 0 and ((ScriptEngine.is_online(player:get_var_str("student1")) and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("student1"), "您的师傅<$username>在<$mapname>的 (<$posx>,<$posy>)处下线了")
	end
	if ((player:has_student(1) and 1 or 0)) ~= 0 and ((ScriptEngine.is_online(player:get_var_str("student2")) and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("student2"), "您的师傅<$username>在<$mapname>的 (<$posx>,<$posy>)处下线了")
	end
	if ((player:has_student(2) and 1 or 0)) ~= 0 and ((ScriptEngine.is_online(player:get_var_str("student3")) and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("student3"), "您的师傅<$username>在<$mapname>的 (<$posx>,<$posy>)处下线了")
	end
	return { say = say, page = goto_page, close = close }
end

function M.redname(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player.is_dead and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "LogoutEnv", "rednameer")
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

function M.rednameer(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("pkpoint") > 2 and 1 or 0)) ~= 0 then
		player:set_relive_point("红名村")
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

function M.eliminate(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("horserace.player1name") == player:get_var("username") and 1 or 0)) ~= 0 then
		ScriptEngine.timer_stop(1)
		player:set_var("horserace.player1name", "=")
		player:set_var("horserace.raceway1", "=")
	end
	if ((player:get_var("horserace.player2name") == player:get_var("username") and 1 or 0)) ~= 0 then
		ScriptEngine.timer_stop(2)
		player:set_var("horserace.player2name", "=")
		player:set_var("horserace.raceway2", "=")
	end
	if ((player:get_var("horserace.player3name") == player:get_var("username") and 1 or 0)) ~= 0 then
		ScriptEngine.timer_stop(3)
		player:set_var("horserace.player3name", "=")
		player:set_var("horserace.raceway3", "=")
	end
	if ((player:get_var("horserace.player4name") == player:get_var("username") and 1 or 0)) ~= 0 then
		ScriptEngine.timer_stop(4)
		player:set_var("horserace.player4name", "=")
		player:set_var("horserace.raceway4", "=")
	end
	say = say .. "close"
	return { say = say, page = goto_page, close = close }
end

return M
