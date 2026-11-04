-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 国王
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "国王",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:is_guild_master() and 1 or 0)) ~= 0 then
		say = say .. "作为国王，我掌管这里的一切。\\"
		say = say .. "如果是为了行会的事情，那么这个世界只有我可以帮你！\\"
		say = say .. "有什么要求，你先提出来吧！\\"
		say = say .. "<创建行会/@buildguild>\\"
		say = say .. "<上传行会旗帜/@guildlogo>\\"
		say = say .. "<申请行会战争/@guildwar>\\"
		say = say .. "<增加行会人数上限/@updateguild>\\"
		say = say .. "<询问行会战争的条件/@guildwarexp>\\"
		say = say .. "<申请攻城战/@requestcastlewar>"
	else
		say = say .. "作为国王，我掌管这里的一切。\\"
		say = say .. "如果是为了行会的事情，那么这个世界只有我可以帮你！\\"
		say = say .. "有什么要求，你先提出来吧！\\"
		say = say .. "<创建行会/@buildguild>\\"
		say = say .. "<申请行会战争/@guildwar>\\"
		say = say .. "<询问如何建立行会/@buildguildexp>\\"
		say = say .. "<增加行会人数上限/@updateguild>\\"
		say = say .. "<询问行会战争的条件/@guildwarexp>\\"
		say = say .. "<申请攻城战/@requestcastlewar>\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.buildguild(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player.has_guild and 1 or 0)) ~= 0 then
		say = say .. "对不起,你已经加入行会了,不能创建行会\\\\"
		say = say .. "<关闭/@exit>"
	else
		goto_page = "buildguild1"
	end
	return { say = say, page = goto_page, close = close }
end

function M.buildguild1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("战斗号角", 1) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 1000000 and 1 or 0)) ~= 0 then
		player:input_text("请输入要创建行会的名字:", 16, "@postrequest")
		close = true
	else
		say = say .. "没有必要的物品\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.postrequest(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:create_guild(player:get_var_str("inputtext"))
	player:take_item("战斗号角", 1)
	player:take_gold(1000000)
	say = say .. "创建行会成功!\\"
	say = say .. "<关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.guildwar(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:is_guild_master() and 1 or 0)) ~= 0 then
		say = say .. "你要先让我知道你要和哪个行会打仗。\\"
		say = say .. "要申请合法的行会战争, 你必须给我足够\\"
		say = say .. "的金币，这样才会有合法战争的权利！\\\\"
		say = say .. "<输入你想要挑战的行会名称/@guildwar_d>\\"
		say = say .. "<返回/@main>\\"
	else
		say = say .. "你不是行会掌门人!\\"
		say = say .. "<返回/@main>\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.buildguildexp(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "想要成立行会，你得首先证明你有这个资格。\\"
	say = say .. "你准备好100万金币和一个战斗号角了吗？\\"
	say = say .. "新成立的行会最多有100位成员的名额。\\"
	say = say .. "行会成员每提供1点声望值可以为所在行会\\"
	say = say .. "增加20个行会成员的名额上限。\\\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.updateguild(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "行会大了不容易管理，所以现在建立的行会人数超过100　\\"
	say = say .. "就需要用声望才能增加行会人数上限，每一点声望可增加　\\"
	say = say .. "20个成员名额上限，行会成员的最终上限是500，到了500　\\"
	say = say .. "就不能增加了，目前成员超过500的行会将不能再增加成员。\\"
	say = say .. "你愿意用1点声望值为所在行会换取20个成员名额上限吗？\\"
	say = say .. "<愿意/@change>\\"
	say = say .. "<再考虑考虑/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.guildwarexp(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<行会战争/@guildwar2> 是合法的战争。\\"
	say = say .. "经过批准的战争双方可以在法律允许下大开杀戒！ \\"
	say = say .. "要有足够的行会，行会里有足够的勇士才可以申请。\\"
	say = say .. "政府也才会批准这次<合法/@warrule>战争 。\\"
	say = say .. "一次战争 <要求/@propose> 被批准，战争将持续三个小时。\\"
	say = say .. "当然，你必须支付 金币来让政府维持秩序 。\\\\"
	say = say .. "<继续/@guildwar2>"
	return { say = say, page = goto_page, close = close }
end

