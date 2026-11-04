-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 真视水晶
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "真视水晶",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:damage_using_item_dura(1)) and 1 or 0)) ~= 0 then
		player:input_text("请输入人名:", 16, "@查看信息")
	end
	return { say = say, page = goto_page, close = close }
end

M["查看信息"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((ScriptEngine.is_online(player:get_var_str("username")) and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg_ex(Defines.CC_NORMAL, "玩家<$username> <$mapname>的 (<$posx>,<$posy>)处。")
	else
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("username"), "查看信息失败，对方不在线!")
	end
	return { say = say, page = goto_page, close = close }
end

return M
