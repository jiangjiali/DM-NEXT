-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 英雄擂台使者
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "英雄擂台使者",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "天下英雄出我辈，一入江湖岁月催。你想要成为叱咤江\\"
	say = say .. "湖的英雄吗？那就摆个擂台和各路英雄切磋一番吧。\\\\"
	say = say .. "<进去瞧瞧/@enter>    <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.enter(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请选择比赛模式：\\\\"
	say = say .. "<单人擂台/@contest&0>      <团体擂台/@contest&1>      <混乱对抗赛/@contest&2>      <生存挑战赛/@contest&3>      \\"
	say = say .. "<领取奖金/@bonus>\\"
	say = say .. "<取消摆擂/@cancelarena>\\"
	say = say .. "<离开场地/@leave>      <积分规则/@rules2>      <英雄榜/@top20>\\\\ "
	say = say .. "                                                 <关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["contest&0"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "欢迎各位英雄前来摆擂攻擂、观摩比赛，比赛选手进入场地\\"
	say = say .. "的准备时间为2分钟。每场比赛将会收取5万金币作为场地\\"
	say = say .. "使用费。比赛之前，请认真阅读本擂台相关比赛规则。\\\\"
	say = say .. "<我要摆擂/@request>        <我要攻擂/@challenge>        <我要加入/@jointeam>        <我要观看/@audience>\\"
	say = say .. "<打擂规则/@rules>        <返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.request(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

function M.challenge(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

function M.jointeam(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

function M.audience(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请选择擂台：\\"
	say = say .. "（黄色擂台为可使用擂台，白色为不可使用擂台）\\\\"
	say = say .. "擂台1 擂台2 擂台3\\"
	say = say .. "擂台4 擂台5 擂台6\\"
	say = say .. "擂台7 擂台8 擂台9\\\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

M["contest&1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

M["contest&3"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "在打擂比赛之前，请先仔细阅读比赛规则：\\"
	say = say .. "一、进入比赛地图需要比赛金20万，比赛时间为3分钟，比赛场地\\"
	say = say .. "    累积满6人，最先申请“生存挑战赛”的房主就可以选择比赛\\"
	say = say .. "    开始。当比赛场地累积满10人，比赛将自动开始。(房主名字\\"
	say = say .. "    显示为橙色)。\\"
	say = say .. "二、比赛开始后，地面出现亮点的区域内都会降落雷电，有一定概\\"
	say = say .. "    率击中选手，选手必须躲避闪电方可生存，离开比赛场地、被\\"
	say = say .. " 　　<下一页/@nextpage>\t\t<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.nextpage(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "   击倒都将输掉此场比赛。\\"
	say = say .. "   比赛期间场地内会随机出现大量“幸运魔盒”，可能随机产生\\"
	say = say .. "   如下功能：冰冻他人角色、冰冻本人角色、伤害他人角色、伤\\"
	say = say .. "   害本人角色、治愈本人角色等\\"
	say = say .. "三、比赛时间结束，场地内人数大于1，则比赛为平局；比赛结束\\"
	say = say .. "   之前，场地内最后一名幸存者将获得奖金100万。\\"
	say = say .. "　　　<上一页/@rules>　　　　<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

M["contest&2"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "在打擂比赛之前，请先仔细阅读比赛规则：\\"
	say = say .. "一、进入比赛地图需要比赛金10万，当比赛地图进入人数达到8人\\"
	say = say .. "    时，比赛自动开始，比赛时间为20分钟。\\"
	say = say .. "二、比赛未开始，杀死其他对手无效。被杀死玩家在比赛未开始期\\"
	say = say .. "    间可以再次进入，不再收取比赛金。\\"
	say = say .. "三、比赛结束时间内，顺利将其他所有玩家清出场地的选手获得此\\"
	say = say .. "    场比赛的胜利，获得此场比赛的所有奖金。\\"
	say = say .. "　　　　<下一页/@nextpage>"
	return { say = say, page = goto_page, close = close }
end

function M.nextpage(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "四、比赛正式开始后，被杀死玩家与其他玩家将无法再进入比赛\\"
	say = say .. "    场地。\\"
	say = say .. "五、比赛时间结束，场地内人数大于1，则比赛为平局。\\\\"
	say = say .. "　　　　<上一页/@rules>　　　　<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.bonus(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

function M.cancelarena(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

function M.leave(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

function M.rules2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "一、参加单人比赛获胜一场积1分；参加团体比赛获胜一场积3\\"
	say = say .. "    分；参加群体对抗赛获胜一场积5分。\\"
	say = say .. "二、比赛平局以及取消比赛均不计分。比赛取消不计入比赛场\\"
	say = say .. "    次，比赛平局计入比赛场次。\\"
	say = say .. "三、积分相同的情况下，比赛场次少者排名位置靠前，比赛场\\"
	say = say .. "　　次相同情况下，比赛奖金多者排名位置靠前。\\"
	say = say .. "四、参加团队比赛奖金累积额度只针对队长。比赛奖金的计算\\\t"
	say = say .. "    不包括自己的比赛金在内。\\"
	say = say .. "　　　　　　　　　　　　　　　　　　<下一页/@next>　　　　<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.next(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "五、  参加生存挑战赛不计入英雄榜成绩。\\\\"
	say = say .. "　　　　　　　　　　　　　　　　　　<上一页/@rules2>　　　　<关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.top20(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

return M
