-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 魔法阵祭祀
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "魔法阵祭祀",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "魔法阵就在眼前，投入天玉才可以有更大魔力。\\\\"
	say = say .. "<这就投入天玉/@checkstep>\\"
	say = say .. "<魔法阵现在的威力多大/@magicpower>\\"
	say = say .. "<领取铁血令/@shengwang>\\"
	say = say .. "<铁血令换取技能书/@skillbook>\\"
	say = say .. "<离开/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.checkstep(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你包裹里没有天玉宝石。\\\\"
	say = say .. "<去收集天玉宝石/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.magicpower(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "通过大家的努力，魔法阵的魔力已经提高到56917层！\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.shengwang(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "铁血令是非常珍贵的宝物，一般人无法轻易得到。现在国王\\"
	say = say .. "已经收集到了数量不多的铁血令，并打算奖励给德高望重的\\"
	say = say .. "英雄。现在可以用5点声望值换取1块铁血令，请注意，领取\\"
	say = say .. "铁血令就要花费声望值的。你想这么做吗？\\\\"
	say = say .. "<声望值交换铁血令/@shengwang1>\\"
	return { say = say, page = goto_page, close = close }
end

function M.shengwang1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你的声望太低了，必须有5点以上的声望才可以来这里换取\\"
	say = say .. "铁血令。去努力提高自己的声望吧。\\\\"
	say = say .. "<离开/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.skillbook(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "现在已经有越来越多的英雄获得了铁血令。现在有机会用铁\\"
	say = say .. "血令换取技能书了。每块铁血令都可以换到一本高级的技能\\"
	say = say .. "书。但到底是什么就看每个人不同的命运了。拥有高级技能\\"
	say = say .. "是所有英雄的梦想，尽快拿铁血令来换吧！\\\\"
	say = say .. "<现在就换取技能书/@skillbook1>\\"
	return { say = say, page = goto_page, close = close }
end

function M.skillbook1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你必须带着铁血令才能换取高级的技能书，去寻找铁血令吧。\\\\"
	say = say .. "<离开/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

return M
