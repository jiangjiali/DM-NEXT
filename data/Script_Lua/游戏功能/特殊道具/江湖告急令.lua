-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 江湖告急令
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "江湖告急令",
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
		ScriptEngine.system_msg_ex(Defines.CC_WISPER, "江湖告急令:【<$username>】在<$mapname>的(<$posx>,<$posy>)处发出江湖告急令!")
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

return M
