-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 旅人
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "旅人",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "嗯.. 这里可是比较危险的啊？\\"
	say = say .. "我不知道你还能不能认识回去的路。\\\\"
	say = say .. "<交谈/@talk>\\"
	say = say .. "<关闭./@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.talk(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这附近有一个非常奇怪的洞穴，\\"
	say = say .. "那个地方和其它的地方不一样，我很久以前到过一次。\\"
	say = say .. "但是大致的方向还记的，我可以给你指路。\\\\"
	say = say .. "<询问方向/@ask>\\"
	say = say .. "<关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.ask(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "记住了吗？\\"
	say = say .. "在里面两个小时后会自动离开，自己保重。\\\\"
	say = say .. "<再见/@goto>"
	return { say = say, page = goto_page, close = close }
end

M["goto"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:random_teleport(115)
	return { say = say, page = goto_page, close = close }
end

return M
