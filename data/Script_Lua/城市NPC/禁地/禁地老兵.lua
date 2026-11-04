-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 禁地老兵
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "禁地老兵",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这差事真无聊，天天站在这里风吹雨淋，你找我有什么事？\\\\"
	say = say .. "<想快速到达其他地区/@main1>   <记录回城点/@_LB_homePos>\\"
	say = say .. "<报名参加骑兵竞技/@runhorse>     <挑战百兽园/@_LB_baishou>\\"
	say = say .. "<充值元宝/@_LB_throwmoney>     <领取奖品/@get>\\"
	say = say .. "<没事/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.main1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这是国王为了对抗邪恶力量而特别开辟的骑兵驿道，能够\\"
	say = say .. "以最快的速度帮助你往返于各个地区 。不过为此你必须付\\"
	say = say .. "出一些代价做为使用费用。你确定要使用这条驿道吗？\\"
	say = say .. "<禁地练功区/@prac>\\"
	say = say .. "<蛇谷/@jsnake>\\"
	say = say .. "<西域关隘/@epass>\\"
	say = say .. "<跃马平原/@yuema>\\"
	say = say .. "<中州关隘附近/@gogo0>\\"
	say = say .. "<关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.prac(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去练功区吗？\\"
	say = say .. "800金币就可以了，没有的话就自己走着去吧。\\\\"
	say = say .. "<付钱/@prac1> \\"
	say = say .. "<没钱/@prac2>"
	return { say = say, page = goto_page, close = close }
end

function M.prac1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 799 and 1 or 0)) ~= 0 then
		player:take_gold(800)
		player:teleport(144, 52, 184)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.prac2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "那就自己到50，180附近去找吧。\\\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.jsnake(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去蛇谷吗？\\"
	say = say .. "500金币就可以了，没有的话就自己走着去吧。\\\\"
	say = say .. "<付钱/@jsnake1> \\"
	say = say .. "<没钱/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.jsnake1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 499 and 1 or 0)) ~= 0 then
		player:take_gold(500)
		player:teleport(106, 84, 60)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.epass(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去关隘吗？\\"
	say = say .. "800金币就可以了，没有的话就自己走着去吧。\\\\"
	say = say .. "<付钱/@epass1> \\"
	say = say .. "<没钱/@epass2>"
	return { say = say, page = goto_page, close = close }
end

function M.epass1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 799 and 1 or 0)) ~= 0 then
		player:take_gold(800)
		player:teleport(144, 19, 67)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.epass2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "那就自己到15，60附近去找吧。\\\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.yuema(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你想到跃马平原去逛逛吗？\\"
	say = say .. "付1500金币，我可以带你过去，你准备好了吗？\\\\"
	say = say .. "<准备好了，带我过去/@go>\\"
	say = say .. "<我不想去/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.go(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 1499 and 1 or 0)) ~= 0 then
		player:take_gold(1500)
		player:teleport(116, 395, 706)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.gogo0(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去中州关隘附近吗？这路可不太好走。\\"
	say = say .. "付2500金币我带你去，没有的话就自己走着去吧。\\\\"
	say = say .. "<带我过去/@gogo0a>\\"
	say = say .. "<我不想去/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.gogo0a(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2499 and 1 or 0)) ~= 0 then
		player:take_gold(2500)
		player:teleport(16, 727, 47)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._LB_homePos(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<我要记录回城点/@_LB_loading>\\"
	say = say .. "<了解回城石的使用方法/@_LB_know>\\"
	say = say .. "<登陆NPC8商城购买回城石/@@urlstore.npc8.com>\\"
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
	if ((player:get_var("ui_stdmode") == 3 and 1 or 0)) ~= 0 and ((player:get_var("ui_shape") == 15 and 1 or 0)) ~= 0 then
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
	if ((player:get_var("ui_stdmode") == 3 and 1 or 0)) ~= 0 and ((player:get_var("ui_shape") == 15 and 1 or 0)) ~= 0 then
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
	if ((player:get_var("ui_stdmode") == 3 and 1 or 0)) ~= 0 and ((player:get_var("ui_shape") == 15 and 1 or 0)) ~= 0 then
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
	if ((player:get_var("ui_stdmode") == 3 and 1 or 0)) ~= 0 and ((player:get_var("ui_shape") == 15 and 1 or 0)) ~= 0 then
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
	if ((player:get_var("ui_stdmode") == 3 and 1 or 0)) ~= 0 and ((player:get_var("ui_shape") == 15 and 1 or 0)) ~= 0 then
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
	say = say .. "回城石"
	player:put_item("提供回城石或回城神石", "@makeuphomestonexy")
	return { say = say, page = goto_page, close = close }
end

function M.makeuphomestonexy(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("ui_stdmode") == 3 and 1 or 0)) ~= 0 and ((player:get_var("ui_shape") == 15 and 1 or 0)) ~= 0 then
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
	say = say .. "还没到比赛时间呢，等到时间再来吧。\\"
	say = say .. "每天10:00-11:00会有骑兵竞技选拔比赛。\\"
	say = say .. "参加骑兵竞技很容易，跑出一等一的好成绩可就不容易了，你\\"
	say = say .. "若是今天跑了第一，除去大有可能入选王国铁骑军团，你也会\\"
	say = say .. "获得丰厚的奖赏。\\"
	say = say .. "要是你对当骑兵不感兴趣，也可以去彩票员那里买些竞技彩票\\"
	say = say .. "试试自己的眼力和运气。他在438，215 附近\\"
	say = say .. "<返回/@main>"
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
	say = say .. "<进入网站充值/@@urlpay.npc8.com>\\"
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

return M
