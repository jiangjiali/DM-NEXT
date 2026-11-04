-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 纹佩精炼师
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "纹佩精炼师",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "圣殿纹佩系统\\\\"
	say = say .. "<纹佩精炼炉/@@wenpeiflush>　<纹佩融合炉/@@wenpeironghe>\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
