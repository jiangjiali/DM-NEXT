-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 中州老兵
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "中州老兵",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我是能干的老兵，我是快乐的老兵，哈哈，你找我有事吗？\\\\"
	say = say .. "<想快速到达其他地区/@main1>   <记录回城点/@_LB_homePos>   \\"
	say = say .. "<可接任务/@_RW_entry> <参加骑兵竞技赛/@gotohorse> \\"
	say = say .. "<使用声望令牌/@useshengwang> <$serverdatetime> \\"
	say = say .. "<查看/@_LB_viewinfo> <圣殿浮岛/@gofd01>\\ "
	say = say .. "<没事/@exit> "
	return { say = say, page = goto_page, close = close }
end

function M.gofd01(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 499 and 1 or 0)) ~= 0 then
		player:take_gold(500)
		player:teleport(1030, 65, 94)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_entry(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "武官之心任务", "中州_老兵")
	return { say = say, page = goto_page, close = close }
end

function M.gotohorse(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:hour_between(21, 21) and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "中州老兵", "intorace")
	else
		say = say .. "每天21-22点比赛,现在还没到比赛时间\\"
		say = say .. "<哦!知道了/@exit>\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.intorace(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("骑兵竞技入场牌1") and 1 or 0)) ~= 0 then
		player:take_item("骑兵竞技入场牌", 1)
		player:teleport(258, 133, 128)
	else
		say = say .. "你没有入场牌,我不能放你进去\\"
		say = say .. "到彩票员那买好了,再来吧!\\"
		say = say .. "<哦!知道了/@exit>\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.about(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.send_msg_box(player:get_var_str("username"), "hello")
	return { say = say, page = goto_page, close = close }
end

