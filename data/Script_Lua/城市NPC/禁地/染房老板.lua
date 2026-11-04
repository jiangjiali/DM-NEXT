-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 染房老板
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "染房老板",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "欢迎光临。觉得衣服的颜色很单调吧！\\"
	say = say .. "我这里可以把它染成好看的颜色。\\"
	say = say .. "不过有一点要提醒，得在3D模式下才能\\"
	say = say .. "正常显示你染的颜色。\\"
	say = say .. "你准备要染色了吗？\\"
	say = say .. "<是的/@main2>\\"
	say = say .. "<不是/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.main2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "您想把衣服染成什么颜色？\\"
	say = say .. "每次染色的价钱是2000金币。\\"
	say = say .. "<翠绿/@mf1>，<深红/@mf2>，<天蓝/@mf3>，<银灰/@mf4>，<紫罗兰/@mf5>，\\"
	say = say .. "<咖啡色/@mf6>，<绛红/@mf7>，<蓝灰/@mf8>，<青蓝/@mf9>，<橘黄/@mf10>，\\"
	say = say .. "<黑色/@mf11>，<湖蓝/@mf12>，<深绿/@mf13>，<白色/@mf14>，<紫黑/@mf15>\\\\"
	say = say .. "<关 闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.mf1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_dress_color(1)
		say = say .. "您的衣服已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mf2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_dress_color(2)
		say = say .. "您的衣服已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mf3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_dress_color(3)
		say = say .. "您的衣服已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mf4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_dress_color(4)
		say = say .. "您的衣服已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mf5(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_dress_color(5)
		say = say .. "您的衣服已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mf6(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_dress_color(6)
		say = say .. "您的衣服已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mf7(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_dress_color(7)
		say = say .. "您的衣服已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mf8(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_dress_color(8)
		say = say .. "您的衣服已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mf9(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_dress_color(9)
		say = say .. "您的衣服已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mf10(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_dress_color(10)
		say = say .. "您的衣服已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mf11(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_dress_color(11)
		say = say .. "您的衣服已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mf12(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_dress_color(12)
		say = say .. "您的衣服已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mf13(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_dress_color(13)
		say = say .. "您的衣服已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mf14(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_dress_color(14)
		say = say .. "您的衣服已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mf15(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:change_dress_color(15)
		say = say .. "您的衣服已经染好了。\\\\"
		say = say .. "<关 闭/@exit>"
	else
		say = say .. "穷鬼,没钱也想赶时髦!\\\\"
		say = say .. "<关 闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

return M
