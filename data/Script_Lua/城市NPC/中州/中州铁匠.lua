-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 中州铁匠
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "中州铁匠",
	version = "",
	trade_types = {5, 6, 43},
	big_box = false,
	left_page = "",
	goods = {
		{ "修罗战斧", 0, 10 },
		{ "海魂叉", 0, 10 },
		{ "八荒刀", 0, 10 },
		{ "凌风剑", 0, 10 },
		{ "狼牙棒", 0, 10 },
		{ "半月刀", 0, 10 },
		{ "降魔剑", 0, 10 },
		{ "偃月刀", 0, 10 },
		{ "斩马", 0, 10 },
		{ "破魂刀", 0, 10 },
		{ "凝霜剑", 0, 10 },
		{ "短剑", 0, 10 },
		{ "马鞭", 0, 10 },
		{ "桃木剑", 0, 10 },
		{ "青铜斧", 0, 10 },
		{ "铜剑", 0, 10 },
		{ "铁剑", 0, 10 },
		{ "乌木剑", 0, 10 },
		{ "匕首", 0, 10 },
		{ "鹤嘴锄", 0, 10 },
		{ "伐木斧", 0, 10 },
	},
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "欢迎光临。请问有什么事情帮忙吗？\\"
	say = say .. "<购入武器/@buy>\\"
	say = say .. "<出售武器/@sell>\\"
	say = say .. "<修理武器/@repair>\\"
	say = say .. "<特殊修理/@s_repair>\\"
	say = say .. "<询问武器/@qweapon>\\"
	say = say .. "<打听/@_TJ_ask>和铁血魔城有关的最新消息\\"
	say = say .. "<关闭选单/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.buy(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请挑选要购买的物品。\\\\"
	say = say .. "<商品清单/@buy>\\"
	say = say .. "<返  回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.sell(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请放上去要卖的武器。\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.repair(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要修理武器吗？\\\\"
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
	say = say .. "要特殊修理武器吗？\\\\"
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

function M.qweapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "妖魔身上的武器，有时具有特殊功能。\\"
	say = say .. "这种武器拿到店里来，会卖好价钱。\\"
	say = say .. "对了，武器种类不同，价格也不同，\\"
	say = say .. "但是大体上，持久力越高越昂贵。\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M._TJ_ask(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你听说过铁血魔城的镇城八宝吗？其中\\"
	say = say .. "有4件神器都是出自我师父之手，师父最大\\"
	say = say .. "的遗憾就是这些神器都被铁血军团掳走，\\"
	say = say .. "人间一把不剩，你一定要从铁血军团中夺回\\"
	say = say .. "神器。\\\\"
	say = say .. "<返  回/@main>"
	return { say = say, page = goto_page, close = close }
end

return M
