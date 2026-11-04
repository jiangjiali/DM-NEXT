-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 玄玄老人
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "玄玄老人",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "玄亦，玄乎!你好啊年轻人，我是西域的玄玄老人，当年\\"
	say = say .. "镇守禁地白云道观的蛟川道人是我的师弟。如果你有什么\\"
	say = say .. "关于宝石、靴子、腰带的问题都可以来找我。最初级的宝\\"
	say = say .. "石（红宝石、蓝宝石、绿宝石）需要熔炼，靴子和腰带需\\"
	say = say .. "要鉴定。快让我看看你包裹中究竟是些什么样的宝贝吧！\\"
	say = say .. "<熔炼宝石/@changgem5>. <了解有关宝石的知识/@knowledge5>\\"
	say = say .. "<鉴定物品/@authenticate>. <了解有关鉴定的知识/@knowledge25>\\"
	say = say .. "<购入鉴定卷轴/@salereel5>  <帮我打开宝石箱子/@openrequest>\\"
	say = say .. "<熔炼宝石/@@gemsmelt>  <宝石仓库/@_CK_goldsave>  <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.changgem5(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "熔炼宝石系统已经开启，最初级的宝石（红宝石、蓝宝石、\\"
	say = say .. "绿宝石）是没有属性的，需要将三种宝石放在一起熔炼才可\\"
	say = say .. "以获得强大的力量。幸好，我现在已经拿到传说中的《熔炼\\"
	say = say .. "神术》按照上面的方法，我现在就可以给你进行宝石熔炼。\\"
	say = say .. "宝石熔炼至少需要三色无属性的宝石10颗以上才有几率合成\\"
	say = say .. "成功哦，我可是会不客气的收走你包裹中的所有宝石。你做\\"
	say = say .. "好充分的准备了吗？\\"
	say = say .. "<准备好了，请熔炼包裹中的宝石吧/@go>\\"
	say = say .. "<稍等，让我再考虑考虑/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.go(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "很抱歉，你没有把宝石带来。快去找宝石吧。\\\\\\"
	say = say .. "<好的，我明白了/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.knowledge5(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "具有神奇能量的宝石共分为以下五个等级\\"
	say = say .. "1、.初级宝石：红宝石、蓝宝石、绿宝石（无属性）\\"
	say = say .. "2、.小宝石  3、中宝石  4、大宝石  5、宝石\\"
	say = say .. "初级宝石通过“熔炼”将变成各类有属性的小宝石。随后，\\"
	say = say .. "六颗完全相同的宝石又可以通过“凝炼”升级成高一等级\\"
	say = say .. "的宝石。两颗种类不同但是级别相同的宝石还可以进行合\\"
	say = say .. "成，这将可能大大提高宝石的威力！有属性的宝石可以佩\\"
	say = say .. "戴在人物栏最下方的第三格。怎么样，心动了吧，宝石正\\"
	say = say .. "被怪物们牢牢看守着，快去寻找吧！  <好的，明白了/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.authenticate(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我玄玄老人可不是吹的！快拿你的宝贝来鉴定吧！\\\\"
	say = say .. "<谢谢！/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.knowledge25(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "在上一场正邪之战中，牺牲的英雄们留下了一些神奇的宝\\"
	say = say .. "物（战靴和腰带）。怪物们由于惧怕宝物正义的力量，用\\"
	say = say .. "妖力将它们封印，使它们看起来与普通的物品一样。所以，\\"
	say = say .. "这些战靴和腰带必须经过“鉴定”才会显露出它们强大的\\"
	say = say .. "力量！除了回城让我来鉴定之外，你也可以随身备一些鉴\\"
	say = say .. "定卷轴，这样就可以随时一睹上古宝物的真容了。\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.salereel5(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哈！看来你的运气还真不错，我随身带了不少鉴定卷轴。\\你可以从我这里轻松的获得，当然这些鉴定卷轴的价格\\不菲需要花费你20000金币。不然枉费我从大老远带来了！\\\\"
	say = say .. "<购入鉴定卷轴/@salereel1a>\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.salereel1a(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

function M.openrequest(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哈哈，你算找对人了。这些上古的宝藏上的符咒除了我还真\\"
	say = say .. "没有几个人能解开，来看看你运气怎么样，有时候这些宝石\\"
	say = say .. "箱子里面有你想象不到的财富哦。不过记得包裹留出空位。\\\\"
	say = say .. "<打开宝石箱子/@openbox>\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.openbox(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你身上没有什么宝石箱子，想必你是听了别人的传说来我这\\"
	say = say .. "打听的吧？这些宝藏是的确存在的，就看你有没有勇气去拿\\"
	say = say .. "到它们了。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._CK_goldsave(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "来来来，只要是红、绿、蓝三种颜色的宝石，放在宝石\\"
	say = say .. "仓库里是可就安全了。不过每种宝石可是只能放200颗。\\"
	say = say .. "多了可就放不下咯。\\"
	say = say .. "<查看宝石数量/@_CK_checkgolditem>\\"
	say = say .. "<存放宝石/@_CK_applystoregem>\\"
	say = say .. "<取出宝石/@_CK_takegold>\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

return M
