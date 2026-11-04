-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 雪中送炭任务
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "雪中送炭任务",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["落霞岛_书店"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(3) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--雪中送炭/@_RW_fulfilTaskDesp1>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(3) == 3 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--雪中送炭/@_RW_fulfilTaskDesp3>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(3) == 4 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--雪中送炭/@_RW_fulfilTaskDesp4>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(6) == 1 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "打听拜师任务", "落霞岛_书店1")
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp4(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "麻烦你跑了这么多趟，我都有一些不好意思了，呵呵。你是\\"
	say = say .. "个好人，好人会有好报的。请问你帮我买到修复油了吗？\\"
	say = say .. "<给你修复油/@_RW_fulfilTask4_4>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask4_4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("修复油", 1) and 1 or 0)) ~= 0 and ((player:get_var("job") == 0 and 1 or 0)) ~= 0 then
		player:take_item("修复油", 1)
		player:complete_task(3)
		player:give_item("初级剑法", 1)
		player:add_task(4)
		say = say .. "谢谢你，这本书就送给你了，好好钻研啊。在包裹中双击书\\"
		say = say .. "籍，就可以学习了。如果你有时间，就去铁匠那里看看吧，\\"
		say = say .. "他可以教你如何挖矿赚钱。\\"
		say = say .. "<离开/@exit>"
	elseif ((player:has_item("修复油", 1) and 1 or 0)) ~= 0 and ((player:get_var("job") == 1 and 1 or 0)) ~= 0 then
		player:take_item("修复油", 1)
		player:complete_task(3)
		player:give_item("小火球", 1)
		player:add_task(4)
		say = say .. "谢谢你，这本书就送给你了，好好钻研啊。在包裹中双击书\\"
		say = say .. "籍，就可以学习了。如果你有时间，就去铁匠那里看看吧，\\"
		say = say .. "他可以教你如何挖矿赚钱。\\"
		say = say .. "<离开/@exit>"
	elseif ((player:has_item("修复油", 1) and 1 or 0)) ~= 0 and ((player:get_var("job") == 2 and 1 or 0)) ~= 0 then
		player:take_item("修复油", 1)
		player:complete_task(3)
		player:give_item("治疗术", 1)
		player:add_task(4)
		say = say .. "谢谢你，这本书就送给你了，好好钻研啊。在包裹中双击书\\"
		say = say .. "籍，就可以学习了。如果你有时间，就去铁匠那里看看吧，\\"
		say = say .. "他可以教你如何挖矿赚钱。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "请问我的修复油带来了吗？\\"
		say = say .. "没有的话，你可以去杂货铺购买。\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp3(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "服下解药之后，老婆孩子都明显好转了……真是一件值得庆\\"
	say = say .. "祝的事情，不过首先要感谢的是炼药师和你这个送药人。我\\"
	say = say .. "现在终于可以腾出手来修理书橱了，你找到木材了吗？\\"
	say = say .. "<给你书橱木材/@_RW_fulfilTask3_3>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask3_3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("书橱木材", 1) and 1 or 0)) ~= 0 then
		player:modify_task(3, 4)
		player:take_item("书橱木材", 1)
		player:give_exp(1800)
		player:add_gold(800)
		player:give_item("修复油", 1)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了800金币。")
		say = say .. "真不错啊，这些木材够我再做一个新书橱了，可惜我的工具\\"
		say = say .. "有些旧了。眼看就到梅雨季节了，我可不想我那些宝贝书都\\"
		say = say .. "被虫子给蠹了。工欲善其事，必先利其器，这个事情又要麻\\"
		say = say .. "烦你哦。你再帮我买瓶修复油来吧，我先把那些工具修理一\\"
		say = say .. "下。你去村子中央的杂货铺（233：255）买修复油吧。\\"
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
	say = say .. "自从老婆孩子中毒以来，我的头发都灰白了一半，如果家人\\"
	say = say .. "有什么三长两短，我活着还有什么意义啊？真希望村里的药\\"
	say = say .. "师快点配好解药啊，早点让我的家人脱离苦海，就算要付出\\"
	say = say .. "我的生命也在所不惜……你当真是来送解药的？\\"
	say = say .. "<交还解药/@_RW_fulfilTask1_1>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask1_1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("解毒药", 1) and 1 or 0)) ~= 0 then
		player:modify_task(3, 2)
		player:give_exp(1350)
		player:take_item("解毒药", 1)
		say = say .. "太好了，你真是雪中送炭啊，我的家人有救了。我的书橱坏\\"
		say = say .. "掉了，需要重新找些木头来修理它。你帮我去建材商人那里\\"
		say = say .. "看看能不能借点木材来，我现在得先把药送回家去救人。建\\"
		say = say .. "材商人在村子东南边的木材铺（249：270）附近。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

M["落霞岛_建材"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(3) == 2 and 1 or 0)) ~= 0 then
		say = say .. "<新手任务--雪中送炭/@_RW_fulfilTask2>\\\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask2(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(3, 3)
	player:give_item("书橱木材", 1)
	player:give_exp(1500)
	say = say .. "唉…原来你是找我借木材，不是买啊，让我考虑一下，近来\\"
	say = say .. "木材奇缺，王城那边都供不应求了。这样吧，我先把木材借\\"
	say = say .. "给你，但到了19级的时候，你一定要记得来帮我砍树！差点\\"
	say = say .. "忘记，你赶快把木材送回给书店老板吧。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_书店"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(16) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--雪中送炭/@_RW_fulfilTaskDesp10>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(16) == 3 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--雪中送炭/@_RW_fulfilTaskDesp12>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(16) == 4 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--雪中送炭/@_RW_fulfilTaskDesp13>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(19) == 1 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "打听拜师任务", "海角_书店10")
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
	say = say .. "自从老婆孩子中毒以来，我的头发都灰白了一半，如果家人\\"
	say = say .. "有什么三长两短，我活着还有什么意义啊？真希望村里的药\\"
	say = say .. "师快点配好解药啊，早点让我的家人脱离苦海，就算要付出\\"
	say = say .. "我的生命也在所不惜……你当真是来送解药的？\\"
	say = say .. "<交还解药/@_RW_fulfilTask10_10>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask10_10(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("解毒药", 1) and 1 or 0)) ~= 0 then
		player:modify_task(16, 2)
		player:give_exp(1350)
		player:take_item("解毒药", 1)
		say = say .. "太好了，你真是雪中送炭啊，我的家人有救了。我的书橱坏\\"
		say = say .. "掉了，需要重新找些木头来修理它。你帮我去建材商人那里\\"
		say = say .. "看看能不能借点木材来，我现在得先把药送回家去救人。建\\"
		say = say .. "材商人在村子东南边的木材铺（425：630）附近。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

