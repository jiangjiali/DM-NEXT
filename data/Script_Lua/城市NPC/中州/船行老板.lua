-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 船行老板
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "船行老板",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你要去落霞岛吗？\\"
	say = say .. "那里可是个好地方。而且据说，\\"
	say = say .. "那边有传说中的金矿……\\\\"
	say = say .. "<我要去/@我要去>\\"
	say = say .. "<不去/@exit>\\"
	say = say .. "<问路/@问路>\\"
	return { say = say, page = goto_page, close = close }
end

M["问路"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "不认识路？没关系我可以告诉你：\\"
	say = say .. "从这里往东南400，600附近可以找到海角村。\\"
	say = say .. "中州城在东北方向440，270左右。\\"
	say = say .. "红名村在中州城的南方。\\\\"
	say = say .. "<知道了/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["我要去"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "去落霞岛需要1000金币，没钱我可不送你去。\\\\"
	say = say .. "<付钱/@付钱去落霞岛>\\"
	say = say .. "<再想想/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["付钱去落霞岛"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 999 and 1 or 0)) ~= 0 then
		player:take_gold(1000)
		player:teleport(53, 237, 236)
		close = true
	else
		say = say .. "金币不足，我可不送你去。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

return M
