-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 落霞新手向导
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "落霞新手向导",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "欢迎来到传奇世界\\"
	say = say .. "这里是落霞岛的落霞村，你第一次进来吗？\\"
	say = say .. "以后这里就是你的家园了，咱们先熟悉一下吧！\\"
	say = say .. "你点击对话框的有黄色下划线的字，就可以和\\"
	say = say .. "我继续聊下去了！\\"
	say = say .. "<新手任务/@新手任务>\\"
	say = say .. "<木摊/@set_style1>  <竹摊/@set_style2>  <小推车/@set_style3>  <豪华旗型/@set_style13>\\"
	say = say .. "<原色旗帜/@set_yellow>  <染红旗帜/@set_red>  <染绿旗帜/@set_green>  <染蓝旗帜/@set_blue>  <染粉旗帜/@set_fense>\\"
	say = say .. "<染紫旗帜/@set_zise>  <染金旗帜/@set_jinse>\\"
	say = say .. "<退出/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["新手任务"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("LEVEL") < 21 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "落霞新手向导", "_新手任务_领取")
	else
		say = say .. "你已经不是新手了，不能再领取新手任务。\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

M["_新手任务_领取"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if not ((0) ~= 0) then
		player:add_task(1)
		say = say .. "新手任务已领取，按照任务提示一步步来吧。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你身上已经有任务在进行了，先去完成吧。\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.set_style1(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:set_private_shop_style(0)
	say = say .. "已设为木摊，请开摊/重开摊使外观生效。"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.set_style2(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:set_private_shop_style(1)
	say = say .. "已设为竹摊，请开摊/重开摊使外观生效。"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.set_style3(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:set_private_shop_style(2)
	say = say .. "已设为小推车摊位。"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.set_style13(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:set_private_shop_style(13)
	say = say .. "已设为豪华旗型摊位。"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.set_yellow(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") >= 10000 and 1 or 0)) ~= 0 then
		player:take_gold(10000)
		player:set_private_shop_flag(0)
		say = say .. "花费10000金币，购买旗帜！"
		say = say .. "<返回/@main>"
	else
		say = say .. "金币不足，无法购买。"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.set_red(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") >= 10000 and 1 or 0)) ~= 0 then
		player:take_gold(10000)
		player:set_private_shop_flag(0)
		say = say .. "花费10000金币，旗帜已染成红色！"
		say = say .. "<返回/@main>"
	else
		say = say .. "金币不足，无法染色。"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.set_green(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") >= 10000 and 1 or 0)) ~= 0 then
		player:take_gold(10000)
		player:set_private_shop_flag(0)
		say = say .. "花费10000金币，旗帜已染成绿色！"
		say = say .. "<返回/@main>"
	else
		say = say .. "金币不足，无法染色。"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.set_blue(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") >= 10000 and 1 or 0)) ~= 0 then
		player:take_gold(10000)
		player:set_private_shop_flag(0)
		say = say .. "花费10000金币，旗帜已染成蓝色！"
		say = say .. "<返回/@main>"
	else
		say = say .. "金币不足，无法染色。"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.set_fense(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") >= 10000 and 1 or 0)) ~= 0 then
		player:take_gold(10000)
		player:set_private_shop_flag(0)
		say = say .. "花费10000金币，旗帜已染成粉色！"
		say = say .. "<返回/@main>"
	else
		say = say .. "金币不足，无法染色。"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.set_zise(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") >= 10000 and 1 or 0)) ~= 0 then
		player:take_gold(10000)
		player:set_private_shop_flag(0)
		say = say .. "花费10000金币，旗帜已染成紫色！"
		say = say .. "<返回/@main>"
	else
		say = say .. "金币不足，无法染色。"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.set_jinse(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") >= 10000 and 1 or 0)) ~= 0 then
		player:take_gold(10000)
		player:set_private_shop_flag(0)
		say = say .. "花费10000金币，旗帜已染成金色！"
		say = say .. "<返回/@main>"
	else
		say = say .. "金币不足，无法染色。"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

return M
