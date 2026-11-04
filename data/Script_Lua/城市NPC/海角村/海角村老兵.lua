-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 海角村老兵
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "海角村老兵",
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
	say = say .. "<想快速到达其他地区/@main1>   <挑战百兽园/@_LB_baishou>\\"
	say = say .. "<充值元宝/@_LB_throwmoney>\\"
	say = say .. "<可接任务/@_RW_entry>\\"
	say = say .. "<没事/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M._RW_entry(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "打听声望任务", "海角_老兵")
	return { say = say, page = goto_page, close = close }
end

function M.main1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这是国王为了对抗邪恶力量而特别开辟的骑兵驿道，能够\\"
	say = say .. "以最快的速度帮助你往返于各个地区 。不过为此你必须付\\"
	say = say .. "出一些代价做为使用费用。你确定要使用这条驿道吗？\\"
	say = say .. "<去将军坟/@h071>\\"
	say = say .. "<关闭/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.h071(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去将军坟吗？\\"
	say = say .. "800金币就可以了，没有的话就自己走着去吧。\\\\"
	say = say .. "<付钱/@h071a>\\"
	say = say .. "<没钱/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.h071a(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 799 and 1 or 0)) ~= 0 then
		player:take_gold(800)
		player:teleport(16, 33, 353)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
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
	say = say .. "close"
	return { say = say, page = goto_page, close = close }
end

function M._LB_throwmoney(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "您可以选择：\\\\"
	say = say .. "<进入网站充值/@@urlpay.npc8.com>\\<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

return M
