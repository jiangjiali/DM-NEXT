-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 桃园传送门2
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "桃园传送门2",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<返回炼狱魔境六层/@backnew1> \\"
	say = say .. "<返回海岛/@backnew2> \\"
	say = say .. "<没事/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.backnew1(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:teleport(214, 47, 35)
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.backnew2(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:random_teleport(164)
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
