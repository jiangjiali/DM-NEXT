-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 王都送信任务
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "王都送信任务",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["落霞岛_衣服2"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(13) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--王都送信/@_RW_fulfilTaskDesp40>\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp40(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "“愿天下有情人，都成了眷属；是前生注定事，莫错过姻缘”\\"
	say = say .. "真的是太感谢你了；是你让那个呆子鼓起了勇气向我表白，你\\"
	say = say .. "真是个好心人，我都不知道该说些什么来感谢你。那个呆子这\\"
	say = say .. "次让你来找我，还有什么事情吗？\\"
	say = say .. "<他让我来看有什么可以帮你的/@_RW_fulfilTask40_10>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask40_10(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(13, 2)
	player:give_exp(100000)
	player:add_gold(500)
	player:give_item("给姐姐的信", 1)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了500绑定金币。")
	say = say .. "哦，原来是这事啊，又要麻烦你了。能否帮我送一封信给我\\"
	say = say .. "姐姐，她在王城里开了一家首饰店，不过规模要比我这里大\\"
	say = say .. "多了。那家首饰店在中州大陆上王城的中央广场附近，坐标\\"
	say = say .. "是471：251。你可以通过老兵直接传送过去，就是有点贵；\\"
	say = say .. "如果你没钱，就去落霞岛西海岸，从桃花渡口过去，不过路\\"
	say = say .. "途遥远，可能要走几天。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_衣服2"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(26) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--王都送信/@_RW_fulfilTaskDesp31>\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp31(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "“愿天下有情人，都成了眷属；是前生注定事，莫错过姻缘”\\"
	say = say .. "真的是太感谢你了；是你让那个呆子鼓起了勇气向我表白，你\\"
	say = say .. "真是个好心人，我都不知道该说些什么来感谢你。那个呆子这\\"
	say = say .. "次让你来找我，还有什么事情吗？\\"
	say = say .. "<他让我来看有什么可以帮你的/@_RW_fulfilTask31_31>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask31_31(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(26, 2)
	player:give_exp(100000)
	player:add_gold(500)
	player:give_item("给姐姐的信", 1)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了500绑定金币。")
	say = say .. "哦，原来是这事啊，又要麻烦你了。能否帮我送一封信给我\\"
	say = say .. "姐姐，她在王城里开了一家首饰店，不过规模要比我这里大\\"
	say = say .. "多了。那家首饰店在这片大陆上最大的城市--王城中央广场\\"
	say = say .. "附近，坐标是（471：251）。你直接跑过去就行了，或者使\\"
	say = say .. "用回城神石，那样要快一些。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["中州_首饰"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(13) == 2 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--王都送信/@_RW_fulfilTaskDesp3l>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(26) == 2 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--王都送信/@_RW_fulfilTaskDesp32>\\\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp3l(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "很长时间没有去遥远的落霞村了，不知道我那可爱的妹妹和\\"
	say = say .. "落霞村杂货铺的阿呆怎么样了？你是从落霞村来的，不知道\\"
	say = say .. "可否告诉我一些那边的消息，最好是那边衣服店里漂亮姑娘\\"
	say = say .. "的消息。\\"
	say = say .. "<我帮你妹妹送信的/@_RW_fulfilTask33_1>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask33_1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("给姐姐的信", 1) and 1 or 0)) ~= 0 then
		player:modify_task(13, 3)
		player:take_item("给姐姐的信", 1)
		player:give_exp(240000)
		player:give_item("餐饭", 1)
		say = say .. "这是我妹妹给我的信啊，大老远的也太辛苦你了。哎呀，已\\"
		say = say .. "经到吃饭时间了啊？你帮我把这份餐饭送到武馆吧，那里的\\"
		say = say .. "武馆教头是我老公。武馆在王城内东北方的（549：198）附\\"
		say = say .. "近。可不许偷吃哦！我老公有很多护甲，自己穿不上，也一\\"
		say = say .. "直没合适机会送人。他会送你一件新衣服略表谢意的。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp32(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "很长时间没有去遥远的海角村了，不知道我那可爱的妹妹和\\"
	say = say .. "海角村杂货铺的阿呆怎么样了？你是从海角村来的，不知道\\"
	say = say .. "可否告诉我一些那边的消息，最好是那边衣服店里漂亮姑娘\\"
	say = say .. "的消息。\\"
	say = say .. "<我帮你妹妹送信的/@_RW_fulfilTask33_2>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask33_2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("给姐姐的信", 1) and 1 or 0)) ~= 0 then
		player:modify_task(26, 3)
		player:take_item("给姐姐的信", 1)
		player:give_exp(240000)
		player:give_item("餐饭", 1)
		say = say .. "这是我妹妹给我的信啊，大老远的也太辛苦你了。哎呀，已\\"
		say = say .. "经到吃饭时间了啊？你帮我把这份餐饭送到武馆吧，那里的\\"
		say = say .. "武馆教头是我老公。武馆在王城内东北方的（549：198）附\\"
		say = say .. "近。可不许偷吃哦！我老公有很多护甲，自己穿不上，也一\\"
		say = say .. "直没合适机会送人。他会送你一件新衣服略表谢意的。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

M["中州_武馆"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(13) == 3 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--王都送信/@_RW_fulfilTaskDesp35_1>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(26) == 3 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--王都送信/@_RW_fulfilTaskDesp35_2>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(27) == 5 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "武官之心任务", "中州_武馆1")
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp35_1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "白天在武馆授徒，晚上回首饰店的家里陪老婆，这种日子过\\"
	say = say .. "得真是惬意。真希望这太平盛世能长久下去！差点忘记，是\\"
	say = say .. "吃饭时间了，我看你有点面生，难道我老婆又找了一个陌生\\"
	say = say .. "人来送饭，哈哈。\\"
	say = say .. "<猜对了，我来送饭的/@_RW_fulfilTask35_11>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp35_2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "白天在武馆授徒，晚上回首饰店的家里陪老婆，这种日子过\\"
	say = say .. "得真是惬意。真希望这太平盛世能长久下去！差点忘记，是\\"
	say = say .. "吃饭时间了，我看你有点面生，难道我老婆又找了一个陌生\\"
	say = say .. "人来送饭，哈哈。\\"
	say = say .. "<猜对了，我来送饭的/@_RW_fulfilTask35_22>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask35_11(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("餐饭", 1) and 1 or 0)) ~= 0 then
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	if ((player:get_var("sex") == 0 and 1 or 0)) ~= 0 then
		player:complete_task(13)
		player:take_item("餐饭", 1)
		player:give_exp(240000)
		player:give_item("轻盔(男)", 1, true)
		player:add_task(27)
		say = say .. "老婆真是有本事，每天都能找到不同的人给我送餐饭。不管\\"
		say = say .. "怎么说，还是感谢你跑这么一趟。请稍等一下，我看你是个\\"
		say = say .. "勇者，不如帮我做件事情，只要成功，绝对名利双收。你去\\"
		say = say .. "找中州广场上的老兵，他会告诉你具体内容的。\\"
		say = say .. "<离开/@exit>"
	elseif ((player:get_var("sex") == 1 and 1 or 0)) ~= 0 then
		player:complete_task(13)
		player:take_item("餐饭", 1)
		player:give_exp(240000)
		player:give_item("轻盔(女)", 1, true)
		player:add_task(27)
		say = say .. "老婆真是有本事，每天都能找到不同的人给我送餐饭。不管\\"
		say = say .. "怎么说，还是感谢你跑这么一趟。请稍等一下，我看你是个\\"
		say = say .. "勇者，不如帮我做件事情，只要成功，绝对名利双收。你去\\"
		say = say .. "找中州广场上的老兵，他会告诉你具体内容的。\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask35_22(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("餐饭", 1) and 1 or 0)) ~= 0 then
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	if ((player:get_var("sex") == 0 and 1 or 0)) ~= 0 then
		player:complete_task(26)
		player:take_item("餐饭", 1)
		player:give_exp(240000)
		player:give_item("轻盔(男)", 1, true)
		player:add_task(27)
		say = say .. "老婆真是有本事，每天都能找到不同的人给我送餐饭。不管\\"
		say = say .. "怎么说，还是感谢你跑这么一趟。请稍等一下，我看你是个\\"
		say = say .. "勇者，不如帮我做件事情，只要成功，绝对名利双收。你去\\"
		say = say .. "找中州广场上的老兵，他会告诉你具体内容的。\\"
		say = say .. "<离开/@exit>"
	end
	if ((player:get_var("sex") == 1 and 1 or 0)) ~= 0 then
		player:complete_task(26)
		player:take_item("餐饭", 1)
		player:give_exp(240000)
		player:give_item("轻盔(女)", 1, true)
		player:add_task(27)
		say = say .. "老婆真是有本事，每天都能找到不同的人给我送餐饭。不管\\"
		say = say .. "怎么说，还是感谢你跑这么一趟。请稍等一下，我看你是个\\"
		say = say .. "勇者，不如帮我做件事情，只要成功，绝对名利双收。你去\\"
		say = say .. "找中州广场上的老兵，他会告诉你具体内容的。\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

return M
