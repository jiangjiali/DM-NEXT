-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 中州内书店老板
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "中州内书店老板",
	version = "",
	trade_types = {4},
	big_box = false,
	left_page = "",
	goods = {
		{ "初级剑法", 0, 10 },
		{ "小火球", 0, 10 },
		{ "治疗术", 0, 10 },
		{ "精神战法", 0, 10 },
	},
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你需要什么书？\\"
	say = say .. "<购入书籍/@buy>\\"
	say = say .. "<出售书籍/@sell>\\"
	say = say .. "<询问技能/@_SD_helpbooks>\\"
	say = say .. "<打听/@_SD_ask>和铁血魔城有关的最新消息\\"
	say = say .. "<打听消息/@mission>\\"
	say = say .. "<关闭选单/@exit>\\\\"
	return { say = say, page = goto_page, close = close }
end

function M.buy(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你想要卖的书。\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.sell(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你想要买的书.\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_helpbooks(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你对那种书感兴趣？\\\\"
	say = say .. "战士可以学习的<技能书/@_SD_warr>\\"
	say = say .. "法师可以学习的<技能书/@_SD_wizard>\\"
	say = say .. "道士可以学习的<技能书/@_SD_taos>\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_ask(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "听说铁血魔城中有好些新发现的魔法秘籍，可惜我老了，不\\"
	say = say .. "能再去和铁血军团战斗抢回秘籍，如果你抢回来了就卖给我\\"
	say = say .. "吧，城里的年轻人会感谢你。\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.mission(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这座城里的英雄，都不是等闲之辈啊。\\\\"
	say = say .. "<是啊/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_warr(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "战士可以学习的技能包括以下这些：\\"
	say = say .. "<初级剑法/@_SD_help101>、<血影刀法/@_SD_help102>、<残影刀法/@_SD_help103>、<攻杀剑法/@_SD_help104>、<护身真气/@_SD_help105>\\"
	say = say .. "<刺杀剑术/@_SD_help106>、<抱月刀/@_SD_help107>、<半月弯刀/@_SD_help108>、<野蛮冲撞/@_SD_help109>、<烈火剑法/@_SD_help110>\\"
	say = say .. "<雷霆剑/@_SD_help111>、<战魂真悟/@_SD_help112>、<破击剑法/@_SD_help113>、<突斩/@_SD_help114>、<破盾斩/@_SD_help115>、<金刚护体/@_SD_help116>\\"
	say = say .. "<擒龙手/@_SD_help117>、<移形换影/@_SD_help118>\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help101(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "作为一个战士所需要修炼的最基本剑术\\"
	say = say .. "对提高命中率很有帮助。\\"
	say = say .. "Lv.1 : 战士可以在第 7 级开始修炼。\\"
	say = say .. "Lv.2 : 战士可以在第 11 级开始修炼。\\"
	say = say .. "Lv.3 : 战士可以在第 16 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help102(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "血影刀法\\"
	say = say .. "此刀法因血气太盛，曾被封禁刀法秘笈并勒令青年战士不可\\"
	say = say .. "习此刀法。不知何故再次流入江湖，战士修习后在攻击时可\\"
	say = say .. "将血气附于兵刃之上，剑舞影随攻击威力将由此得到提升。\\"
	say = say .. "（如选择学习血影刀法，则不能学习残影刀法和攻杀剑术）\\"
	say = say .. "Lv.1 : 战士可以在第 12 级开始修炼。\\"
	say = say .. "Lv.2 : 战士可以在第 15 级开始修炼。\\"
	say = say .. "Lv.3 : 战士可以在第 19 级开始修炼。\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help103(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "残影刀法\\"
	say = say .. "在与东域族人交手后，研习而出的邪魅刀法，曾和血影刀法\\"
	say = say .. "一并封存，战士使用时，在普通攻击随后会出现一道残影对\\"
	say = say .. "敌人进行再次攻击。\\"
	say = say .. "（如选择学习残影刀法，则不能学习攻杀剑术和血影刀法）\\"
	say = say .. "Lv.1 : 战士可以在第 15 级开始修炼。\\"
	say = say .. "Lv.2 : 战士可以在第 19 级开始修炼。\\"
	say = say .. "Lv.3 : 战士可以在第 22 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help104(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "攻杀剑法\\"
	say = say .. "无论是命中率还是造成的破坏力，攻杀都是非常实用的剑术，\\"
	say = say .. "或者说，从这里开始，战士才开始向一名剑客迈进。\\"
	say = say .. "（如选择学习攻杀剑法，则不能学习残影刀法和血影刀法）\\"
	say = say .. "Lv.1 : 战士可以在第 19 级开始修炼。 \\"
	say = say .. "Lv.2 : 战士可以在第 22 级开始修炼。 \\"
	say = say .. "Lv.3 : 战士可以在第 24 级开始修炼。 \\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help105(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "护身真气\\"
	say = say .. "真气凝聚后环绕身体焕闪微光，战士防御能力以及生命值由\\"
	say = say .. "此提升，战斗中真气会持续吸收敌人攻击真气，不断提升真\\"
	say = say .. "气等级，增加防御能力和生命值。\\"
	say = say .. "Lv.1 : 战士可以在第 19 级开始修炼。\\"
	say = say .. "Lv.2 : 战士可以在第 23 级开始修炼。\\"
	say = say .. "Lv.3 : 战士可以在第 26 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help106(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "刺杀剑术\\"
	say = say .. "能大幅度提高出手的破坏力，一招一杀，对手闻风丧胆。\\"
	say = say .. "Lv.1 : 战士可以在第 25 级开始修炼。\\"
	say = say .. "Lv.2 : 战士可以在第 27 级开始修炼。\\"
	say = say .. "Lv.3 : 战士可以在第 29 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help107(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "抱月刀\\"
	say = say .. "使用时刀锋环扫360度周身滴水不透\\"
	say = say .. "即使十面受袭也可刀刀攻敌要害。\\"
	say = say .. "（如选择学习抱月刀，则不能学习半月弯刀）\\"
	say = say .. "Lv.1 : 战士可以在第 27 级开始修炼。\\"
	say = say .. "Lv.2 : 战士可以在第 30 级开始修炼。\\"
	say = say .. "Lv.3 : 战士可以在第 33 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help108(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "半月弯刀\\"
	say = say .. "以气凝聚于兵刃之上，随刀锋挥出，十步开外亦可伤人，\\"
	say = say .. "因刀锋形似半月而得名，攻击效果十分华丽。\\"
	say = say .. "（如选择学习半月弯刀，则不能学习抱月刀）\\"
	say = say .. "Lv.1 : 战士可以在第 28 级开始修炼。\\"
	say = say .. "Lv.2 : 战士可以在第 31 级开始修炼。\\"
	say = say .. "Lv.3 : 战士可以在第 34 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help108(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "野蛮冲撞\\"
	say = say .. "天下至刚的外家功夫，凝聚全身的劲道，将敌人强行撞开。\\"
	say = say .. "Lv.1 : 战士可在第 30 级开始修炼。\\"
	say = say .. "Lv.2 : 战士可在第 34 级开始修炼。\\"
	say = say .. "Lv.3 : 战士可在第 39 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help110(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "烈火剑法\\"
	say = say .. "剑生烈焰，招发必取人命，这是目前为止最高级的剑法，\\"
	say = say .. "练成此剑后几可无敌于天下，除非对手掌握……\\"
	say = say .. "（如选择学习烈火剑法，则不能学习雷霆剑）\\"
	say = say .. "Lv.1 : 战士可以在第 35 级开始修炼。\\"
	say = say .. "Lv.2 : 战士可以在第 37 级开始修炼。\\"
	say = say .. "Lv.3 : 战士可以在第 40 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help111(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "雷霆剑\\"
	say = say .. "将全身真气聚于剑尖，雷霆万钧之势横空劈出，剑身电光\\"
	say = say .. "火石有如雷烈烽云见者无不动容。\\"
	say = say .. "（如选择学习此项，则不能学习烈火剑法）\\"
	say = say .. "Lv.1 : 战士可以在第 34 级开始修炼。\\"
	say = say .. "Lv.2 : 战士可以在第 36 级开始修炼。\\"
	say = say .. "Lv.3 : 战士可以在第 39 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help112(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "战魂真悟\\"
	say = say .. "这是最新出现的神秘技能书，战士学习了此技能后，修炼效\\"
	say = say .. "率大为长进。这是所有战士都梦寐以求的。\\"
	say = say .. "Lv.1 : 战士可以在第 30 级开始修炼。\\"
	say = say .. "Lv.2 : 拥有足够的技能点数就可以升级。\\"
	say = say .. "Lv.3 : 拥有足够的技能点数就可以升级。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help113(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "破击剑法\\"
	say = say .. "这是最新出现的神秘技能书，据说可以击破幽灵盾等防御\\"
	say = say .. "法术，还能更有效的杀死怪物。真是无坚不摧。\\"
	say = say .. "Lv.1 : 战士可以在第 36 级开始修炼。\\"
	say = say .. "Lv.2 : 拥有足够的技能点数就可以升级。\\"
	say = say .. "Lv.3 : 拥有足够的技能点数就可以升级。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help114(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "突斩\\"
	say = say .. "这是最新出现的神秘技能书，据说招式类似类似野蛮冲撞\\"
	say = say .. "但却有更强的杀伤力，可谓刀刀见血势不可挡。\\"
	say = say .. "Lv.1 : 战士可以在第 37 级开始修炼。\\"
	say = say .. "Lv.2 : 拥有足够的技能点数就可以升级。\\"
	say = say .. "Lv.3 : 拥有足够的技能点数就可以升级。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help115(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "破盾斩\\"
	say = say .. "这是最新出现的神秘技能书，外行看来可能觉得这很类似\\"
	say = say .. "新近出现的破击剑法。其实这两种招式有着不同的精髓，\\"
	say = say .. "两者组合使用才是最强。\\"
	say = say .. "Lv.1 : 战士可以在第 39 级开始修炼。\\"
	say = say .. "Lv.2 : 拥有足够的技能点数就可以升级。\\"
	say = say .. "Lv.3 : 拥有足够的技能点数就可以升级。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help116(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "金刚护体\\"
	say = say .. "这是最新出现的神秘技能书，谁都知道战士体魄强健\\"
	say = say .. "而现在，又有了新技能金刚护体，这下真的所向无敌了。\\"
	say = say .. "Lv.1 : 战士可以在第 41 级开始修炼。\\"
	say = say .. "Lv.2 : 拥有足够的技能点数就可以升级。\\"
	say = say .. "Lv.3 : 拥有足够的技能点数就可以升级。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help117(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "擒龙手\\"
	say = say .. "战士的捕获技能。可将远处的怪物瞬间拉到身边\\"
	say = say .. "然后挥刀攻击，怪物被拖拽之后有一定机率的眩晕效果。\\"
	say = say .. "擒龙手十分神奇。招手之间，怪到身旁，不用再冒被围之险。\\"
	say = say .. "Lv.1 : 战士可以在第 43 级开始修炼。\\ "
	say = say .. "Lv.2 : 战士可以在第 45 级开始修炼。\\ "
	say = say .. "Lv.3 : 战士可以在第 47 级开始修炼。\\\\ "
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help118(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "移形换影\\"
	say = say .. "战士的挪移技能。可瞬间到达屏幕以内鼠标所指的点。\\"
	say = say .. "如果鼠标所指的点为障碍物或已经被占，则技能使用失效。\\"
	say = say .. "移形换影，神出鬼没。此技能攻可出其不意，退可留存实力，非常实用。\\"
	say = say .. "Lv.1 : 战士可以在第 43 级开始修炼。\\ "
	say = say .. "Lv.2 : 战士可以在第 45 级开始修炼。\\ "
	say = say .. "Lv.3 : 战士可以在第 47 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_wizard(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "法师可以学习的技能包括以下这些：\\"
	say = say .. "<小火球/@_SD_help201>、<抗拒火环/@_SD_help202>、<诱惑之光/@_SD_help203>、<地狱火焰/@_SD_help204>、<雷电术/@_SD_help205>\\"
	say = say .. "<冰箭术/@_SD_help206>、<瞬间移动/@_SD_help207>、<火炎刀/@_SD_help208>、<风火轮/@_SD_help209>、<爆裂火焰/@_SD_help210>、<火墙/@_SD_help211>\\"
	say = say .. "<疾光电影/@_SD_help212>、<冰龙破/@_SD_help213>、<玄冰刃/@_SD_help214>、<地狱雷光/@_SD_help215>、<魔法盾/@_SD_help216>\\"
	say = say .. "<圣言术/@_SD_help217>、<五雷轰/@_SD_help218>、<冰咆哮/@_SD_help219>、<冰旋风/@_SD_help220>、<法之魄/@_SD_help221>、<兽灵术/@_SD_help222>\\"
	say = say .. "<风影盾/@_SD_help223>、<狂龙紫电/@_SD_help224>、<化身蝙蝠/@_SD_help225>、<流星火雨/@_SD_help226>、<魔魂术/@_SD_help227>\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help201(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "小火球\\"
	say = say .. "基本攻击魔法，杀伤力会随着训练等级的提高而提升。\\"
	say = say .. "Lv.1 : 法师可以在第 7 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 11 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 16 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help202(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "抗拒火环\\"
	say = say .. "为了保护自己几乎毫无防御的身体，法师们利用自己最熟悉\\"
	say = say .. "的火系魔法研究出了一种极其巧妙的方式。他们利用被烈火\\"
	say = say .. "灼烧的炙热气团，将所有接近到自己身边的生物都远远推开。\\"
	say = say .. "Lv.1 : 法师可以在第 12 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 15 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 19 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help203(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "诱惑之光\\"
	say = say .. "法师用闪电攻击怪物时，发现雷电不但能攻击生物的身体，\\"
	say = say .. "还能影响它们的意志从而驯服怪物，从此法师就有了诱惑\\"
	say = say .. "之光。不过这个魔法既能让怪物变成乖巧的宠物，也可能\\"
	say = say .. "彻底激怒它们。\\"
	say = say .. "Lv.1 : 法师可以在第 13 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 18 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 24 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help204(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "地狱火焰\\"
	say = say .. "向前挥出一堵火焰墙，同时攻击面前5格内的敌人。这是\\"
	say = say .. "法师可以学习的第一个大范围魔法。\\"
	say = say .. "Lv.1 : 法师可以在第 16 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 21 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 26 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help205(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "雷电术\\"
	say = say .. "法师学习的第一个能真正体现自己强大攻击力的魔法，\\"
	say = say .. "也是很多法师最钟爱的魔法。使用后能够通过指尖发出\\"
	say = say .. "的微弱电光，诱发天空落下一道巨大的闪电，直接劈向\\"
	say = say .. "对手。唯一的缺点是准备时间较长，容易被人偷袭。\\"
	say = say .. "（如选择学习雷电术，则不能学习冰箭术）\\"
	say = say .. "Lv.1 : 法师可以在第 17 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 20 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 23 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help206(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "冰箭术\\"
	say = say .. "冰为天造，由天生，由天降，战斗中可召唤一柱冰箭从空中\\"
	say = say .. "激射而下，坚冰贯穿敌人躯体，而后冰融于水四散无踪。\\"
	say = say .. "（如选择学习冰箭术，则不能学习雷电术）\\"
	say = say .. "Lv.1 : 法师可以在第 17 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 20 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 23 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help207(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "瞬间移动\\"
	say = say .. "一种能够利用强大魔力打乱空间，从而达到随机人体传送目\\"
	say = say .. "的的法术。使用该魔法过于频繁，将会陷入一个在原地打转\\"
	say = say .. "的不利局面。但是通过传送术返回城镇的可能性，会随着训\\"
	say = say .. "练等级的提高而提高。\\"
	say = say .. "Lv.1 : 法师可以在第 19 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 22 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 25 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help208(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "火炎刀\\"
	say = say .. "根据训练等级的不同，火炎刀的杀伤力会大不相同。\\"
	say = say .. "（如选择学习火炎刀，则不能学习风火轮）\\"
	say = say .. "Lv.1 : 法师可以在第 19 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 23 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 25 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help209(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "风火轮\\"
	say = say .. "风借火力，火乘风行，风火交融后绕体急速旋转，近身者和\\"
	say = say .. "试图攻击者都将被风火之势重创而退。\\"
	say = say .. "（如选择学习风火轮，则不能学习火炎刀）\\"
	say = say .. "Lv.1 : 法师可以在第 21 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 25 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 28 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help210(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "爆裂火焰\\"
	say = say .. "超大范围的火系魔法，可以同时攻击３Ｘ３范围内的敌人。\\"
	say = say .. "除了高温造成的灼伤外，自目标点急速膨胀爆炸的火焰，可\\"
	say = say .. "以在一瞬间将周围的空气燃烧殆尽，从而使范围内的生物因\\"
	say = say .. "窒息而无法移动躲避下一次的进攻。\\"
	say = say .. "Lv.1: 法师可以在第 22 级开始修炼。\\"
	say = say .. "Lv.2: 法师可以在第 27 级开始修炼。\\"
	say = say .. "Lv.3: 法师可以在第 31 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help211(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "火墙\\"
	say = say .. "通过在地面上产生一条火墙，使踏入的敌人受到伤害。火墙\\"
	say = say .. "中的温度非常之高，以至于所有受到攻击的生物都将受到平\\"
	say = say .. "常两到三倍强的伤害。该魔法的攻击范围是２Ｘ２。随着训\\"
	say = say .. "练等级的提高，火墙的燃烧时间也将会延长。\\"
	say = say .. "Lv.1 : 法师可以在第 24 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 29 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 33 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help212(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "疾光电影\\"
	say = say .. "通过修炼，高级法师可以将电系元素隐藏在自己体内，在需\\"
	say = say .. "要时迅速召唤出来，向对手发出一道强烈的电光，所过之处\\"
	say = say .. "无一人能够幸免。由于是直线发射电光，所有杀伤范围和威\\"
	say = say .. "力比雷电术要大上许多。\\"
	say = say .. "（如选择学习疾光电影，则不能学习冰龙破）\\"
	say = say .. "Lv.1 : 法师可以在第 26 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 29 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 32 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help213(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "冰龙破\\"
	say = say .. "冰寒于水，龙行于天，修炼后魔法师可将法力阴凝成冰，冰\\"
	say = say .. "魂雪魄化为一道冰龙直冲而出，冰龙所过之处，寸草不生。\\"
	say = say .. "（如选择学习冰龙破，则不能学习疾光电影）\\"
	say = say .. "Lv.1 : 法师可以在第 26 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 29 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 32 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help214(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "玄冰刃\\"
	say = say .. "即使腹背受袭，仍可举手退敌，魔法师可在四面受敌时唤出\\"
	say = say .. "玄冰刃，刹那间冰刃将由地底刺透而出，冰刃强大的穿透力\\"
	say = say .. "将重创四周敌人。\\"
	say = say .. "（如选择学习玄冰刃，则不能学习地狱雷光）\\"
	say = say .. "Lv.1 : 法师可以在第 29 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 31 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 33 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help215(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "地狱雷光\\"
	say = say .. "这种魔法能够呼唤出一股强力的雷光风暴，伤害所有围在身\\"
	say = say .. "边的敌人。攻击的威力以爆发核心最高。不过，这也是一种\\"
	say = say .. "非常消耗魔法值得技能。\\"
	say = say .. "（如选择学习地狱雷光，则不能学习玄冰刃）\\"
	say = say .. "Lv.1 : 法师可以在第 30 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 32 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 34 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help216(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "魔法盾\\"
	say = say .. "可以产生一个魔法盾来减低物理攻击和魔法攻击对施法者\\"
	say = say .. "的伤害。对法师较弱的体质来说，是非常有用的保护。\\"
	say = say .. "Lv.1 : 法师可以在第 31 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 34 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 38 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help217(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "圣言术\\"
	say = say .. "继诱惑之光之后，法师们又研究出了专门针对不死系生物的\\"
	say = say .. "精神攻击魔法圣言术。虽然看起来不象诱惑之光那样激烈，\\"
	say = say .. "但高等级的圣言术却可以对不死系生物造成一击必杀的效果。\\"
	say = say .. "Lv.1 : 法师可以在第 32 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 35 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 39 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help218(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "五雷轰\\"
	say = say .. "飙举电至无坚不摧，战斗时可招多道雷电同时劈下，在群\\"
	say = say .. "体战争中将发挥骇人的群体杀伤力。\\"
	say = say .. "（如选择学习五雷轰，则不能学习冰咆哮）\\"
	say = say .. "Lv.1 : 法师可以在第 34 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 36 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 39 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help219(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "冰咆哮\\"
	say = say .. "这是法师冰冻系的终极魔法。使用此法术后，３Ｘ３的范围\\"
	say = say .. "之内将变为一片冰天雪地，气温骤降。在这个范围内的所有\\"
	say = say .. "生物除了漫天的冰霜敲击造成的伤害外，还会受到冰冻影响。\\"
	say = say .. "（如选择学习冰咆哮，则不能学习五雷轰）\\"
	say = say .. "Lv.1 : 法师可以在第 35 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 37 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 40 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help220(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "冰旋风\\"
	say = say .. "此时的魔法师已拥有强大魔法力，挥手而出的风刀霜剑化为\\"
	say = say .. "旋风对大范围敌人进行袭击，同时此范围的敌人将失去重力\\"
	say = say .. "卷入旋风中心，魔法师随即可进行连续的群体攻击。\\"
	say = say .. "（只有学习了五雷轰，才可以学习冰旋风）\\"
	say = say .. "Lv.1 : 法师可以在第 37 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 39 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 42 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help221(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "法之魄\\"
	say = say .. "这是最新出现的神秘技能书，法师学习了此技能后，修炼效\\"
	say = say .. "率大为长进。这是所有法师都梦寐以求的。\\"
	say = say .. "Lv.1 : 法师可以在第 30 级开始修炼。\\"
	say = say .. "Lv.2 : 拥有足够的技能点数就可以升级。\\"
	say = say .. "Lv.3 : 拥有足够的技能点数就可以升级。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help222(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "兽灵术\\"
	say = say .. "这是最新出现的神秘技能书，法师只要掌握此技能，就能让\\"
	say = say .. "自己的宠物变得更强，真是令人向往的魔法书。\\"
	say = say .. "Lv.1 : 法师可以在第 35 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 38 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 41 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help223(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "风影盾\\"
	say = say .. "这是最新出现的神秘技能书，这又是法师保护自身的强大法\\"
	say = say .. "术，而且据说可以和魔法盾同时使用，实在太强了。\\"
	say = say .. "Lv.1 : 法师可以在第 35 级开始修炼。\\"
	say = say .. "Lv.2 : 拥有足够的技能点数就可以升级。\\"
	say = say .. "Lv.3 : 拥有足够的技能点数就可以升级。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help224(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "狂龙紫电\\"
	say = say .. "这是最新出现的神秘技能书，据说是法师最强的攻击法术\\"
	say = say .. "施法时会有狂龙飞升，威力可怕。\\"
	say = say .. "Lv.1 : 法师可以在第 40 级开始修炼。\\"
	say = say .. "Lv.2 : 法师可以在第 41 级开始修炼。\\"
	say = say .. "Lv.3 : 法师可以在第 43 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help225(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "化身蝙蝠\\"
	say = say .. "这是最新出现的神秘技能书，连我也不明白这是什么神奇\\"
	say = say .. "法师竟然可以瞬间化为蝙蝠自由飞行，难道这是什么上古\\"
	say = say .. "流传下来的神奇法术？\\"
	say = say .. "Lv.1 : 法师可以在第 42 级开始修炼。\\"
	say = say .. "Lv.2 : 拥有足够的技能点数就可以升级。\\"
	say = say .. "Lv.3 : 拥有足够的技能点数就可以升级。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help226(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "流星火雨\\"
	say = say .. "法师的超级群体攻击魔法。可向特定范围施展，\\"
	say = say .. "同时攻击多个目标，流星闪耀，火雨天降，给敌人造成巨大伤害。\\"
	say = say .. "绚丽的魔法效果是流星火雨的一大特色，\\"
	say = say .. "它也是高阶法师迅速获取经验值的利器。\\"
	say = say .. "Lv.1 : 法师可以在第 43 级开始修炼。\\ "
	say = say .. "Lv.2 : 法师可以在第 45 级开始修炼。\\ "
	say = say .. "Lv.3 : 法师可以在第 47 级开始修炼。\\\\ "
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help227(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "魔魂术\\"
	say = say .. "被动技能，法师的吸取性魔法。每杀死一个怪物，\\"
	say = say .. "就有一定概率吸收跟死亡怪物等级对应的MP。\\"
	say = say .. "灭魂吸魔，战意不绝。掌握魔魂术的法师，战斗力更持久，\\"
	say = say .. "轻轻松松，胜人一筹。\\"
	say = say .. "Lv.1 : 法师可以在第 43 级开始修炼。\\ "
	say = say .. "Lv.2 : 法师可以在第 45 级开始修炼。\\ "
	say = say .. "Lv.3 : 法师可以在第 47 级开始修炼。\\\\ "
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_taos(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "道士可以学习的技能包括以下这些：\\"
	say = say .. "<治疗术/@_SD_help301>、<精神战法/@_SD_help302>、<施毒术/@_SD_help303>、<诅咒术/@_SD_help304>、<灵魂道符/@_SD_help305>\\"
	say = say .. "<骷髅召唤术/@_SD_help306>、<赶尸术/@_SD_help307>、<隐身术/@_SD_help308>、<替身法符/@_SD_help309>、<集体隐身术/@_SD_help310>\\"
	say = say .. "<幽灵盾/@_SD_help311>、<神圣战甲术/@_SD_help312>、<狮子吼/@_SD_help313>、<困魔咒/@_SD_help314>、<灵魂墙/@_SD_help315>\\"
	say = say .. "<群体治愈术/@_SD_help316>、<召唤神兽/@_SD_help317>、<道心清明/@_SD_help318>、<神光术/@_SD_help319>、<解毒术/@_SD_help320>\\"
	say = say .. "<幽冥火咒/@_SD_help321>、<强化骷髅术/@_SD_help322>、<心灵召唤/@_SD_help323>、<遁地/@_SD_help324>\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help301(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "治疗术\\"
	say = say .. "从第一个魔法开始，道士们就步上了治病救人的道路。治愈\\"
	say = say .. "术如星光般闪耀的温暖光线，为笼罩在其中的人类迅速疗伤，\\"
	say = say .. "可以说是人们在战场上最常见也最想见到的光芒。\\"
	say = say .. "Lv.1 : 道士可以在第 7 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 11 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 16 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help302(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "精神战法\\"
	say = say .. "根据修炼等级的不同，可以提高战斗时的命中率。\\"
	say = say .. "Lv.1 : 道士可以在第 9 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 13 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 19 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help303(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "施毒术\\"
	say = say .. "各种毒药复杂的配方和功能让人眼花缭乱，但对终日与药\\"
	say = say .. "物打交道的道士们来说却是异常简单。一个精通施毒术的\\"
	say = say .. "道士，可能会成为战场上的好搭档，也可能会成为令人恐\\"
	say = say .. "怖的暗杀者。\\"
	say = say .. "（如选择学习施毒术，则不能学习诅咒术）\\"
	say = say .. "Lv.1 : 道士可以在第 14 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 17 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 20 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help304(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "诅咒术\\"
	say = say .. "精神力无所不在。通过强大精神力量的影响，被施咒对象\\"
	say = say .. "的魔法防御与魔法值都将同时降低。\\"
	say = say .. "（如选择学习诅咒术，则不能学习施毒术）\\"
	say = say .. "Lv.1 : 道士可以在第 14 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 17 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 20 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help305(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "灵魂道符\\"
	say = say .. "和火球术一样的远程法术，通过驱使护身符来攻击敌人。\\"
	say = say .. "Lv.1 : 道士可以在第 18 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 21 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 24 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help306(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "骷髅召唤术\\"
	say = say .. "一种通过使用护身符和复活力制造骷髅的法术。制造出的\\"
	say = say .. "骷髅将会成为你最忠诚的跟随者。这是复活术的第一步。\\"
	say = say .. "（如选择学习骷髅召唤术，则不能学习赶尸术）\\"
	say = say .. "Lv.1 : 道士可以在第 19 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 23 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 26 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help307(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "赶尸术\\"
	say = say .. "死亡，仅仅是开始。在神秘咒语的召唤下，任何尸体，即\\"
	say = say .. "使是生前强大力量的所在，都难逃被驱使的噩运。\\"
	say = say .. "（如选择学习赶尸术，则不能学习召唤骷髅）\\"
	say = say .. "Lv.1 : 道士可以在第 19 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 23 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 26 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help308(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "隐身术\\"
	say = say .. "隐身术使怪物无法察觉你的存在。使用这种法术后采用魔\\"
	say = say .. "法远程攻击，是一种非常理想的单对单战斗方法。\\"
	say = say .. "（如选择学习隐身术，则不能学习替身法符）\\"
	say = say .. "Lv.1 : 道士可以在第 20 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 23 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 26 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help309(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "替身法符\\"
	say = say .. "再仇恨的怨念，也会在替身法符的作用下转移。施法成功\\"
	say = say .. "后，所有集中在施术者身上的仇恨和追逐都将被转嫁到法\\"
	say = say .. "符所及之处。\\"
	say = say .. "（如选择学习替身法符，则不能学习隐身术）\\"
	say = say .. "Lv.1 : 道士可以在第 20 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 23 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 26 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help310(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "集体隐身术\\"
	say = say .. "大面积的隐身术。与普通的隐身术作用相同，能将范围内\\"
	say = say .. "人类的气息隐藏，令怪物无法发觉其存在。组队时加入一\\"
	say = say .. "名精通集体隐身术的道士，可以使整支队伍的生存机会大\\"
	say = say .. "大提高。\\"
	say = say .. "Lv.1 : 道士可以在第 21 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 25 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 29 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help311(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "幽灵盾\\"
	say = say .. "道士们通过钻研到东方神秘的道术思想，学会了召唤四象\\"
	say = say .. "神兽的力量。幽灵盾就是通过召唤“玄武”神兽，为周围的\\"
	say = say .. "战友们增加抵抗魔法攻击的能力。道术越高，增加防御的\\"
	say = say .. "时间也就越长。\\"
	say = say .. "Lv.1 : 道士可以在第 22 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 24 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 26 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help312(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "神圣战甲术\\"
	say = say .. "通过召唤“青龙”神兽，道士们可以让自己的战友肉体更加\\"
	say = say .. "强健，能够抵御更强的物理攻击。由于大多数怪物使用的\\"
	say = say .. "都是直接物理攻击，所以这一能力在外出打猎练功时特别\\"
	say = say .. "有效，也使得道士处处得到欢迎。\\"
	say = say .. "Lv.1 : 道士可以在第 25 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 27 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 29 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help313(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "狮子吼\\"
	say = say .. "路见不平狮子吼，用丹田真气将面前的敌人远远推开。\\"
	say = say .. "Lv.1 : 道士可以在第 26 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 30 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 35 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help314(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "困魔咒\\"
	say = say .. "被限制在咒语中的怪兽因为看不见外面的情况只能绕着圈\\"
	say = say .. "走。但是当你和其他人走进这个六角形的时候魔法会消失。\\"
	say = say .. "当怪物受到外界攻击时能够躲避。困魔咒边界会发光。\\"
	say = say .. "（如选择学习困魔咒，则不能学习灵魂墙）\\"
	say = say .. "Lv.1 : 道士可以在第 28 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 30 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 32 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help315(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "灵魂墙\\"
	say = say .. "渴望肉体的怨灵，强大的束缚。一旦被这种灵体所构成的\\"
	say = say .. "墙壁所包围，任何生物都将难逃生天。\\"
	say = say .. "（如选择学习灵魂墙，则不能学习困魔咒）\\"
	say = say .. "Lv.1 : 道士可以在第 28 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 30 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 32 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help316(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "群体治愈术\\"
	say = say .. "能够恢复自己和周围所有玩家的体力，\\"
	say = say .. "治疗效果随等级增长。\\"
	say = say .. "Lv.1 : 道士可以在第 33 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 35 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 38 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help317(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "召唤神兽\\"
	say = say .. "能够召唤一只喷火的强大神兽作自己的随从。\\"
	say = say .. "Lv.1 : 道士可以在第 35 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 37 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 40 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help318(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "道心清明\\"
	say = say .. "这是最新出现的神秘技能书，道士学习了此技能后，修炼效\\"
	say = say .. "率大为长进。这是所有道士都梦寐以求的。\\"
	say = say .. "Lv.1 : 道士可以在第 30 级开始修炼。\\"
	say = say .. "Lv.2 : 拥有足够的技能点数就可以升级。\\"
	say = say .. "Lv.3 : 拥有足够的技能点数就可以升级。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help319(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "神光术\\"
	say = say .. "这是最新出现的神秘技能书，据说可以解除一些负面属性\\"
	say = say .. "的魔法，如诅咒，麻痹等。可能还有其他神秘功效。\\"
	say = say .. "Lv.1 : 道士可以在第 36 级开始修炼。\\"
	say = say .. "Lv.2 : 拥有足够的技能点数就可以升级。\\"
	say = say .. "Lv.3 : 拥有足够的技能点数就可以升级。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help320(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "解毒术\\"
	say = say .. "这是最新出现的神秘技能书，顾名思义就是给中毒的人解毒\\"
	say = say .. "的。但据说还有其他神秘功效。\\"
	say = say .. "的魔法，如诅咒，麻痹等。\\"
	say = say .. "Lv.1 : 道士可以在第 38 级开始修炼。\\"
	say = say .. "Lv.2 : 拥有足够的技能点数就可以升级。\\"
	say = say .. "Lv.3 : 拥有足够的技能点数就可以升级。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help321(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "幽冥火咒\\"
	say = say .. "这是最新出现的神秘技能书，据说是道士可以学会的最强攻\\"
	say = say .. "击法术。\\"
	say = say .. "Lv.1 : 道士可以在第 39 级开始修炼。\\"
	say = say .. "Lv.2 : 道士可以在第 41 级开始修炼。\\"
	say = say .. "Lv.3 : 道士可以在第 43 级开始修炼。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help322(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "强化骷髅术\\"
	say = say .. "这是最新出现的神秘技能书，据我所知，使用此技能可同时\\"
	say = say .. "召唤两只骷髅。可别小看这新技能，听说比麒麟还要强。\\"
	say = say .. "Lv.1 : 道士可以在第 42 级开始修炼。\\"
	say = say .. "Lv.2 : 拥有足够的技能点数就可以升级。\\"
	say = say .. "Lv.3 : 拥有足够的技能点数就可以升级。\\\\"
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help323(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "心灵召唤\\"
	say = say .. "道士的高级控制技能。能自由控制自己的召唤宠物，\\"
	say = say .. "可以让宠物锁定攻击目标，也能迅速将宠物召回到自己身边。\\"
	say = say .. "心灵的力量是无穷的，心灵召唤更能激发心灵潜在的力量，\\"
	say = say .. "使你和你的宠物配合无间。\\"
	say = say .. "Lv.1 : 道士可以在第 43 级开始修炼。\\ "
	say = say .. "Lv.2 : 道士可以在第 45 级开始修炼。\\ "
	say = say .. "Lv.3 : 道士可以在第 47 级开始修炼。\\\\ "
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

function M._SD_help324(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "遁地\\"
	say = say .. "道士的高级逃逸技能。可瞬间遁入地下，\\"
	say = say .. "然后在屏幕之内鼠标所指的点出现。\\"
	say = say .. "如果鼠标所指的点为障碍物或已经被占，则技能使用失效。\\"
	say = say .. "古之奇术，借地遁形。练有此技能的道士穿越魔山怪海，如履平地。\\"
	say = say .. "Lv.1 : 道士可以在第 43 级开始修炼。\\ "
	say = say .. "Lv.2 : 道士可以在第 45 级开始修炼。\\ "
	say = say .. "Lv.3 : 道士可以在第 47 级开始修炼。\\\\ "
	say = say .. "<返 回/@_SD_helpbooks>"
	return { say = say, page = goto_page, close = close }
end

return M
