-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 海角村药店掌柜
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "海角村药店掌柜",
	version = "",
	trade_types = {0, 31},
	big_box = false,
	left_page = "",
	goods = {
		{ "强效太阳神水", 0, 10 },
		{ "太阳神水", 0, 10 },
		{ "金创药(小量)", 0, 10 },
		{ "金创药(中量)", 0, 10 },
		{ "金创药(大量)", 0, 10 },
		{ "魔法药(小量)", 0, 10 },
		{ "魔法药(中量)", 0, 10 },
		{ "魔法药(大量)", 0, 10 },
		{ "金创药(小)包", 0, 10 },
		{ "金创药(中)包", 0, 10 },
		{ "魔法药(小)包", 0, 10 },
		{ "魔法药(中)包", 0, 10 },
		{ "超级金创药", 0, 10 },
		{ "超级魔法药", 0, 10 },
		{ "绿色毒药(少量)", 0, 10 },
		{ "绿色毒药(中量)", 0, 10 },
		{ "绿色毒药(大量)", 0, 10 },
		{ "红色毒药(少量)", 0, 10 },
		{ "红色毒药(中量)", 0, 10 },
		{ "红色毒药(大量)", 0, 10 },
		{ "雄稻草人偶(小)", 0, 10 },
		{ "雄稻草人偶(中)", 0, 10 },
		{ "雄稻草人偶(大)", 0, 10 },
		{ "雌稻草人偶(小)", 0, 10 },
		{ "雌稻草人偶(中)", 0, 10 },
		{ "雌稻草人偶(大)", 0, 10 },
		{ "特级金创药", 0, 10 },
		{ "特级魔法药", 0, 10 },
		{ "特级金创药包", 0, 10 },
		{ "特级魔法药包", 0, 10 },
	},
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<COLOR=GREEN 欢迎光临， 这里有各种药品。>\\"
	say = say .. "有什么事情需要我帮忙吗？\\\\"
	say = say .. "<购入药品/@buy>\\"
	say = say .. "<出售药品/@sell>\\"
	say = say .. "<打听/@_YD_ask>和铁血魔城有关的最新消息\\"
	say = say .. "<关闭选单/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.buy(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "需要买什么药吗？\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.sell(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请给要卖的东西，我会给好价钱的。\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M._YD_ask(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "年轻人，如果你要买药去魔城，能买多少\\"
	say = say .. "就买多少吧，不要再吝惜金币了。铁血魔\\"
	say = say .. "城，唉，进入的人多出来的人少。\\\\"
	say = say .. "<返　回/@main>"
	return { say = say, page = goto_page, close = close }
end

return M
