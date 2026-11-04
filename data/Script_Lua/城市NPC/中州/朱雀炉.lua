-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 朱雀炉
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "朱雀炉",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这是具有神秘炼制能力的朱雀神炉。\\"
	say = say .. "现在可以投入赤金、雪银、玄铁，一同炼制各种神饰了。\\\\"
	say = say .. "<炼制神饰/@give1>\\"
	say = say .. "<取回炼制成品/@get1>\\"
	say = say .. "<炼制方法介绍/@howto>\\"
	say = say .. "<离开/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.give1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "炼制至少需要消耗赤金、雪银、玄铁各1块，且包裹中如\\"
	say = say .. "果有更多材料也都会一并投入进炉中。\\"
	say = say .. "从开始炼制到炼成需要消耗5分钟，炼成后15分钟还不\\"
	say = say .. "取出，珍贵的神饰就会消失在炉火中。\\"
	say = say .. "确认要炼制吗？\\"
	say = say .. "<开始炼制/@give2>\\"
	say = say .. "<离开/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.give2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "包裹内没有足够数量的赤金、雪银、玄铁。\\"
	say = say .. "因此无法炼制神饰。\\\\"
	say = say .. "<返回/@main>\\"
	say = say .. "<离开/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.get1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "尚未炼制，无法领取物品。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.howto(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "朱雀神炉可以用来炼制各种神饰，这是高贵的神器。\\"
	say = say .. "每次炼制至少需要消耗赤金、雪银、玄铁各1块，但如果\\"
	say = say .. "包裹里带来了更多，也会一并投入炼制的。\\"
	say = say .. "如果上次炼制的神饰还没有完成，是不能再次炼制的。\\"
	say = say .. "还要注意，炉火温度重数越高，炼成的神饰也会越好。\\"
	say = say .. "想要提高炉火温度就需要投入更多木材。\\"
	say = say .. "从开始炼制到炼成需要消耗5分钟，炼成后15分钟还不\\"
	say = say .. "取出，珍贵的神饰就会消失在炉火中。\\"
	say = say .. "<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

return M
