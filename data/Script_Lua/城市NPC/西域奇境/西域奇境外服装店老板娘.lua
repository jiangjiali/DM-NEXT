-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 西域奇境外服装店老板娘
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "西域奇境外服装店老板娘",
	version = "",
	trade_types = {10, 11, 15, 45, 58, 81},
	big_box = false,
	left_page = "",
	goods = {
		{ "玄珠腰带", 0, 10 },
		{ "寒星腰带", 0, 10 },
		{ "神秘头盔", 0, 10 },
		{ "玄珠靴子", 0, 10 },
		{ "鹿皮腰带", 0, 10 },
		{ "寒星靴子", 0, 10 },
		{ "鹿皮靴子", 0, 10 },
		{ "战神(男)", 0, 10 },
		{ "记忆头盔", 0, 10 },
		{ "死神头盔", 0, 10 },
		{ "战神(女)", 0, 10 },
		{ "天鹰靴子", 0, 10 },
		{ "幻影头盔", 0, 10 },
		{ "恶魔长袍(女)", 0, 10 },
		{ "幽灵战甲(男)", 0, 10 },
		{ "恶魔长袍(男)", 0, 10 },
		{ "道士头盔", 0, 10 },
		{ "幽灵战甲(女)", 0, 10 },
		{ "粗布衣(男)", 0, 10 },
		{ "灵魂战甲(男)", 0, 10 },
		{ "魔袍(男)", 0, 10 },
		{ "轻盔(男)", 0, 10 },
		{ "中盔(男)", 0, 10 },
		{ "重盔(男)", 0, 10 },
		{ "粗布衣(女)", 0, 10 },
		{ "灵魂战甲(女)", 0, 10 },
		{ "魔袍(女)", 0, 10 },
		{ "轻盔(女)", 0, 10 },
		{ "中盔(女)", 0, 10 },
		{ "重盔(女)", 0, 10 },
		{ "魔力头盔", 0, 10 },
		{ "青铜头盔", 0, 10 },
	},
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "欢迎光临，有什么事情需要我帮忙吗？\\\\"
	say = say .. "<购入衣服/@buy>\\"
	say = say .. "<出售衣服/@sell>\\"
	say = say .. "<修复衣服/@repair>\\"
	say = say .. "<特殊修理/@s_repair>\\"
	say = say .. "<打听/@_FZ_ask>和铁血魔城有关的最新消息\\"
	say = say .. "<关闭选单/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.buy(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要购买什么吗？\\\\"
	say = say .. "<商品清单/@buy>\\"
	say = say .. "<返  回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.sell(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请放上去要卖的衣服，我给估价。\\"
	say = say .. "头盔、帽子、靴子和腰带也收购，\\"
	say = say .. "最好在这儿一起卖吧。\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.repair(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以修复衣服，头盔，帽子。另外，还可以修复靴子和\\"
	say = say .. "腰带！\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

M["~repair"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "已经修理好了！\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.s_repair(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要特殊修理吗？\\"
	say = say .. "价格会比普通修理贵的。\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

M["~s_repair"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "已经修理好了！\\\\"
	say = say .. "<返 回/@main> "
	return { say = say, page = goto_page, close = close }
end

function M._FZ_ask(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

return M