function M.main1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这是国王为了对抗邪恶力量而特别开辟的骑兵驿道，能够\\"
	say = say .. "以最快的速度帮助你往返于各个地区 。不过为此你必须付\\"
	say = say .. "出一些代价做为使用费用。你确定要使用这条驿道吗？\\"
	say = say .. "<去将军坟附近/@lingmuall>\\"
	say = say .. "<去死水沼泽入口/@deadwater>\\"
	say = say .. "<去西域奇境/@west>\\"
	say = say .. "<去其他地方/@othergo>\\"
	say = say .. "<不去了/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.lingmuall(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这是国王为了对抗邪恶力量而特别开辟的骑兵驿道，能够\\"
	say = say .. "以最快的速度帮助你往返于各个地区 。不过为此你必须付\\"
	say = say .. "出一些代价做为使用费用。你确定要使用这条驿道吗？\\\\"
	say = say .. "<将军坟南入口/@lingmus> \\"
	say = say .. "<将军坟北入口/@lingmun> \\"
	say = say .. "<将军坟东入口/@lingmue> \\\\"
	say = say .. "<不去了/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.lingmus(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去将军坟南入口？\\"
	say = say .. "500金币就可以了，没有的话就自己走着去吧。\\\\"
	say = say .. "<付钱/@lms> \\"
	say = say .. "<没钱/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.lms(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 499 and 1 or 0)) ~= 0 then
		player:take_gold(500)
		player:teleport(16, 32, 353)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.lingmun(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去将军坟北入口？\\"
	say = say .. "500金币就可以了，没有的话就自己走着去吧。\\\\"
	say = say .. "<付钱/@lmn> \\"
	say = say .. "<没钱/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.lmn(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 499 and 1 or 0)) ~= 0 then
		player:take_gold(500)
		player:teleport(16, 51, 182)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.lingmue(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去将军坟东入口？\\"
	say = say .. "500金币就可以了，没有的话就自己走着去吧。\\\\"
	say = say .. "<付钱/@lme> \\"
	say = say .. "<没钱/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.lme(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 499 and 1 or 0)) ~= 0 then
		player:take_gold(500)
		player:teleport(16, 775, 397)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.deadwater(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "去死水沼泽入口要500金币，你去么？\\"
	say = say .. "<去死水沼泽/@godeadwater>\\"
	say = say .. "<返回/@main1>\\"
	return { say = say, page = goto_page, close = close }
end

function M.godeadwater(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 499 and 1 or 0)) ~= 0 then
		player:take_gold(500)
		player:teleport(16, 778, 522)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.west(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这是国王为了对抗邪恶力量而特别开辟的骑兵驿道，能够\\"
	say = say .. "以最快的速度帮助你往返于各个地区 。不过为此你必须付\\"
	say = say .. "出一些代价做为使用费用。你确定要使用这条驿道吗？\\"
	say = say .. "你是要去西域奇境吗？由于路途遥远，它将花费你2000金币\\"
	say = say .. "你确定要快速移动吗？\\\\"
	say = say .. "<确定/@west1>\\"
	say = say .. "<没钱/@west2>\\"
	return { say = say, page = goto_page, close = close }
end

function M.west1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 1999 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:teleport(220, 466, 109)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.west2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "那你自己到西域的515,170附近去找吧。\\\\"
	say = say .. "<返回/@main1>"
	return { say = say, page = goto_page, close = close }
end

function M.othergo(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这是国王为了对抗邪恶力量而特别开辟的骑兵驿道，能够\\"
	say = say .. "以最快的速度帮助你往返于各个地区 。不过为此你必须付\\"
	say = say .. "出一些代价做为使用费用。你确定要使用这条驿道吗？\\"
	say = say .. "<海角村/@new> \\"
	say = say .. "<中州关隘/@ztown>\\"
	say = say .. "<落霞岛/@island>\\\\"
	say = say .. "<不去了/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.new(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去海角村？\\"
	say = say .. "300块就可以了，没有的话就自己走着去吧。\\\\"
	say = say .. "<付钱/@new1> \\"
	say = say .. "<没钱/@new2>"
	return { say = say, page = goto_page, close = close }
end

function M.new1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 299 and 1 or 0)) ~= 0 then
		player:take_gold(300)
		player:teleport(16, 397, 593)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.ztown(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去中州关隘吗？\\"
	say = say .. "500金币就可以了，没有的话就自己走着去吧。\\\\"
	say = say .. "<付钱/@pass1> \\"
	say = say .. "<没钱/@pass2>"
	return { say = say, page = goto_page, close = close }
end

function M.pass1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 499 and 1 or 0)) ~= 0 then
		player:take_gold(500)
		player:teleport(16, 727, 42)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.pass2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "那就自己到730，40附近去找吧。\\\\"
	say = say .. "<返回/@main1>"
	return { say = say, page = goto_page, close = close }
end

function M.island(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去落霞岛？\\"
	say = say .. "1000金币就可以了，没有的话就自己走着去吧。\\\\"
	say = say .. "<付钱/@island1>\\"
	say = say .. "<没钱/@island2>\\"
	return { say = say, page = goto_page, close = close }
end

function M.island1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 999 and 1 or 0)) ~= 0 then
		player:teleport(53, 237, 236)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.island2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "那就自己到200，200附近去找吧。\\\\"
	say = say .. "<返回/@main1>"
	return { say = say, page = goto_page, close = close }
end

