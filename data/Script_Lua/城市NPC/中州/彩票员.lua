-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 彩票员
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "彩票员",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
	goods = {
		{ "骑兵竞技入场牌", 0, 10 },
	},
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "有人在我这里发过大财！不过，也有人用光了所有财产……\\"
	say = say .. "随便你了，试着买几张彩票吧！祝你发财，钱都多的掉到\\"
	say = say .. "地上，哈哈！\\"
	say = say .. "<买骑兵竞技入场牌/@buy>\\"
	say = say .. "<买骑兵竞技彩票/@buyht>\\"
	say = say .. "<了解骑兵竞技活动/@info>\\"
	say = say .. "<买彩票/@buyc>\\"
	say = say .. "<了解彩票/@bingo>\\"
	say = say .. "<关  闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.buy(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "祝你好运\\\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.buyht(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

function M.info(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "骑兵竞技入场牌和竞技彩票可都是和骑兵竞技活动有莫\\"
	say = say .. "大关系的哦。\\\\"
	say = say .. "<了解骑兵竞技入场牌/@ticketifo>\\"
	say = say .. "<了解竞技彩票/@chipifo>\\"
	say = say .. "<返    回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.ticketifo(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "如果你想参加骑兵竞技，就先要在我这里买些骑兵竞技入场牌\\"
	say = say .. "回去，在活动开始以后，你可以到王城老兵那里报名，他会收\\"
	say = say .. "取1个骑兵竞技入场牌作为报名费，然后把你送到比赛场地。\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.chipifo(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "骑兵竞技开始了可以试试你的运气，每张竞技彩票要2000金币。\\"
	say = say .. "要是竞技彩票号码和那场冠军的跑道号码对应的话你就中奖啦，\\"
	say = say .. "双击竞技彩票马上会得到大笔的金钱。不过提醒你一声：竞技彩票\\"
	say = say .. "必须在下次骑兵竞技活动开始前使用哦，过期不用可就自动作废啦。\\\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.bingo(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "1等    1,000,000金币\\"
	say = say .. "2等      200,000金币\\"
	say = say .. "3等      100,000金币\\"
	say = say .. "4等       10,000金币\\"
	say = say .. "5等        1,000金币\\"
	say = say .. "6等          500金币\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

return M
