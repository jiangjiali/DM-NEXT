-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 炼药师
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "炼药师",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
	goods = {
		{ "蟾酥", 0, 10 },
		{ "牙齿", 0, 10 },
		{ "果实", 0, 10 },
		{ "蛆卵", 0, 10 },
		{ "蝎尾", 0, 10 },
		{ "叶子", 0, 10 },
	},
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我们道士啊，就是心灵手巧。想当年我是有名的药师呢！\\"
	say = say .. "对了，你来炼什么东西啊？ \\"
	say = say .. "<可接任务/@_RW_entry>\\"
	say = say .. "<制造毒药/@makepoison>\\"
	say = say .. "<购买物品/@buy>\\"
	say = say .. "<出售物品/@sell>\\"
	say = say .. "<炼药说明/@炼药说明>\\"
	say = say .. "<制偶说明/@制偶说明>\\"
	say = say .. "<关闭选单/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_entry(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(2) == 1 and 1 or 0)) ~= 0 or ((player:task_step(2) == 2 and 1 or 0)) ~= 0 or ((player:task_step(8) == 1 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "鱼人的阴谋任务", "落霞岛_炼药")
	end
	if ((player:task_step(15) == 1 and 1 or 0)) ~= 0 or ((player:task_step(15) == 2 and 1 or 0)) ~= 0 or ((player:task_step(21) == 1 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "鱼人的阴谋任务", "海角_炼药")
	end
	return { say = say, page = goto_page, close = close }
end

function M.makepoison(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "开始制造毒药，快选择要制造的毒药吧。\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.buy(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "需要买什么配料吗？\\\\"
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

M["炼药说明"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这里可以炼的药只有两种。.\\ \\"
	say = say .. " <绿色毒药/@绿色毒药的功能>的功能\\"
	say = say .. " <红色毒药/@红色毒药的功能>的功能\\"
	say = say .. " <绿色毒药/@绿色毒药的原料>的原料\\"
	say = say .. " <红色毒药/@红色毒药的原料>的原料\\"
	say = say .. " <返回/@main>"
	return { say = say, page = goto_page, close = close }
end

M["绿色毒药的功能"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "道士用绿色毒施毒时，敌人中毒会减掉体力。\\\\"
	say = say .. "<返回/@炼药说明>"
	return { say = say, page = goto_page, close = close }
end

M["红色毒药的功能"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "道士用红色毒施毒时，敌人中毒会降低防御能力。\\\\"
	say = say .. "<返回/@炼药说明>"
	return { say = say, page = goto_page, close = close }
end

M["绿色毒药的原料"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "制作绿色毒药(少量)的原料是：<果实/@果实> 1个，\\"
	say = say .. "牙齿 2个，<蟾酥/@蟾酥> 1个，叶子 3个。\\"
	say = say .. "制作绿色毒药(中量)的原料是：<果实/@果实> 2个，\\"
	say = say .. "牙齿 4个，<蟾酥/@蟾酥> 2个，叶子 6个。\\"
	say = say .. "制作绿色毒药(大量)的原料是：<果实/@果实> 6个，\\"
	say = say .. "牙齿 6个，<蟾酥/@蟾酥> 3个，叶子 9个。\\"
	return { say = say, page = goto_page, close = close }
end

M["红色毒药的原料"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "制作红色毒药(少量)的原料是：<蛆卵/@蛆卵> 1个，蝎尾\\"
	say = say .. "1个，<蟾酥/@蟾酥> 1个，叶子 4个。\\"
	say = say .. "制作红色毒药(少量)的原料是：<蛆卵/@蛆卵> 2个，蝎尾\\"
	say = say .. "2个，<蟾酥/@蟾酥> 2个，叶子 8个。\\"
	say = say .. "制作红色毒药(少量)的原料是：<蛆卵/@蛆卵> 3个，蝎尾\\"
	say = say .. "3个，<蟾酥/@蟾酥> 3个，叶子 12个。\\"
	return { say = say, page = goto_page, close = close }
end

M["果实"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "从食人花的身上，可以得到叶子，\\"
	say = say .. "但是恐怕每5个食人花中你才能得到一个果实\\\\"
	say = say .. "<返回/@绿色毒药的原料>"
	return { say = say, page = goto_page, close = close }
end

M["蟾酥"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "从城外河边的癞蛤蟆身上就可以得找到，\\"
	say = say .. "不过不是每只蛤蟆身上都有。\\\\"
	say = say .. "<返回/@炼药说明>"
	return { say = say, page = goto_page, close = close }
end

M["蛆卵"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "抓到洞穴里的洞蛆就可以得到蛆卵。\\"
	say = say .. "长得像圆圆的茧\\\\"
	say = say .. "<返回/@红色毒药的原料>"
	return { say = say, page = goto_page, close = close }
end

M["制偶说明"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这里可以炼的药只有两种。\\\\"
	say = say .. "<雄稻草人偶/@雄稻草人偶的作用>的作用\\"
	say = say .. "<雌稻草人偶/@雌稻草人偶的作用>的作用\\"
	say = say .. "<雄稻草人偶/@雄稻草人偶的原料>的原料\\"
	say = say .. "<雌稻草人偶/@雌稻草人偶的原料>的原料\\"
	return { say = say, page = goto_page, close = close }
end

M["雄稻草人偶的作用"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "道士用雄稻草人偶诅咒时，敌人中毒会降低魔力值。\\\\"
	say = say .. "<返回/@制偶说明>"
	return { say = say, page = goto_page, close = close }
end

M["雌稻草人偶的作用"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "道士用雌稻草人偶诅咒时，敌人中毒会减掉魔法防御能力。\\\\"
	say = say .. "<返回/@制偶说明>"
	return { say = say, page = goto_page, close = close }
end

M["雄稻草人偶的原料"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "制作雄稻草人偶(小)的原料时：木材 3个，蟾酥 2个，\\"
	say = say .. "蝎尾 1个，叶子 1个。\\"
	say = say .. "制作雄稻草人偶(中)的原料时：木材 6个，蟾酥 4个，\\"
	say = say .. "蝎尾 2个，叶子 2个。\\"
	say = say .. "制作雄稻草人偶(大)的原料时：木材 9个，蟾酥 6个，\\"
	say = say .. "蝎尾 3个，叶子 3个。\\"
	say = say .. "<返回/@制偶说明>"
	return { say = say, page = goto_page, close = close }
end

M["雌稻草人偶的原料"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "制作雌稻草人偶(小)的原料时：木材 2个，蟾酥 2个，\\"
	say = say .. "蛆卵 2个，牙齿 1个。\\"
	say = say .. "制作雌稻草人偶(中)的原料时：木材 4个，蟾酥 4个，\\"
	say = say .. "蛆卵 4个，牙齿 2个。\\"
	say = say .. "制作雌稻草人偶(大)的原料时：木材 6个，蟾酥 6个，\\"
	say = say .. "蛆卵 6个，牙齿 3个。\\"
	say = say .. "<返回/@制偶说明>"
	return { say = say, page = goto_page, close = close }
end

return M
