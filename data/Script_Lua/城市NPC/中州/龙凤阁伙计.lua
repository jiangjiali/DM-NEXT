-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 龙凤阁伙计
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "龙凤阁伙计",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "结婚？自然是要来“龙凤阁”啦，要我说只有这龙凤阁才配的起\\"
	say = say .. "英雄美人的佳偶绝配。在龙凤阁来一场高朋满座、盛世华衣的\\"
	say = say .. "婚礼，才不枉结一次婚嘛。现在龙凤阁可以提前两天预定。\\"
	say = say .. "<预定龙凤阁/@yuding>\\"
	say = say .. "<进入龙凤阁/@jinru>\\"
	say = say .. "<了解龙凤阁/@abouthouse>\\"
	return { say = say, page = goto_page, close = close }
end

function M.yuding(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "您没带龙凤阁宝玉来吧，这可是预定使用龙凤阁的信物，\\"
	say = say .. "请您带好您的龙凤阁宝玉再来吧。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.jinru(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "您没有带龙凤喜帖或者您的龙凤喜帖不是现在这场婚礼的。\\"
	say = say .. "<确定/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.abouthouse(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "说起这龙凤宝阁，可是这物华天宝的王城之中极好的地方，\\"
	say = say .. "在这里结为伉俪的人都会获得神秘的祝福，可以白头偕老呢。\\"
	say = say .. "<确定/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
