-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 桃园传送门1
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "桃园传送门1",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<返回炼狱魔境十层/@backnew> \\"
	say = say .. "<没事/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.backnew(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:teleport(218, 97, 90)
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
