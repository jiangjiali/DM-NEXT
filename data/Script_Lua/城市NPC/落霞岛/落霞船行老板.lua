-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 落霞船行老板
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "落霞船行老板",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你要去中州吗？\\"
	say = say .. "那边可是大地方，去一次不容易，\\"
	say = say .. "你得交点钱我才送你去。\\\\"
	say = say .. "<我要去/@move>\\"
	say = say .. "<不去/@exit>\\"
	say = say .. "<打听消息/@mission>\\"
	say = say .. "<问路/@ask>"
	return { say = say, page = goto_page, close = close }
end

function M.move(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "去中州需要1000金币，没钱我可不送你去。\\\\"
	say = say .. "<付钱/@pay> \\"
	say = say .. "<再想想/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.mission(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "今天海峡的天气不错，很适合去中州旅行。\\\\"
	say = say .. "<我看也是/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.ask(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "不认识路？没关系我可以告诉你：\\"
	say = say .. "这里只有一个村子，位置在250，250附近，\\"
	say = say .. "你往东南方走就可以看到。\\\\"
	say = say .. "<知道了/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.pay(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") >= 1000 and 1 or 0)) ~= 0 then
		player:take_gold(1000)
		player:teleport(16, 470, 225)
	else
		say = say .. "金币不足，我可不送你去。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

return M
