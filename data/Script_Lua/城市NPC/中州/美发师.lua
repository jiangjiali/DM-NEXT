-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 美发师
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "美发师",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "欢迎光临！这里提供最好的美发服务，\\"
	say = say .. "您需要我帮你做点什么？\\\\"
	say = say .. "<做发型/@faxing>\\"
	say = say .. "<染头发/@ranfa>\\"
	say = say .. "<关 闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.faxing(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "先生您好，做一次发型需要15000金币，\\"
	say = say .. "您需要做哪种发型？\\\\"
	say = say .. "<清凉型/@f0>,<豪放型/@f1>,<名士型/@f2>,<侠客型/@f3>\\\\"
	say = say .. "<返  回/@main>"
	say = say .. "女士您好，做一次发型需要15000金币，\\"
	say = say .. "您需要做哪种发型？\\\\"
	say = say .. "<洒脱型/@f4>,<淑女型/@f5>,<活泼型/@f6>,<高贵型/@f7>\\\\"
	say = say .. "<返  回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.f0(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_type(0)
		say = say .. "您的发型已经做好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.f1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_type(1)
		say = say .. "您的发型已经做好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.f2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_type(2)
		say = say .. "您的发型已经做好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.f3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_type(3)
		say = say .. "您的发型已经做好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.f4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_type(4)
		say = say .. "您的发型已经做好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.f5(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_type(5)
		say = say .. "您的发型已经做好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.f6(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_type(6)
		say = say .. "您的发型已经做好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.f7(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_type(7)
		say = say .. "您的发型已经做好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.ranfa(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "染发每次收费2000金币，您想染成什么颜色的头发？\\\\"
	say = say .. "<白银/@s0>，<铅灰/@s1>，<黑色/@s2>，<赭绿/@s3>，\\"
	say = say .. "<咖啡/@s4>，<宝石蓝/@s5>，<墨绿/@s6>，<苍竹/@s7>，\\"
	say = say .. "<灰蓝/@s8>，<朱砂/@s9>，<蝴蝶蓝/@s10>，<竹叶青/@s11>，\\"
	say = say .. "<藤黄/@s12>，<紫罗兰/@s13>，<芭蕉绿/@s14>，<玄铁/@s15>\\\\"
	say = say .. "<返  回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.s0(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(0)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.s1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(1)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.s2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(2)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.s3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(3)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.s4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(4)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.s5(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(5)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.s6(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(6)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.s7(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(7)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.s8(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(8)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.s9(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(9)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.s10(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(10)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.s11(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(11)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.s12(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(12)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.s13(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(13)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.s14(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(14)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.s15(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_hair_color(15)
		say = say .. "您的发型颜色已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

return M
