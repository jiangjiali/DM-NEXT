-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 骑兵竞技场门房
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "骑兵竞技场门房",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你准备好了吗?准备好了我就会将你传送上\\"
	say = say .. "跑道上了,而且计时也开始,如果150秒内没跑\\"
	say = say .. "完赛道视为作弊\\"
	say = say .. "\\"
	say = say .. "<我准备好了/@ready1>\\"
	say = say .. "<我要离开这!/@leave>\\"
	say = say .. "<还没呢!/@eixt>\\\\"
	return { say = say, page = goto_page, close = close }
end

function M.leave(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:teleport(16, 469, 222)
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.ready1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("horserace.raceway1") == 0 and 1 or 0)) ~= 0 then
		player:set_var("horserace.raceway1", "1")
		player:set_var("horserace.player1name", player:get_var_str("username"))
		player:teleport(258, 126, 67)
	else
		ScriptEngine.call(player, "骑兵竞技场门房", "ready2")
	end
	return { say = say, page = goto_page, close = close }
end

function M.ready2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("horserace.raceway2") == 0 and 1 or 0)) ~= 0 then
		player:set_var("horserace.raceway2", "1")
		player:set_var("horserace.player2name", player:get_var_str("username"))
		player:teleport(258, 129, 70)
	else
		ScriptEngine.call(player, "骑兵竞技场门房", "reday3")
	end
	return { say = say, page = goto_page, close = close }
end

function M.ready3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("horserace.raceway3") == 0 and 1 or 0)) ~= 0 then
		player:set_var("horserace.raceway3", "1")
		player:set_var("horserace.player3name", player:get_var_str("username"))
		player:teleport(258, 132, 73)
	else
		ScriptEngine.call(player, "骑兵竞技场门房", "reday4")
	end
	return { say = say, page = goto_page, close = close }
end

function M.ready4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("horserace.raceway4") == 0 and 1 or 0)) ~= 0 then
		player:set_var("horserace.raceway4", "1")
		player:set_var("horserace.player4name", player:get_var_str("username"))
		player:teleport(258, 135, 76)
		close = true
	else
		say = say .. "目前没有赛道可用!\\"
		say = say .. "<哦!知道了/@exit>\\"
	end
	return { say = say, page = goto_page, close = close }
end

return M
