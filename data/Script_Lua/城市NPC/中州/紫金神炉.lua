-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 紫金神炉
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "紫金神炉",
	version = "",
	trade_types = {59},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "如果你拥有了许多“熔炼”后的宝石，就可以在神炉中\\"
	say = say .. "进行更高级的宝石“凝炼”了。让宝石可以在神炉中吸\\"
	say = say .. "取天地灵气，将能大大提高它自身的能量，还有可能获\\"
	say = say .. "得意想不到的神奇效果呢。\\"
	say = say .. "你可以在“玄玄老人”那里将无属性的初级宝石“熔炼”\\"
	say = say .. "成小宝石。\\ \\"
	say = say .. "<什么是宝石“凝炼”/@什么凝炼>  <我要凝炼宝石/@@gemcondense>\\"
	say = say .. "<什么是宝石“合成”/@什么合成>  <我要合成宝石/@@gemcompound>\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["什么凝炼"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "六颗同样的宝石可以进行“凝炼”，它们将在神炉中被提\\"
	say = say .. "升为更高一级的同类宝石。这可是100%成功的哦。如果你\\"
	say = say .. "已经有了六颗同样的宝石，不妨来试试吧。\\\\"
	say = say .. "<我要凝炼宝石/@@gemcondense> <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["什么合成"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "不同种类但是相同级别的两颗宝石可以进行“合成”\\"
	say = say .. "合成时你需要加入另外4件装备做为辅助材料，辅助材\\"
	say = say .. "料可以是项链、手镯、戒指、黑铁等......。它们的搭配\\"
	say = say .. "可与“合成”的成功与否有着重要的联系，怎么组合就\\"
	say = say .. "要靠你的智慧来摸索了。\\"
	say = say .. "注：合成失败有概率导致宝石破碎。\\\\"
	say = say .. "<我要合成宝石/@@gemcompound> <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
