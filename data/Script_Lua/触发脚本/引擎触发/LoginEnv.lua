-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: LoginEnv
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "LoginEnv",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.Login(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:check_account_list("AccountList") and 1 or 0)) ~= 0 then
		player:kick()
		close = true
	end
	if ((player:check_name_list("CharNameList") and 1 or 0)) ~= 0 then
		player:kick()
		close = true
	end
	if ((player:get_flag(50) and 1 or 0)) ~= 0 then
		player:clear_flag(50)
	end
	if ((player.has_master and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "LoginEnv", "sendtomaster")
	end
	if ((player:has_student() and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "LoginEnv", "sendtostudent")
	end
	if ((player.is_married and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "LoginEnv", "sendtomarry")
	end
	return { say = say, page = goto_page, close = close }
end

function M.sendtomarry(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("sex") == 0 and 1 or 0)) ~= 0 and ((ScriptEngine.is_online(player:get_var_str("marriage")) and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("marriage"), "您的丈夫<$username>在<$mapname>的 (<$posx>,<$posy>)上线了！")
		player:show_page(player:get_var_str("marriage"), "@womanshow")
		close = true
	end
	if ((player:get_var("sex") == 1 and 1 or 0)) ~= 0 and ((ScriptEngine.is_online(player:get_var_str("marriage")) and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("marriage"), "您的妻子<$username>在<$mapname>的 (<$posx>,<$posy>)上线了！")
		player:show_page(player:get_var_str("marriage"), "@manshow")
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

function M.womanshow(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, ScriptEngine.param(0), "您的妻子<$username>在<$mapname>的 (<$posx>,<$posy>)处上线了")
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.manshow(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, ScriptEngine.param(0), "您的丈夫<$username>在<$mapname>的 (<$posx>,<$posy>)处上线了")
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.sendtomaster(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((ScriptEngine.is_online(player:get_var_str("master")) and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("master"), "您的徒弟<$username>在<$mapname>的 (<$posx>,<$posy>)处上线了")
		player:show_page(player:get_var_str("master"), "@mastershow")
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

function M.sendtostudent(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_student(0) and 1 or 0)) ~= 0 and ((ScriptEngine.is_online(player:get_var_str("student1")) and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("student1"), "您的师傅<$username>在<$mapname>的 (<$posx>,<$posy>)处上线了")
		player:show_page(player:get_var_str("student1"), "@studentshow")
		close = true
	end
	if ((player:has_student(1) and 1 or 0)) ~= 0 and ((ScriptEngine.is_online(player:get_var_str("student2")) and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("student2"), "您的师傅<$username>在<$mapname>的 (<$posx>,<$posy>)处上线了")
		player:show_page(player:get_var_str("student2"), "@studentshow")
		close = true
	end
	if ((player:has_student(2) and 1 or 0)) ~= 0 and ((ScriptEngine.is_online(player:get_var_str("student3")) and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("student3"), "您的师傅<$username>在<$mapname>的 (<$posx>,<$posy>)处上线了")
		player:show_page(player:get_var_str("student3"), "@studentshow")
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

function M.mastershow(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, ScriptEngine.param(0), "您的师傅<$username>在<$mapname>的 (<$posx>,<$posy>)处上线了")
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.studentshow(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, ScriptEngine.param(0), "您的徒弟在<$username>在<$mapname>的 (<$posx>,<$posy>)处上线了")
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
