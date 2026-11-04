-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 西域奇境内屠夫
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "西域奇境内屠夫",
	version = "",
	trade_types = {40},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "年轻人来这里卖肉啊？\\\\"
	say = say .. "<出售肉类/@sell>\\"
	say = say .. "<打听消息/@talk>\\"
	say = say .. "<关闭选单/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.sell(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "品质好的肉我能给你个好价钱。\\"
	say = say .. "要是粘上土的或者让火烧过的，我可不会出多少钱。\\\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.talk(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "俺们这里的牛肉可是个好东西。\\\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

return M
