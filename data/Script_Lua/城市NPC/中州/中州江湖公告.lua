-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 中州江湖公告
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "中州江湖公告",
	version = "",
	trade_types = {},
	big_box = true,
	left_page = "中州江湖公告2",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "元神分身\\\\"
	say = say .. "　　“敢犯我中州黎庶者，虽远必诛”，千\\"
	say = say .. "年之前，修罗魔族侵犯中州，人类将其击退\\"
	say = say .. "，靠的是传说中的元神分身神技；而今魔族\\"
	say = say .. "卷土重来，须有更多的英雄投身修炼方可取\\"
	say = say .. "胜。国王特在江湖公告招幕英雄修炼分身之\\"
	say = say .. "术。不论何时，只要完成修行之路任务，或\\"
	say = say .. "找到聚集天罡之气的星辰精华，就可到玄玄\\"
	say = say .. "老人处释放元神，进行第二阶段的修行。\\"
	say = say .. "　　修行分为“化形”和“炼体”，化形决\\"
	say = say .. "定元神性别，炼体决定元神职业。完成修行\\"
	say = say .. "后再进行魂魄合一，元神分身就会真正出现\\"
	say = say .. "在你的身边，成为你战斗的强力帮手。\\"
	say = say .. "<了解化形/@huaxing>  <了解炼体/@lianti>　<了解魂魄合一/@heti>\\\\\\\\"
	say = say .. "           极品修炼值系统\\\\"
	say = say .. "一、首饰、战甲可以升级了！\\"
	say = say .. "想要魔法1-9的幻魔项链吗？ 想要防御6-15\\"
	say = say .. "的神武战甲吗？全新极品修炼值系统现已推\\"
	say = say .. "出，只要拥有足够的极品修炼值，即可将多\\"
	say = say .. "种装备升级为极品。\\\\"
	say = say .. "二、如何获得极品修炼值\\"
	say = say .. "只有获得足够的极品修炼值才能在中州“铸\\"
	say = say .. "造师”那里修炼极品，每天，你可以在“铸\\"
	say = say .. "造师”那里领取灭魔任务，完成任务即可获\\"
	say = say .. "得一定极品修炼值做为奖励。累积到一定的\\"
	say = say .. "修炼值之后，就可以升级你的首饰、武器或\\"
	say = say .. "者战甲了。\\\\"
	say = say .. "三、如何升级极品装备\\"
	say = say .. "当你获得了足够多的极品修炼值后，就可以\\"
	say = say .. "找中州“铸造师”请求修炼，你可以升级物\\"
	say = say .. "品的某一种属性。\\\\"
	say = say .. "<了解更多极品升级介绍/@@urlwww.npc8.com>\\"
	say = say .. "<关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.huaxing(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "　　元神最开始就像元婴，没有三魂七魄，\\"
	say = say .. "所以没有精神，也没四肢五官。须经过修行\\"
	say = say .. "才能成为真正的分身。\\"
	say = say .. "　　化形是元神修行的第一步，将决定元神\\"
	say = say .. "的性别。你需要去寻找天魂灵石、地魂灵石\\"
	say = say .. "和命魂灵石，为元神的这三魂提升灵力。\\"
	say = say .. "　　天魂为阳，地魂为阴，而命魂则亦阴亦\\"
	say = say .. "阳。若元神的天魂灵力大大超过地魂灵力，\\"
	say = say .. "那么修炼出来的越可能是男性分身；如果地\\"
	say = say .. "魂的灵力大大超过天魂的灵力，那么修炼出\\"
	say = say .. "来的越可能是女性分身。\\"
	say = say .. "    此外，天魂、地魂和命魂的灵力之和越\\"
	say = say .. "高，那么元神灵窍之力就越强，将来释放出\\"
	say = say .. "来的分身就越强。\\"
	say = say .. "    <返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.heti(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "    元神经过化形和炼体之后，获得了精神\\"
	say = say .. "和躯体。但是因为元神的魂魄分离“魄无魂\\"
	say = say .. "不生，魂无魄不旺”，必须将代表精神的魂\\"
	say = say .. "和代表身体的魄进行魂魄合一，真正的分身\\"
	say = say .. "才能出现，成为主人战斗的强力帮手。\\\\"
	say = say .. "    <返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.lianti(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "    元神化形之后，三魂附体，已经具备了\\"
	say = say .. "精神，但是并不具备四肢和五官，需要进入\\"
	say = say .. "第二步修行：炼体。炼体将决定分身职业。\\"
	say = say .. "　　所谓炼体，就是收集天冲、灵慧、力、\\"
	say = say .. "气、中枢、精和英七种魄对应的灵石，来为\\"
	say = say .. "元神提升这七种魄的灵力。七魄中间，天冲\\"
	say = say .. "代表魔法、灵慧代表精神力而力魄代表攻击\\"
	say = say .. "力，这三种魄的灵力多少，将决定分身的职\\"
	say = say .. "业。\\"
	say = say .. "    此外，七魄灵力之和越高，那么修炼出\\"
	say = say .. "来的分身初始等级就越高。\\\\"
	say = say .. "    <返回/@main>"
	return { say = say, page = goto_page, close = close }
end

return M
