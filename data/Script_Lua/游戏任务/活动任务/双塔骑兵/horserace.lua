-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: horserace
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "horserace",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.start1(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.timer_start(1)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "计时开始!")
	return { say = say, page = goto_page, close = close }
end

function M.start2(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.timer_start(2)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "计时开始!")
	return { say = say, page = goto_page, close = close }
end

function M.start3(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.timer_start(3)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "计时开始!")
	return { say = say, page = goto_page, close = close }
end

function M.start4(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.timer_start(4)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "计时开始!")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("horserace.player1name") == player:get_var("username") and 1 or 0)) ~= 0 then
		ScriptEngine.timer_stop(1)
		ScriptEngine.system_msg("玩家<$username>在第一跑马道的成绩为<$timer1time>秒")
		player:set_var("horserace.player1name", "0")
		player:set_var("horserace.raceway1", "0")
		ScriptEngine.call(player, "horserace", "checkin1")
		player:teleport(258, 130, 140)
	elseif ((player:get_var("horserace.player2name") == player:get_var("username") and 1 or 0)) ~= 0 then
		ScriptEngine.timer_stop(2)
		ScriptEngine.system_msg("玩家<$username>在第二跑马道的成绩为<$timer2time>秒")
		player:set_var("horserace.player2name", "0")
		player:set_var("horserace.raceway2", "0")
		ScriptEngine.call(player, "horserace", "checkin2")
		player:teleport(258, 130, 140)
	elseif ((player:get_var("horserace.player3name") == player:get_var("username") and 1 or 0)) ~= 0 then
		ScriptEngine.timer_stop(3)
		ScriptEngine.system_msg("玩家<$username>在第三跑马道的成绩为<$timer3time>秒")
		player:set_var("horserace.player3name", "0")
		player:set_var("horserace.raceway3", "0")
		ScriptEngine.call(player, "horserace", "checkin3")
		player:teleport(258, 130, 140)
	elseif ((player:get_var("horserace.player4name") == player:get_var("username") and 1 or 0)) ~= 0 then
		ScriptEngine.timer_stop(4)
		ScriptEngine.system_msg("玩家<$username>在第四跑马道的成绩为<$timer4time>秒")
		player:set_var("horserace.player4name", "0")
		player:set_var("horserace.raceway4", "0")
		ScriptEngine.call(player, "horserace", "checkin4")
		player:teleport(258, 130, 140)
	end
	return { say = say, page = goto_page, close = close }
end

function M.endpoint2(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint3(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint4(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint5(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint6(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint7(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint8(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint9(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint10(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint11(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint12(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint13(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint14(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint15(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint16(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint17(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint18(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint19(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint20(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint21(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint22(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint23(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint24(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint25(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint26(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.endpoint27(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "horserace", "endpoint1")
	return { say = say, page = goto_page, close = close }
end

function M.checkin1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("timer1time") < player:get_var("horserace.besttime") and 1 or 0)) ~= 0 then
		player:set_var("horserace.besttime", player:get_var_str("timer1time"))
		player:set_var("horserace.bestplayer", player:get_var_str("username"))
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

function M.checkin2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "checkex $timer2time < $horserace.besttime"
	player:set_var("horserace.besttime", player:get_var_str("timer2time"))
	player:set_var("horserace.bestplayer", player:get_var_str("username"))
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.checkin3(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "checkex $timer3time < $horserace.besttime "
	player:set_var("horserace.besttime", player:get_var_str("timer3time"))
	player:set_var("horserace.bestplayer", player:get_var_str("username"))
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.checkin4(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "checkex $timer4time < $horserace.besttime "
	player:set_var("horserace.besttime", player:get_var_str("timer4time"))
	player:set_var("horserace.bestplayer", player:get_var_str("username"))
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.awardprize(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((ScriptEngine.is_online(player:get_var_str("horserace.bestplyaer")) and 1 or 0)) ~= 0 then
		player:set_var("horserace.raceway1", "0")
		player:set_var("horserace.raceway2", "0")
		player:set_var("horserace.raceway3", "0")
		player:set_var("horserace.raceway4", "0")
		player:set_var("horserace.player1name", "0")
		player:set_var("horserace.player2name", "0")
		player:set_var("horserace.player3name", "0")
		player:set_var("horserace.player4name", "0")
		ScriptEngine.timer_stop(1)
		ScriptEngine.timer_stop(2)
		ScriptEngine.timer_stop(3)
		ScriptEngine.timer_stop(4)
		ScriptEngine.multimap_hum_teleport(258, 258, 16, 469, 222)
		player:show_page(player:get_var_str("horserace.bestplyaer"), "@pay")
	else
		player:set_var("horserace.raceway1", "0")
		player:set_var("horserace.raceway2", "0")
		player:set_var("horserace.raceway3", "0")
		player:set_var("horserace.raceway4", "0")
		player:set_var("horserace.player1name", "0")
		player:set_var("horserace.player2name", "0")
		player:set_var("horserace.player3name", "0")
		player:set_var("horserace.player4name", "0")
		ScriptEngine.timer_stop(1)
		ScriptEngine.timer_stop(2)
		ScriptEngine.timer_stop(3)
		ScriptEngine.timer_stop(4)
		ScriptEngine.multimap_hum_teleport(258, 258, 16, 469, 222)
	end
	return { say = say, page = goto_page, close = close }
end

function M.pay(player)
	local say = ""
	local goto_page = nil
	local close = false
	do
		local __sel = ScriptEngine.range_random(2, 4)
		if __sel == 2 then
			player:add_gold(100000)
			player:scroll_text("玩家<$horserace.bestplayer>在骑兵竞技赛中成绩排名第一,用时为<$horserace.besttime>秒.奖金100000")
		elseif __sel == 3 then
			player:give_exp(1000000)
			player:scroll_text("玩家<$horserace.bestplayer>在骑兵竞技赛中成绩排名第一,用时为<$horserace.besttime>秒.奖经验值1000000")
		elseif __sel == 4 then
			player:give_item("回城石", 1)
			player:scroll_text("玩家<$horserace.bestplayer>在骑兵竞技赛中成绩排名第一,用时为<$horserace.besttime>秒.奖回城石一颗")
			close = true
		end
	end
	return { say = say, page = goto_page, close = close }
end

function M.initialization(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:set_var("horserace.raceway1", "0")
	player:set_var("horserace.raceway2", "0")
	player:set_var("horserace.raceway3", "0")
	player:set_var("horserace.raceway4", "0")
	player:set_var("horserace.player1name", "0")
	player:set_var("horserace.player2name", "0")
	player:set_var("horserace.player3name", "0")
	player:set_var("horserace.player4name", "0")
	player:set_var("horserace.besttime", "130")
	player:set_var("horserace.bestplayer", "0")
	return { say = say, page = goto_page, close = close }
end

return M
