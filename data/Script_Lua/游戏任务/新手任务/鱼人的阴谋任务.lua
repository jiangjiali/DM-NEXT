-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 鱼人的阴谋任务
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "鱼人的阴谋任务",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["落霞岛_炼药"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(2) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--鱼人的阴谋/@_RW_fulfilTaskDesp1>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(2) == 2 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--鱼人的阴谋/@_RW_fulfilTaskDesp2>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(8) == 1 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "打听交易任务", "落霞岛_炼药1")
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "虽然只是小小的 1块兔肉，但是对于村民来说意义重大，你\\"
	say = say .. "找到兔肉了吗？如果有的话赶紧给我吧，救人如救火，时间\\"
	say = say .. "紧迫啊。\\"
	say = say .. "<交还兔肉/@_RW_fulfilTask2_2>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask2_2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("兔肉", 1) and 1 or 0)) ~= 0 then
		player:complete_task(2)
		player:take_item("兔肉", 1)
		player:give_item("幻彩手镯", 2, true)
		player:give_item("解毒药", 1)
		player:add_gold(100)
		player:give_exp(900)
		player:add_task(3)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了100金币。")
		say = say .. "那些中毒的村民终于有救了，我代表乡亲们感谢你，我这就\\"
		say = say .. "加紧赶制解毒药。书店老板的家人好像中毒比较深，你先把\\"
		say = say .. "这包我刚做好的解毒药给他送过去，他就在村子西门附近的\\"
		say = say .. "书店（234：225）。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "原是张屠夫让你来送鹿肉的啊，我上午刚预定的下午就收到\\"
	say = say .. "了，他还真守信用！不过还是要谢谢你，我忙着配药，真是\\"
	say = say .. "太忙了，已经饿得有些头晕眼花的，说话都没有力气了。\\"
	say = say .. "<交还新鲜鹿肉/@_RW_fulfilTask1_1>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask1_1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("新鲜鹿肉", 1) and 1 or 0)) ~= 0 then
		player:modify_task(2, 2)
		player:give_exp(600)
		player:take_item("新鲜鹿肉", 1)
		say = say .. "你是个好人，可你不知道……唉，节日临近了，村里头患病\\"
		say = say .. "的乡亲却越来越多了，而且病情都非常相似。我查来查去最\\"
		say = say .. "后听老兵说前些日子发现有鱼人溜进了村子，还在水井附近\\"
		say = say .. "鬼鬼祟祟，一定是鱼人投毒了！我这两天忙着配制解毒药解\\"
		say = say .. "救村民，原料快用光了；麻烦你帮我弄 1块兔肉来，我已经\\"
		say = say .. "几乎没有力气了。<color=green 村子附近有很多兔子出没，你杀死兔子以>\\"
		say = say .. "<color=green 后，对着兔子的尸体按ALT+鼠标左键，就能获得兔肉了>。\\"
		say = say .. "凑齐了1个兔肉记得回来找我。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

M["海角_炼药"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(15) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--鱼人的阴谋/@_RW_fulfilTaskDesp10>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(15) == 2 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--鱼人的阴谋/@_RW_fulfilTaskDesp11>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(21) == 1 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "打听交易任务", "海角_炼药1")
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp10(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "原是张屠夫让你来送猪肉的啊，我上午刚预定的下午就收到\\"
	say = say .. "了，他还真守信用！不过还是要谢谢你，我忙着配药，真是\\"
	say = say .. "太忙了，已经饿得有些头晕眼花的，说话都没有力气了。\\"
	say = say .. "<交还新鲜猪肉/@_RW_fulfilTask10_10>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp11(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "虽然只是小小的 5块蟾酥，但是对于村民来说意义重大，你\\"
	say = say .. "找到蟾酥了吗？如果有的话赶紧给我吧，救人如救火，时间\\"
	say = say .. "紧迫啊。\\"
	say = say .. "<交还蟾酥/@_RW_fulfilTask11_11>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask11_11(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("蟾酥", 5) and 1 or 0)) ~= 0 then
		player:complete_task(15)
		player:take_item("蟾酥", 5)
		player:give_item("幻彩手镯", 2, true)
		player:give_item("解毒药", 1)
		player:add_gold(100)
		player:give_exp(900)
		player:add_task(16)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了100金币。")
		say = say .. "那些中毒的村民终于有救了，我代表乡亲们感谢你，我这就\\"
		say = say .. "加紧赶制解毒药。书店老板的家人好像中毒比较深，你先把\\"
		say = say .. "这包我刚做好的解毒药给他送过去，他就在村子西门附近的\\"
		say = say .. "书店（406：600）。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask10_10(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("新鲜猪肉", 1) and 1 or 0)) ~= 0 then
		player:modify_task(15, 2)
		player:give_exp(600)
		player:take_item("新鲜猪肉", 1)
		say = say .. "村里有很多中毒的人，我需要蟾酥来配药。\\"
		say = say .. "麻烦你帮我弄 5块蟾酥来，我已经几乎没有力气了。\\"
		say = say .. "村子附近有很多癞蛤蟆出没，<color=green 你杀死癞蛤蟆后，对着癞蛤蟆>\\"
		say = say .. "<color=green 的尸体按ALT+鼠标左键，就可以获得蟾酥了>。\\"
		say = say .. "凑齐了5个蟾酥记得回来找我。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

return M
