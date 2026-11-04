-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 元宝卷轴
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "元宝卷轴",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["元宝"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:damage_using_item_dura(1)) and 1 or 0)) ~= 0 then
		player:add_yuanbao((tonumber(ScriptEngine.param(0)) or 0))
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("USERNAME"), "恭喜你已经获得<$_param0>点元宝,目前你已有<$YUANBAO>元宝")
		-- SYSTEMMSGEX 单参数在旧引擎中无任何效果
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
