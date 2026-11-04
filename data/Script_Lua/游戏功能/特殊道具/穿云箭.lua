-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 穿云箭
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "穿云箭",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:is_guild_master() and 1 or 0)) ~= 0 then
		player:damage_using_item_dura(1)
		player:input_text("请输入行会成员玩家名:", 16, "@查看信息")
	else
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("username"), "你不是行会老大不能使用穿云箭！")
	end
	return { say = say, page = goto_page, close = close }
end

M["查看信息"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((ScriptEngine.is_online(player:get_var_str("inputtext")) and 1 or 0)) ~= 0 and ((player:is_guild_member(player:get_var_str("inputtext")) and 1 or 0)) ~= 0 then
		ScriptEngine.arrow_move(player:get_var_str("inputtext"), player:get_var("mapid"), player:get_var("posx"), player:get_var("posy"))
	else
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("username"), "查看信息失败，对方不在线！")
	end
	return { say = say, page = goto_page, close = close }
end

return M
