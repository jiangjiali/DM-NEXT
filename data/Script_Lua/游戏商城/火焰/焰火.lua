-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 焰火
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "焰火",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["焰火"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:damage_using_item_dura(1)) and 1 or 0)) ~= 0 then
		player:fireworks((tonumber(ScriptEngine.param(0)) or 0))
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
