-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 史官
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "史官",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "国王有令：为天下最强的勇士们在中州大道树立雕像，彰显\\"
	say = say .. "他们名号。天下群豪尽可以到我这里来登记在案，看看到底\\"
	say = say .. "谁是群雄中的最强者。如果来登记的勇士中你是最强的一位，\\"
	say = say .. "你从此以后就可以名扬天下了。\\\\"
	say = say .. "<可接任务/@_RW_entry>\\"
	say = say .. "<我是天下第一/@imsuperman>\\"
	say = say .. "<天下第一有谁/@aboutsuperman>\\"
	say = say .. "<离开/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M._RW_entry(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "史官的愤怒任务", "中州_史官")
	return { say = say, page = goto_page, close = close }
end

function M.imsuperman(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("level") > 21 and 1 or 0)) ~= 0 then
		goto_page = "imsupermanok"
	else
		say = say .. "看来你很有信心，不过你连进入名人堂的资格还没有达到，你需要\\"
		say = say .. "22级来证明自己的实力，现在来申请天下第一恐怕还嫌早。\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.imsupermanok(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("level") > 21 and 1 or 0)) ~= 0 and (((player:enter_top_list()) and 1 or 0)) ~= 0 then
		say = say .. "申请天下第一成功! \\\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "您的等级还不能超越现在的天下第一,申请天下第一失败!\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.aboutsuperman(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<天下第一男战士/@worrmale>\\"
	say = say .. "<天下第一女战士/@worrfemale>\\"
	say = say .. "<天下第一男道士/@taomale>\\"
	say = say .. "<天下第一女道士/@taofemale>\\"
	say = say .. "<天下第一男法师/@wizmale>\\"
	say = say .. "<天下第一女法师/@wizfemale>\\"
	return { say = say, page = goto_page, close = close }
end

function M.worrmale(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "天下第一男战士：<$TOP_0_0_NAME> \\"
	say = say .. "所属行会：<$top_0_0_guildname>\\\\"
	say = say .. "纷扰乱世群雄逐鹿，<$TOP_0_0_NAME>在烽烟四起的传奇世界中修炼\\"
	say = say .. "成为天下第一，从<$TOP_0_0_rankdate>至今还没有人可以超越。\\"
	say = say .. "<$TOP_0_0_NAME>的等级为<$TOP_0_0_level>级。\\"
	say = say .. "今天的天下第一是<$TOP_0_0_NAME>，明天的天下第一会是谁？\\\\"
	say = say .. "申请天下第一名号，请到中州471，229处找史官    <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.worrfemale(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "天下第一女战士：<$TOP_0_1_NAME> \\"
	say = say .. "所属行会：<$top_0_1_guildname>\\\\"
	say = say .. "纷扰乱世群雄逐鹿，<$TOP_0_1_NAME>在烽烟四起的传奇世界中修炼\\"
	say = say .. "成为天下第一，从<$TOP_0_1_rankdate>至今还没有人可以超越。\\"
	say = say .. "<$TOP_0_1_NAME>的等级为<$TOP_0_1_level>级。\\"
	say = say .. "今天的天下第一是<$TOP_0_1_NAME>，明天的天下第一会是谁？\\\\"
	say = say .. "申请天下第一名号，请到中州471，229处找史官    <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.taomale(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "天下第一男道士：<$TOP_2_0_NAME> \\"
	say = say .. "所属行会：<$top_2_0_guildname>\\\\"
	say = say .. "纷扰乱世群雄逐鹿，<$TOP_2_0_NAME>在烽烟四起的传奇世界中修炼\\"
	say = say .. "成为天下第一，从<$TOP_2_0_rankdate>至今还没有人可以超越。\\"
	say = say .. "<$TOP_2_0_NAME>的等级为<$TOP_2_0_level>级。\\"
	say = say .. "今天的天下第一是<$TOP_2_0_NAME>，明天的天下第一会是谁？\\\\"
	say = say .. "申请天下第一名号，请到中州471，229处找史官    <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.taofemale(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "天下第一女道士：<$TOP_2_1_NAME> \\"
	say = say .. "所属行会：<$top_2_1_guildname>\\\\"
	say = say .. "纷扰乱世群雄逐鹿，<$TOP_2_1_NAME>在烽烟四起的传奇世界中修炼\\"
	say = say .. "成为天下第一，从<$TOP_0_0_rankdate>至今还没有人可以超越。\\"
	say = say .. "<$TOP_2_1_NAME>的等级为<$TOP_2_1_level>级。\\"
	say = say .. "今天的天下第一是<$TOP_2_1_NAME>，明天的天下第一会是谁？\\\\"
	say = say .. "申请天下第一名号，请到中州471，229处找史官    <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.wizmale(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "天下第一男法师：<$TOP_1_0_NAME> \\"
	say = say .. "所属行会：<$top_1_0_guildname>\\\\"
	say = say .. "纷扰乱世群雄逐鹿，<$TOP_1_0_NAME>在烽烟四起的传奇世界中修炼\\"
	say = say .. "成为天下第一，从<$TOP_1_0_rankdate>至今还没有人可以超越。\\"
	say = say .. "<$TOP_1_0_NAME>的等级为<$TOP_1_0_level>级。\\"
	say = say .. "今天的天下第一是<$TOP_1_0_NAME>，明天的天下第一会是谁？\\\\"
	say = say .. "申请天下第一名号，请到中州471，229处找史官    <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.wizfemale(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "天下第一女法师：<$TOP_1_1_NAME> \\"
	say = say .. "所属行会：<$top_1_1_guildname>\\\\"
	say = say .. "纷扰乱世群雄逐鹿，<$TOP_1_1_NAME>在烽烟四起的传奇世界中修炼\\"
	say = say .. "成为天下第一，从<$TOP_1_1_rankdate>至今还没有人可以超越。\\"
	say = say .. "<$TOP_1_1_NAME>的等级为<$TOP_1_1_level>级。\\"
	say = say .. "今天的天下第一是<$TOP_1_1_NAME>，明天的天下第一会是谁？\\\\"
	say = say .. "申请天下第一名号，请到中州471，229处找史官    <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
