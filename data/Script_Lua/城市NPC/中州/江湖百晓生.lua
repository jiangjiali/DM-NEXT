-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 江湖百晓生
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "江湖百晓生",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你找我有什么事情吗？\\"
	say = say .. "<查看近期攻城行会列表/@attackrequestpage0>\\"
	say = say .. "<没事/@exit>\\\\"
	return { say = say, page = goto_page, close = close }
end

return M
