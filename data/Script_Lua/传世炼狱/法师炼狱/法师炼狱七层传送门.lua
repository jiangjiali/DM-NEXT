-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 法师炼狱七层传送门
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "法师炼狱七层传送门",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_flag(7) and 1 or 0)) ~= 0 then
		player:clear_flag(7)
		ScriptEngine.system_msg("恭喜勇士<$username>成功杀死七层守护者,进入了炼狱下一层")
		player:teleport(180, 110, 20)
		close = true
	else
		say = say .. "你还没有杀死守护者,不能继续前进\\"
		say = say .. "<晕/@exit>\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

return M
