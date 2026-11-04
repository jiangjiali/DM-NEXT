-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 武官之心任务
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "武官之心任务",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["中州_老兵"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	if ((player:task_step(27) == 1 and 1 or 0)) ~= 0 then
		say = say .. "<新手任务--武官之心/@_RW_fulfilTaskDesp50>\\"
	elseif ((player:task_step(27) == 4 and 1 or 0)) ~= 0 then
		say = say .. "<新手任务--武官之心/@_RW_fulfilTaskDesp51>\\"
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp51(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "中州武馆的武馆教头曾告诉我，你是个有勇有谋的侠客，前\\"
	say = say .. "途不可限量。所以我放心的让你去将军坟东进行调查，因为\\"
	say = say .. "我对你的能力非常有信心。同样，我也相信你可以很快的杀\\"
	say = say .. "死尸卫，为中州的百姓做一件好事。你现在回来找我，就是\\"
	say = say .. "说，你已经成功了？\\"
	say = say .. "<完成任务/@_RW_fulfilTask51_51>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask51_51(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(27, 5)
	player:give_exp(200000)
	say = say .. "你竟然安全地回来了？看来你真是一位勇士啊！回去告诉武\\"
	say = say .. "馆教头吧，他会给你奖励的。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp50(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你是武馆教头口中说的年轻人吗？让我看看你的能耐把。\\"
	say = say .. "<好的/@_RW_fulfilTask50_50>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask50_50(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:give_item("治疗神水")
	player:give_item("回城神石")
	player:set_task_value(27, 0, 5)
	player:modify_task(27, 2)
	say = say .. "你帮我去杀掉将军坟东那些恶魔力量附身的尸卫吧，要是让\\"
	say = say .. "它们逃出来，将会天下大乱。我的要求是，最少杀死5个尸卫。\\"
	say = say .. "这些尸卫凶残无比，为了让你有命回来，我送给你瓶<color=green 治疗神>\\"
	say = say .. "<color=green 水>，他可以瞬间补充你的体力和魔法，让你在危急的时刻得\\"
	say = say .. "以逃生。再给你一块<color=green 回城神石>，你可以在我这里记录回城点。\\"
	say = say .. "当你完成任务的时候，只要使用回城神石，就可以马上传送\\"
	say = say .. "回来啦！\\"
	say = say .. "<好，义不容辞/@_RW_accept50_501>                <懒得去/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_accept50_501(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "快去将军坟东杀5只尸卫吧，王城的百姓盼望着你胜利归来。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["中州_武馆1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--武官之心/@_RW_fulfilTaskDesp52>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp52(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "看来你的能力已经得到了老兵的认可，这些东西就作为奖励\\"
	say = say .. "吧。史官大人对你的英勇行为非常感兴趣，他希望能够见见\\"
	say = say .. "你。在皇宫里面可以看到他，你去中州皇宫（470，150）\\"
	say = say .. "附近去看看吧。\\"
	say = say .. "<我马上就去/@_RW_fulfilTask52_52>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask52_52(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:complete_task(27)
	player:give_exp(200000)
	player:add_task(28)
	say = say .. "太棒了，你成功的阻止了邪恶尸卫重现人间。看来暂时是能\\"
	say = say .. "够安宁些了。加油，以后不要放弃正义的行为。史官大人对\\"
	say = say .. "你的英勇行为非常感兴趣，他希望能够见见你。在皇宫里面\\"
	say = say .. "可以找到他，你去中州皇宫（470：150）附近看看吧。\\"
	say = say .. "<离开/@exit>"
	if ((player:get_var("job") == 0 and 1 or 0)) ~= 0 then
		player:give_item("修罗战斧", 1)
	elseif ((player:get_var("job") == 1 and 1 or 0)) ~= 0 then
		player:give_item("狼牙棒", 1)
	elseif ((player:get_var("job") == 2 and 1 or 0)) ~= 0 then
		player:give_item("降魔剑", 1)
	end
	return { say = say, page = goto_page, close = close }
end

return M
