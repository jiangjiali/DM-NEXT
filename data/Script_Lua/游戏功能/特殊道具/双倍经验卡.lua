-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 双倍经验卡
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "双倍经验卡",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.double(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("expfactor") ~= 0 and 1 or 0)) ~= 0 then
		close = true
	elseif (player:check_and_update_use_date()) ~= 0 then
		player.exp_factor = 100
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("username"), "开启双倍经验成功，从现在开始，每打一个怪将比平时多一倍经验。")
	end
	return { say = say, page = goto_page, close = close }
end

function M.daydouble(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("expfactor") ~= 0 and 1 or 0)) ~= 0 then
		close = true
	elseif ((player:hour_between(1, 12) and 1 or 0)) ~= 0 and (player:check_and_update_use_date()) ~= 0 then
		player.exp_factor = 100
		ScriptEngine.system_msg_ex(Defines.CC_MAGICTIPS, player:get_var_str("username"), "开启双倍经验成功，从现在开始，每打一个怪将比平时多一倍经验。此卡开启后当天有效，过期作废。")
	else
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("username"), "时间不对，您现在不能使用此道具。该道具开启时间为1点到12点，开启当天有效，过期作废。")
	end
	return { say = say, page = goto_page, close = close }
end

function M.darkdouble(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("expfactor") ~= 0 and 1 or 0)) ~= 0 then
		close = true
	elseif ((player:hour_between(12, 23) and 1 or 0)) ~= 0 and (player:check_and_update_use_date()) ~= 0 then
		player.exp_factor = 100
		ScriptEngine.system_msg_ex(Defines.CC_MAGICTIPS, player:get_var_str("username"), "开启双倍经验成功，从现在开始，每打一个怪将比平时多一倍经验。此卡开启后当天有效，过期作废。")
	else
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("username"), "时间不对，您现在不能使用此道具。该道具开启时间为12点到23点，开启当天有效，过期作废。")
	end
	return { say = say, page = goto_page, close = close }
end

function M.weekdouble(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("expfactor") ~= 0 and 1 or 0)) ~= 0 then
		close = true
	elseif (player:check_and_update_use_date()) ~= 0 then
		player.exp_factor = 100
		ScriptEngine.system_msg_ex(Defines.CC_MAGICTIPS, player:get_var_str("username"), "开启双倍经验成功，从现在开始，每打一个怪将比平时多一倍经验。此卡开启后7天有效，过期作废。")
	end
	return { say = say, page = goto_page, close = close }
end

function M.weekdaydouble(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("expfactor") ~= 0 and 1 or 0)) ~= 0 then
		close = true
	elseif ((player:hour_between(1, 12) and 1 or 0)) ~= 0 and (player:check_and_update_use_date()) ~= 0 then
		player.exp_factor = 100
		ScriptEngine.system_msg_ex(Defines.CC_MAGICTIPS, player:get_var_str("username"), "开启双倍经验成功，从现在开始，每打一个怪将比平时多一倍经验。此卡开启后7天有效，过期作废。")
	else
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("username"), "时间不对，您现在不能使用此道具。该道具开启时间为1点到12点，开启后7天有效，过期作废。")
	end
	return { say = say, page = goto_page, close = close }
end

function M.weekdarkdouble(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("expfactor") ~= 0 and 1 or 0)) ~= 0 then
		close = true
	elseif ((player:hour_between(12, 23) and 1 or 0)) ~= 0 and (player:check_and_update_use_date()) ~= 0 then
		player.exp_factor = 100
		ScriptEngine.system_msg_ex(Defines.CC_MAGICTIPS, player:get_var_str("username"), "开启双倍经验成功，从现在开始，每打一个怪将比平时多一倍经验。此卡开启后7天有效，过期作废。")
	else
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("username"), "时间不对，您现在不能使用此道具。该道具开启时间为12点到23点，开启后7天有效，过期作废。")
	end
	return { say = say, page = goto_page, close = close }
end

return M
