-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 修罗定天柱
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "修罗定天柱",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "来找我的人不多，但每一个都非常优秀。\\"
	return { say = say, page = goto_page, close = close }
end

return M