function M._LB_homePos(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<我要记录回城点/@_LB_loading>\\"
	say = say .. "<了解回城石的使用方法/@_LB_know>\\"
	say = say .. "<登陆NPC8商城购买回城石/@@urlwww.npc8.com>\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._LB_loading(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请选择要记录回城的城市!\\"
	say = say .. "<中州/@zhongzhou>\\"
	say = say .. "<落霞岛/@luoxiadao>\\"
	say = say .. "<热砂荒漠/@resha>\\"
	say = say .. "<死水沼泽/@shishui>\\"
	say = say .. "<禁地/@jingdi>\\"
	say = say .. "<西域奇境/@xiyu>\\\\"
	return { say = say, page = goto_page, close = close }
end

function M.zhongzhou(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请放上你回城石或回城神石"
	player:put_item("提供回城石或回城神石", "@makeuphomestone")
	return { say = say, page = goto_page, close = close }
end

function M.makeuphomestone(player)
	local say = ""
	local goto_page = nil
	local close = false
	if not (((player:get_var("ui_stdmode") == 3 and 1 or 0)) ~= 0) then
		say = say .. "你提供的不是回城石\\"
		say = say .. "<离开/@exit>"
	elseif not (((player:get_var("ui_shape") == 15 and 1 or 0)) ~= 0) then
		player:make_home_stone("中州")
		say = say .. "你的回城石已记录好了\\"
		say = say .. "<离开/@exit>"
	elseif not (((player:get_var("ui_shape") == 17 and 1 or 0)) ~= 0) then
		player:make_home_stone("中州")
		say = say .. "你的回城石已记录好了\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你提供的不是回城石\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.luoxiadao(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请放上你回城石或回城神石"
	player:put_item("提供回城石或回城神石", "@makeuphomestonelx")
	return { say = say, page = goto_page, close = close }
end

function M.makeuphomestonelx(player)
	local say = ""
	local goto_page = nil
	local close = false
	if not (((player:get_var("ui_stdmode") == 3 and 1 or 0)) ~= 0) then
		say = say .. "你提供的不是回城石\\"
		say = say .. "<离开/@exit>"
	elseif not (((player:get_var("ui_shape") == 15 and 1 or 0)) ~= 0) then
		player:make_home_stone("落霞岛")
		say = say .. "你的回城石已记录好了\\"
		say = say .. "<离开/@exit>"
	elseif not (((player:get_var("ui_shape") == 17 and 1 or 0)) ~= 0) then
		player:make_home_stone("落霞岛")
		say = say .. "你的回城石已记录好了\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你提供的不是回城石\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.resha(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请放上你回城石或回城神石"
	player:put_item("提供回城石或回城神石", "@makeuphomestoners")
	return { say = say, page = goto_page, close = close }
end

function M.makeuphomestoners(player)
	local say = ""
	local goto_page = nil
	local close = false
	if not (((player:get_var("ui_stdmode") == 3 and 1 or 0)) ~= 0) then
		say = say .. "你提供的不是回城石\\"
		say = say .. "<离开/@exit>"
	elseif not (((player:get_var("ui_shape") == 15 and 1 or 0)) ~= 0) then
		player:make_home_stone("热砂荒漠")
		say = say .. "你的回城石已记录好了\\"
		say = say .. "<离开/@exit>"
	elseif not (((player:get_var("ui_shape") == 17 and 1 or 0)) ~= 0) then
		player:make_home_stone("热砂荒漠")
		say = say .. "你的回城石已记录好了\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你提供的不是回城石\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.shishui(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请放上你回城石或回城神石"
	player:put_item("提供回城石或回城神石", "@makeuphomestonesh")
	return { say = say, page = goto_page, close = close }
end

function M.makeuphomestonesh(player)
	local say = ""
	local goto_page = nil
	local close = false
	if not (((player:get_var("ui_stdmode") == 3 and 1 or 0)) ~= 0) then
		say = say .. "你提供的不是回城石\\"
		say = say .. "<离开/@exit>"
	elseif not (((player:get_var("ui_shape") == 15 and 1 or 0)) ~= 0) then
		player:make_home_stone("死水沼泽")
		say = say .. "你的回城石已记录好了\\"
		say = say .. "<离开/@exit>"
	elseif not (((player:get_var("ui_shape") == 17 and 1 or 0)) ~= 0) then
		player:make_home_stone("死水沼泽")
		say = say .. "你的回城石已记录好了\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你提供的不是回城石\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.jingdi(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请放上你回城石或回城神石"
	player:put_item("提供回城石或回城神石", "@makeuphomestonejd")
	return { say = say, page = goto_page, close = close }
end

function M.makeuphomestonejd(player)
	local say = ""
	local goto_page = nil
	local close = false
	if not (((player:get_var("ui_stdmode") == 3 and 1 or 0)) ~= 0) then
		say = say .. "你提供的不是回城石\\"
		say = say .. "<离开/@exit>"
	elseif not (((player:get_var("ui_shape") == 15 and 1 or 0)) ~= 0) then
		player:make_home_stone("禁地")
		say = say .. "你的回城石已记录好了\\"
		say = say .. "<离开/@exit>"
	elseif not (((player:get_var("ui_shape") == 17 and 1 or 0)) ~= 0) then
		player:make_home_stone("禁地")
		say = say .. "你的回城石已记录好了\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你提供的不是回城石\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.xiyu(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请放上你回城石或回城神石"
	player:put_item("提供回城石或回城神石", "@makeuphomestonexy")
	return { say = say, page = goto_page, close = close }
end

function M.makeuphomestonexy(player)
	local say = ""
	local goto_page = nil
	local close = false
	if not (((player:get_var("ui_stdmode") == 3 and 1 or 0)) ~= 0) then
		say = say .. "你提供的不是回城石\\"
		say = say .. "<离开/@exit>"
	elseif not (((player:get_var("ui_shape") == 15 and 1 or 0)) ~= 0) then
		player:make_home_stone("西域奇境")
		say = say .. "你的回城石已记录好了\\"
		say = say .. "<离开/@exit>"
	elseif not (((player:get_var("ui_shape") == 17 and 1 or 0)) ~= 0) then
		player:make_home_stone("西域奇境")
		say = say .. "你的回城石已记录好了\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你提供的不是回城石\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._LB_know(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "首先，携带回城石在各个城市老兵处记录回城的地点\\"
	say = say .. "然后，双击回城石就直接回到您最后一次记录点的城市。\\\\"
	say = say .. "<好的，我明白了！/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._LB_newlianyu(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "炼狱是具有双倍经验附加功能的区域，如果用户选择此场景，\\"
	say = say .. "需要另行支付附加费用\\"
	say = say .. "1、选择按秒计时方式充值的用户在炼狱中游戏一小时另行加收一小时\\"
	say = say .. "的费用（即用户在此场景中游戏一小时将被扣除两小时的游戏时间）。\\"
	say = say .. "2、选择包月包日充值的用户如果需要进入本场景，其已经充值的天数\\"
	say = say .. "将会被作为附加费用支付的单位。用户在进入本场景游戏后，每累计\\"
	say = say .. "游戏五小时系统将会加收一天的游戏时间作为附加费用。（即用户在\\"
	say = say .. "本场景中每累计游戏达五小时，其已经包月或包日的时段中将会被扣\\"
	say = say .. "除一天的游戏时间）------你确定要进入吗？  <进入/@_LB_newenter>   <放弃/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.runhorse(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:hour_between(19, 19) and 1 or 0)) ~= 0 then
		say = say .. "参加骑兵竞技很容易，跑出一等一的好成绩可就不容易了，你\\"
		say = say .. "若是今天跑了第一，除去大有可能入选王国铁骑军团，你也会\\"
		say = say .. "获得丰厚的奖赏。\\"
		player:random_teleport(258)
	else
		say = say .. "还没到比赛时间呢，等到时间再来吧。\\"
		say = say .. "每天10:00-11:00会有骑兵竞技选拔比赛。\\"
		say = say .. "参加骑兵竞技很容易，跑出一等一的好成绩可就不容易了，你\\"
		say = say .. "若是今天跑了第一，除去大有可能入选王国铁骑军团，你也会\\"
		say = say .. "获得丰厚的奖赏。\\"
		say = say .. "要是你对当骑兵不感兴趣，也可以去彩票员那里买些竞技彩票\\"
		say = say .. "试试自己的眼力和运气。他在438，215 附近\\"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._LB_baishou(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "年轻人来“百兽园”逛逛吧。里面有20位“幸运大使”，由\\"
	say = say .. "于前世罪孽深重，作为惩罚，他们身中魔咒，形象丑陋。为\\"
	say = say .. "了洗刷前世的冤孽，恢复本相，他们肩负起了“幸运大使”\\"
	say = say .. "的职责……看你满面红光，一定是福星高照，财神驾到，没\\"
	say = say .. "准儿今天就能发大财。您只要先交10万金币的门票，参与我\\"
	say = say .. "们的活动，就有机会赢得1000万金币的巨奖！\\"
	say = say .. "<太棒了，我要碰碰运气/@_LB_goodluck>\\"
	say = say .. "<查看活动规则/@_LB_knowsome>\\"
	say = say .. "<没兴趣/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._LB_goodluck(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 99999 and 1 or 0)) ~= 0 then
		player:take_gold(100000)
		player:random_teleport(16)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._LB_knowsome(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "规则其实很简单，“百兽园”里有20位能带给你好运的“幸\\"
	say = say .. "运大使”。别看他们外表丑陋，他们最多能给你带来1000万\\"
	say = say .. "金币的巨奖哦。不过我要事先提醒一下，前世罪孽深重的“\\"
	say = say .. "幸运大使”本身就是两面人……如果你在不恰当的时候去找\\"
	say = say .. "他说话，那可能就会一无所获甚至被赶出“百兽园”。总之\\"
	say = say .. "先祝你好运吧！\\"
	say = say .. "<知道了/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._LB_throwmoney(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "您可以选择：\\\\"
	say = say .. "<进入网站充值/@@urlwww.npc8.com>\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.get(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<领取名人堂奖品/@mingrentang>\\"
	say = say .. "<领取金牌帐号奖品/@goldenprize>\\"
	say = say .. "<使用声望令牌/@useshengwang>\\"
	say = say .. "<领取奖品/@get01>\\"
	return { say = say, page = goto_page, close = close }
end

function M.mingrentang(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "现在，如果能将自己的等级提升到46级，将获得相应职业的顶\\"
	say = say .. "级技能书，多加努力把。\\\\"
	say = say .. "<返回/@get>"
	return { say = say, page = goto_page, close = close }
end

function M.goldenprize(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "您不是金牌会员，不能领取奖品。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.useshengwang(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你确认要使用声望令牌么？使用声望令牌(四十)将使你获得\\"
	say = say .. "40点声望，声望令牌(十)将使你获得10点声望，声望令牌(五)\\"
	say = say .. "使你获得5点声望，声望令牌(三)将使你获得3点声望，声望令\\"
	say = say .. "牌(一)将使你获得1点声望。\\"
	say = say .. "<使用声望令牌/@shengwang>\\"
	say = say .. "<返回/@get>"
	return { say = say, page = goto_page, close = close }
end

function M.shengwang(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "使用<声望令牌(四十)/@shengwang40>\\"
	say = say .. "使用<声望令牌(十)/@shengwang10>\\"
	say = say .. "使用<声望令牌(五)/@shengwang5>\\"
	say = say .. "使用<声望令牌(三)/@shengwang3>\\"
	say = say .. "使用<声望令牌(一)/@shengwang1>\\\\"
	say = say .. "<返回/@useshengwang>"
	return { say = say, page = goto_page, close = close }
end

function M.shengwang40(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("声望令牌(四十)", 1) and 1 or 0)) ~= 0 then
		if (player:get_var("credit") + 40) > 255 then
			say = say .. "你的声望已达上限255点，无法再使用声望令牌。\\"
			say = say .. "<离开/@exit>"
			return { say = say, page = goto_page, close = close }
		end
		player:take_item("声望令牌(四十)", 1)
		player:give_credit(40)
		say = say .. "您获得了40点声望!\\"
		say = say .. "<返回/@get>"
	else
		say = say .. "你没有声望令牌(四十)。\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.shengwang10(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("声望令牌(十)", 1) and 1 or 0)) ~= 0 then
		if (player:get_var("credit") + 10) > 255 then
			say = say .. "你的声望已达上限255点，无法再使用声望令牌。\\"
			say = say .. "<离开/@exit>"
			return { say = say, page = goto_page, close = close }
		end
		player:take_item("声望令牌(十)", 1)
		player:give_credit(10)
		say = say .. "您获得了10点声望!\\"
		say = say .. "<返回/@get>"
	else
		say = say .. "你没有声望令牌(十)。\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.shengwang5(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("声望令牌(五)", 1) and 1 or 0)) ~= 0 then
		if (player:get_var("credit") + 5) > 255 then
			say = say .. "你的声望已达上限255点，无法再使用声望令牌。\\"
			say = say .. "<离开/@exit>"
			return { say = say, page = goto_page, close = close }
		end
		player:take_item("声望令牌(五)", 1)
		player:give_credit(5)
		say = say .. "您获得了5点声望!\\"
		say = say .. "<返回/@get>"
	else
		say = say .. "你没有声望令牌(五)。\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.shengwang3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("声望令牌(三)", 1) and 1 or 0)) ~= 0 then
		if (player:get_var("credit") + 3) > 255 then
			say = say .. "你的声望已达上限255点，无法再使用声望令牌。\\"
			say = say .. "<离开/@exit>"
			return { say = say, page = goto_page, close = close }
		end
		player:take_item("声望令牌(三)", 1)
		player:give_credit(3)
		say = say .. "您获得了3点声望!\\"
		say = say .. "<返回/@get>"
	else
		say = say .. "你没有声望令牌(三)。\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.shengwang1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("声望令牌(一)", 1) and 1 or 0)) ~= 0 then
		if (player:get_var("credit") + 1) > 255 then
			say = say .. "你的声望已达上限255点，无法再使用声望令牌。\\"
			say = say .. "<离开/@exit>"
			return { say = say, page = goto_page, close = close }
		end
		player:take_item("声望令牌(一)", 1)
		player:give_credit(1)
		say = say .. "您获得了1点声望!\\"
		say = say .. "<返回/@get>"
	else
		say = say .. "你没有声望令牌(一)。\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.get01(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "对不起，你无法领取奖品。确认一下下列可能吧。\\"
	say = say .. "1、你领取奖品的时间不对。\\"
	say = say .. "2、你已经领取过奖品了\\"
	say = say .. "<确认/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._LB_viewinfo(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<查看/@_LB_viewgoods>POPTANG龙凤婚嫁饰品介绍\\"
	say = say .. "<赠送/@_LB_gifts>龙凤婚嫁饰品给我的朋友\\"
	say = say .. "<如何/@_LB_howabout>购买POPTANG龙凤婚嫁饰品\\"
	say = say .. "<关闭/@exit>选单\\"
	say = say .. "<返回/@main>\\"
	say = say .. "特别提醒：商城地址为 WWW.NPC8.COM"
	return { say = say, page = goto_page, close = close }
end

function M._LB_viewgoods(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "婚姻可是人生大事，婚礼当然更是马虎不得，想要举\\"
	say = say .. "办全中州最体面的婚礼，怎么能少得了本店的龙凤婚\\"
	say = say .. "嫁饰品？\\"
	say = say .. "目前NPC8商城婚所推出的商品主要有“个性天气卷\\"
	say = say .. "轴系列”、“龙凤婚嫁系列”、“七彩焰火系列”三大系列\\"
	say = say .. "商品。\\"
	say = say .. "<下一页/@_LB_page02>         <返回/@_LB_viewinfo>"
	return { say = say, page = goto_page, close = close }
end

function M._LB_page02(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "“个性天气卷轴系列”包括 福满天下、细雨缠绵、流星\\"
	say = say .. "幻雨 等11种自然、人工天气效果，全中州都看得见，\\"
	say = say .. "浪漫天气由你掌握！\\"
	say = say .. "“龙凤婚庆系列”包括龙凤花烛、心花怒放、迎亲宝马等\\"
	say = say .. "10余种婚庆饰品，绝对让你的婚礼风风光光、体面过人！\\"
	say = say .. "“七彩焰火系列”包括 姹紫嫣红、红色恋人、心心相映等\\"
	say = say .. "10种西域焰火，七色烟花，让你们的爱情灿烂无比！\\"
	say = say .. "<下一页/@_LB_page03>          <上一页/@_LB_viewgoods>"
	return { say = say, page = goto_page, close = close }
end

function M._LB_page03(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "特别推荐：龙凤阁宝玉！只要购买了它，您就可以包下\\"
	say = say .. "“中州第一楼”--龙凤阁，可供亲朋好友百人共庆，是显\\"
	say = say .. "示您尊贵身份的绝对象征！\\"
	say = say .. "本商城实行会员制度。如果您想购买本商城的各项饰品，\\"
	say = say .. "欢迎您登陆WWW.NPC8.COM注册购买！一分钟送货，可\\"
	say = say .. "以免费为您送货到包裹中哦。\\"
	say = say .. "<察看/@_LB_howabout>如何购买NPC8龙凤婚嫁饰品\\"
	say = say .. "<下一页/@_LB_page04>          <上一页/@_LB_page02> \\"
	return { say = say, page = goto_page, close = close }
end

function M._LB_page04(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "今后本店还将陆续推出“变身系列饰品”等多样化商品。\\"
	say = say .. "请客官经常到我这儿逛逛，一定不要错过特卖的好机会。\\"
	say = say .. "<返回/@main>              <上一页/@_LB_page03>"
	return { say = say, page = goto_page, close = close }
end

function M._LB_gifts(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我可以免费帮您把任何一款NPC8商品转送给您的亲朋\\"
	say = say .. "好友。不过目前张罗着着开分店，实在分身乏术。请您\\"
	say = say .. "稍后再来办理委托手续吧。\\"
	say = say .. "<返回/@_LB_viewinfo>"
	return { say = say, page = goto_page, close = close }
end

function M._LB_howabout(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "本商城实行会员制度。如果您想购买本商城的各项饰品，欢迎\\"
	say = say .. "您登陆WWW.NPC8.COM注册购买！一分钟送货，可以免费为您\\"
	say = say .. "送货到包裹中哦。\\"
	say = say .. "购买时，只需按照以下流程进行即可：\\"
	say = say .. "1、免费申请您的NPC8帐号。帐号申请可通过以下下三种非常\\"
	say = say .. "便捷的方式：\\"
	say = say .. "A:在您的游戏中进行帐号升级，申请到您的NPC8帐号(目前只\\"
	say = say .. "开通《传奇世界》)。\\"
	say = say .. "<下一页/@_LB_how02>\\"
	return { say = say, page = goto_page, close = close }
end

function M._LB_how02(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "B:在您的游戏\"用户登录\"界面中选择\"POPTANG帐号\"页签，注册新\\"
	say = say .. "的NPC8.COM帐号(目前只开通《传奇世界》)。\\"
	say = say .. "C:访问WWW.NPC8.COM，通过Web页面注册您的POPTANG帐号。\\"
	say = say .. "2、登陆WWW.NPC8.COM，进入NPC8个性商品商城，选择您\\"
	say = say .. "喜爱的商品点击购买。\\"
	say = say .. "3、选购完毕所有您需要的商品，检查商品清单，进行价格结算。\\"
	say = say .. "4、选择您的付费方式和收货人信息。并确认购买成功。\\"
	say = say .. "5、登陆游戏，所有商品将在1分钟内传送到您的包裹当中。如果\\"
	say = say .. "包裹格数不足，小退登陆即可分批领取剩余商品。<返回/@_LB_viewinfo>"
	return { say = say, page = goto_page, close = close }
end

function M.exchangefushen(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "用一个元宝可以换一个超级附身!\\"
	say = say .. "我要用元宝换:\\"
	say = say .. "<超级秒杀/@MSfushen>:成功率50%,持续时间为30分钟!\\"
	say = say .. "<超级重击/@ZJfushen>:成功率60%,持续时间为40分钟!\\"
	say = say .. "<超级神佑/@SUfushen>:成功率90%,持续时间为60分钟!\\"
	say = say .. "<超级神御/@SYfushen>:成功率90%,持续时间为60分钟!\\\\"
	return { say = say, page = goto_page, close = close }
end

function M.MSfushen(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("yuanbao") > 0 and 1 or 0)) ~= 0 then
		player:take_yuanbao(1)
		player:set_god_bless(1, 50, 1800)
		say = say .. "你得到了一个超级秒杀!\\"
		say = say .. "持续时间为30分钟\\"
		say = say .. "下线自动消失!\\\\"
	else
		say = say .. "对不起，您身上没有元宝，请登陆NPC8\\"
		say = say .. "商城购买。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.ZJfushen(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("yuanbao") > 0 and 1 or 0)) ~= 0 then
		player:take_yuanbao(1)
		player:set_god_bless(2, 60, 2400)
		say = say .. "你得到了一个超级重击!\\"
		say = say .. "持续时间为40分钟\\"
		say = say .. "下线自动消失!\\\\"
	else
		say = say .. "对不起，您身上没有元宝，请登陆NPC8\\"
		say = say .. "商城购买。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.SUfushen(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("yuanbao") > 0 and 1 or 0)) ~= 0 then
		player:take_yuanbao(1)
		player:set_god_bless(4, 90, 3600)
		say = say .. "你得到了一个超级神佑!\\"
		say = say .. "持续时间为60分钟\\"
		say = say .. "下线自动消失!\\\\"
	else
		say = say .. "对不起，您身上没有元宝，请登陆NPC8\\"
		say = say .. "商城购买。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.SYfushen(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("yuanbao") > 0 and 1 or 0)) ~= 0 then
		player:take_yuanbao(1)
		player:set_god_bless(3, 90, 3600)
		say = say .. "你得到了一个超级神御!\\"
		say = say .. "持续时间为60分钟\\"
		say = say .. "下线自动消失!\\\\"
	else
		say = say .. "对不起，您身上没有元宝，请登陆NPC8\\"
		say = say .. "商城购买。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

return M