function M.guildwar2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你成功申请行会战争后，你们行会的所有参战人员\\的名字将变成蓝色；\\"
	say = say .. "而你的敌对行会成员的名字就会变成橘黄色的。\\"
	say = say .. "一旦进入行会战争状态,你会看到这样的信息\\"
	say = say .. "——“行会战争正在进行” \\"
	say = say .. "在这种模式下，不管你杀死对方多少人，\\"
	say = say .. "都不会被看作PK.\\\\"
	say = say .. "<继续/@warrule>"
	return { say = say, page = goto_page, close = close }
end

function M.warrule(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "行会战争不允许在城市、乡村里进行。\\"
	say = say .. "战场必须离开城堡，乡村一定距离，\\"
	say = say .. "当然，商店里更是不可以的了。\\"
	say = say .. "行会战争结束后，一切将恢复到正常状态。\\"
	say = say .. "这个时候你还继续PK的话，你的名字可就真\\"
	say = say .. "的变成红的了！\\"
	say = say .. "<继续/@propose>"
	return { say = say, page = goto_page, close = close }
end

function M.propose(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "行会战争的申请只能由行会掌门人提出。\\\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.requestcastlewar(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你来申请攻占沙城？你带魔神雕像来了吗？\\"
	say = say .. "除了神魔雕像我还需要二百万金币和一千万行会经验。\\"
	say = say .. "以上几样你都准备好了吗？\\"
	say = say .. "如果待会你的攻城申请被允许的话，\\"
	say = say .. "两天后就可以攻城！\\\\"
	say = say .. "<提供魔神雕像,二百万金币和一千万行会经验。/@requestcastlewarnow>\\"
	say = say .. "<取消/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.requestcastlewarnow(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player.has_guild and 1 or 0)) ~= 0 and ((player:is_guild_master() and 1 or 0)) ~= 0 and ((player:has_item("魔神雕像", 1) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 1999999 and 1 or 0)) ~= 0 then
		player:take_gold(2000000)
		player:take_item("魔神雕像", 1)
		player:request_attack_sabuk()
		say = say .. "申请成功,两天后就可以攻城 \\\\"
		say = say .. "<关闭/@exit>"
	else
		say = say .. "不满足申请条件\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.updateguild(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "行会大了不容易管理，所以现在建立的行会人数超过100　\\"
	say = say .. "就需要用声望才能增加行会人数上限，每一点声望可增加　\\"
	say = say .. "20个成员名额上限，行会成员的最终上限是1000，到了1000　\\"
	say = say .. "就不能增加了，目前成员超过1000的行会将不能再增加成员。　\\"
	say = say .. "你愿意用1点声望值为所在行会换取20个成员名额上限吗？\\"
	say = say .. "<愿意/@change>\\"
	say = say .. "<再考虑考虑/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.change(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("credit") > 0 and 1 or 0)) ~= 0 and ((player.has_guild and 1 or 0)) ~= 0 and ((player:get_var("maxguildmembercount") < 1000 and 1 or 0)) ~= 0 then
		player:take_credit(1)
		player:add_guild_max_member(20)
		say = say .. "好了，你所在的行会最大成员名额已经多了20个。\\"
		say = say .. "你所在的行会人数最大名额为<$GUILDMAXMEMBERCOUNT>.\\"
		say = say .. "<关闭/@exit>"
	else
		say = say .. "不能增加你所在的行会最大成员名额.\\"
		say = say .. "可能是以下原因 .\\"
		say = say .. "1:你的声望值不够.\\"
		say = say .. "2:你所在的行会人数已经超过999人了\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.guildwar_d(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 99999 and 1 or 0)) ~= 0 then
		player:input_text("输入你想要挑战的行会名称", 30, "@guildwar_f")
	else
		say = say .. "你的金币不够10万!\\"
		say = say .. "<关闭/@exit>\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.guildwar_f(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:is_guild_exist(player:get_var_str("inputtext")) and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "国王", "guildwar_ok")
	else
		say = say .. "你输入的行会名不存在\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.guildwar_ok(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:request_guild_war(player:get_var_str("inputtext"))) and 1 or 0)) ~= 0 then
		player:take_gold(100000)
		say = say .. "行会战是申请成功!\\"
		say = say .. "<关闭/@exit>\\\\"
	else
		say = say .. "你和对方行会是联盟行会,请先取消联盟\\"
		say = say .. "<关闭/@exit>\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

return M