M["海角_建材"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(16) == 2 and 1 or 0)) ~= 0 then
		say = say .. "<新手任务--雪中送炭/@_RW_fulfilTask11>\\\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask11(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(16, 3)
	player:give_item("书橱木材", 1)
	player:give_exp(1500)
	say = say .. "你可以到铁匠那里购买伐木斧，装备上后去攻击野外的树，\\"
	say = say .. "将树砍倒后站在旁边按住ALT＋鼠标左键点树，就可以得到\\"
	say = say .. "木材了，回来卖给我，我会根据品质收购的。这是木材，你\\"
	say = say .. "把它送给书店老板吧。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp12(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "服下解药之后，老婆孩子都明显好转了……真是一件值得庆\\"
	say = say .. "祝的事情，不过首先要感谢的是炼药师和你这个送药人。我\\"
	say = say .. "现在终于可以腾出手来修理书橱了，你找到木材了吗？\\"
	say = say .. "<给你书橱木材/@_RW_fulfilTask12_12>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask12_12(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("书橱木材", 1) and 1 or 0)) ~= 0 then
		player:modify_task(16, 4)
		player:take_item("书橱木材", 1)
		player:give_exp(1800)
		player:add_gold(800)
		player:give_item("修复油", 1)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了800金币。")
		say = say .. "真不错啊，这些木材够我再做一个新书橱了，可惜我的工具\\"
		say = say .. "有些旧了，眼看就到梅雨季节了，我可不想我那些宝贝书都\\"
		say = say .. "被虫子给蠹了，工欲善其事，必先利其器，这个事情又要麻\\"
		say = say .. "烦你哦，你再帮我买瓶修复油来吧，我先把那些工具修理一\\"
		say = say .. "下。你去村子北门右边的杂货铺（429：600）买修复油吧。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp13(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "麻烦你跑了这么多趟，我都有一些不好意思了，呵呵。你是\\"
	say = say .. "个好人，好人会有好报的。请问你帮我买到修复油了吗？\\"
	say = say .. "<给你修复油/@_RW_fulfilTask13_13>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask13_13(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("修复油", 1) and 1 or 0)) ~= 0 and ((player:get_var("job") == 0 and 1 or 0)) ~= 0 then
		player:take_item("修复油", 1)
		player:complete_task(16)
		player:give_item("基本剑法", 1)
		player:add_task(17)
		say = say .. "谢谢你，这本书就送给你了，好好钻研啊。在包裹中双击书\\"
		say = say .. "籍，就可以学习了。如果你有时间，就去铁匠那里看看吧，\\"
		say = say .. "他可以教你如何挖矿赚钱。\\"
		say = say .. "<离开/@exit>"
	elseif ((player:has_item("修复油", 1) and 1 or 0)) ~= 0 and ((player:get_var("job") == 1 and 1 or 0)) ~= 0 then
		player:take_item("修复油", 1)
		player:complete_task(16)
		player:give_item("小火球", 1)
		player:add_task(17)
		say = say .. "谢谢你，这本书就送给你了，好好钻研啊。在包裹中双击书\\"
		say = say .. "籍，就可以学习了。如果你有时间，就去铁匠那里看看吧，\\"
		say = say .. "他可以教你如何挖矿赚钱。\\"
		say = say .. "<离开/@exit>"
	elseif ((player:has_item("修复油", 1) and 1 or 0)) ~= 0 and ((player:get_var("job") == 2 and 1 or 0)) ~= 0 then
		player:take_item("修复油", 1)
		player:complete_task(16)
		player:give_item("治疗术", 1)
		player:add_task(17)
		say = say .. "谢谢你，这本书就送给你了，好好钻研啊。在包裹中双击书\\"
		say = say .. "籍，就可以学习了。如果你有时间，就去铁匠那里看看吧，\\"
		say = say .. "他可以教你如何挖矿赚钱。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "请问我的修复油带来了吗？\\"
		say = say .. "没有的话，你可以去杂货铺购买。\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

return M
