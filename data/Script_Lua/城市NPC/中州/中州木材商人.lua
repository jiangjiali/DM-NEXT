-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 中州木材商人
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "中州木材商人",
	version = "",
	trade_types = {48},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你要卖木材吗？\\\\"
	say = say .. "<出售木材/@sell>\\"
	say = say .. "<询问情况/@ask>\\"
	say = say .. "<关闭选单/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.sell(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "把你的木材搬过来吧。\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.ask(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这里气候干燥不太适合树木成长，成材的树木不好找。\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

return M
