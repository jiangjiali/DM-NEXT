-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 落霞杂货小贩
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "落霞杂货小贩",
	version = "",
	trade_types = {3, 30, 35},
	big_box = false,
	left_page = "",
	goods = {
		{ "沙城回城卷", 0, 10 },
		{ "地牢卷轴", 0, 10 },
		{ "随机卷轴", 0, 10 },
		{ "修复油", 0, 10 },
		{ "道符", 10, 10 },
		{ "道符（大）", 10, 10 },
		{ "道符包", 0, 10 },
		{ "地牢逃脱卷包", 0, 10 },
		{ "随机传送卷包", 0, 10 },
	},
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哈哈，欢迎你,要我能帮你？\\\\"
	say = say .. "<可接任务/@_RW_entry>\\"
	say = say .. "<快捷买卖/@quickbuy>\\"
	say = say .. "<购入物品/@buy>\\"
	say = say .. "<询问商品/@questionprize>\\"
	say = say .. "<关闭选单/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_entry(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "打听好友任务", "落霞岛_杂货")
	return { say = say, page = goto_page, close = close }
end

function M.quickbuy(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要买/卖杂物吗？\\\\"
	say = say .. "<返  回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.buy(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这里有随机卷轴，地牢卷轴等等\\\\"
	say = say .. "<商品清单/@buy>\\"
	say = say .. "<返  回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.sell(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你想卖点什么？\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.questionprize(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我们店有<地牢卷轴/@_ZH_teleport>,\\"
	say = say .. "<随机卷轴/@_ZH_teleport2>, <修复油/@_ZH_repairoil> 等等。\\"
	say = say .. "据说还有从妖怪身上拿到的<回城卷轴/@_ZH_steleport>。\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M._ZH_teleport(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "使用地牢卷轴可以把自己从可怕的\\"
	say = say .. "地下迷宫里瞬间移动到地面。\\"
	say = say .. "当然和回城卷轴相比，它的威力还算弱，\\"
	say = say .. "但是救自己一条命，已经足够了。\\\\"
	say = say .. "<返 回/@questionprize>"
	return { say = say, page = goto_page, close = close }
end

function M._ZH_teleport2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "随机卷轴能让你在自己所在的地图上\\"
	say = say .. "随机移动。尽管比较危险，但如果你还\\"
	say = say .. "剩很多药的话，会对你打猎有帮助。\\\\"
	say = say .. "<返 回/@questionprize>"
	return { say = say, page = goto_page, close = close }
end

function M._ZH_repairoil(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "修复油是提高自己拿着的武器的耐久力的油。\\"
	say = say .. "但是因为没有特殊修理的效果，\\"
	say = say .. "用修理油修理的武器的耐久力会越来越小。\\"
	say = say .. "如果不是很贵的武器，带着一个用来做修理，\\"
	say = say .. "会对你长久时间打猎有帮助。\\\\"
	say = say .. "<返 回/@questionprize>"
	return { say = say, page = goto_page, close = close }
end

function M._ZH_steleport(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "回城卷轴是从古代传下来的技术，\\"
	say = say .. "可惜的是没能传到人类身上，所以不能再制造。\\"
	say = say .. "据说有的妖怪有此技术。\\"
	say = say .. "用它就可以直接回到最后离开的村庄。\\\\"
	say = say .. "<返 回/@questionprize>"
	return { say = say, page = goto_page, close = close }
end

return M
