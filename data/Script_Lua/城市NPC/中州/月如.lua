-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 月如
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "月如",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我是红娘月如，想要发起比武招亲请周六周日再来。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
