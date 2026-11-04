-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 炼狱沼泽传送门
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "炼狱沼泽传送门",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你要进入炼狱的更深层吗？\\"
	say = say .. "不管你是什么职业，之后的路都将是相同的。\\"
	say = say .. "你需要与他人并肩作战，你准备好了吗？\\\\"
	say = say .. "<我准备好了，前进/@go>\\"
	say = say .. "<先返回红池/@backnew>\\"
	say = say .. "<还没准备好，等等/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.go(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:teleport(214, 58, 59)
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.backnew(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:teleport(199, 65, 50)
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
