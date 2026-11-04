-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 热砂行商
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "热砂行商",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我们人类的乐土现在正被恶魔占领着，只有燃起漫天的焰火才\\"
	say = say .. "能将它们驱逐。我们需要你这样的英雄，赶快参加这场“焰火屠\\"
	say = say .. "魔记”！\\"
	say = say .. "在那里，你将享受到双倍经验＋双倍暴率。\\"
	say = say .. "<参加“焰火屠魔记”活动/@firevil>\\"
	say = say .. "<如何获得焰火卷轴？/@getinfo>\\"
	say = say .. "<我还没准备好去/@exit>\\\\"
	return { say = say, page = goto_page, close = close }
end

function M.firevil(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "在参加“焰火屠魔记”之前，你需要确认以下几件事情：1、你\\"
	say = say .. "的客户端必须已经更新为五月柔情版“百年好合”；2、你的包\\"
	say = say .. "裹中必须有至少一个焰火卷轴，如果你还没有找到卷\\"
	say = say .. "轴，你可以登陆商城购买。我的力量只能维持你\\"
	say = say .. "在里面停留1小时，里面已盘踞着大量的怪物，请注意安全，\\"
	say = say .. "一旦被怪物杀死将立即出场，你确认要入场吗？\\"
	say = say .. "<进入魔境/@enterfire>\\"
	say = say .. "<了解焰火卷轴/@info>\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.enterfire(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "参加\"焰火屠魔记\"行动会收取您一个焰火卷轴，您确\\"
	say = say .. "定参加吗？\\\\"
	say = say .. "<参加/@runfire>\\"
	say = say .. "<算了/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.runfire(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("姹紫嫣红", 1) and 1 or 0)) ~= 0 then
		player:take_item("姹紫嫣红", 1)
		player:set_flag(8)
		player:random_teleport(262)
		player:delay(3600, "@outfire")
	elseif ((player:has_item("红色恋人", 1) and 1 or 0)) ~= 0 then
		player:take_item("红色恋人", 1)
		player:set_flag(8)
		player:random_teleport(262)
		player:delay(3600, "@outfire")
	elseif ((player:has_item("蓝色妖姬", 1) and 1 or 0)) ~= 0 then
		player:take_item("蓝色妖姬", 1)
		player:set_flag(8)
		player:random_teleport(262)
		player:delay(3600, "@outfire")
	elseif ((player:has_item("红粉佳人", 1) and 1 or 0)) ~= 0 then
		player:take_item("红粉佳人", 1)
		player:set_flag(8)
		player:random_teleport(262)
		player:delay(3600, "@outfire")
	elseif ((player:has_item("金碧辉煌", 1) and 1 or 0)) ~= 0 then
		player:take_item("金碧辉煌", 1)
		player:set_flag(8)
		player:random_teleport(262)
		player:delay(3600, "@outfire")
	elseif ((player:has_item("心心相映", 1) and 1 or 0)) ~= 0 then
		player:take_item("心心相映", 1)
		player:set_flag(8)
		player:random_teleport(262)
		player:delay(3600, "@outfire")
	elseif ((player:has_item("天若有情", 1) and 1 or 0)) ~= 0 then
		player:take_item("天若有情", 1)
		player:set_flag(8)
		player:random_teleport(262)
		player:delay(3600, "@outfire")
	elseif ((player:has_item("双宿双飞", 1) and 1 or 0)) ~= 0 then
		player:take_item("双宿双飞", 1)
		player:set_flag(8)
		player:random_teleport(262)
		player:delay(3600, "@outfire")
	elseif ((player:has_item("花开并蒂", 1) and 1 or 0)) ~= 0 then
		player:take_item("花开并蒂", 1)
		player:set_flag(8)
		player:random_teleport(262)
		player:delay(3600, "@outfire")
	elseif ((player:has_item("地久天长", 1) and 1 or 0)) ~= 0 then
		player:take_item("地久天长", 1)
		player:set_flag(8)
		player:random_teleport(262)
		player:delay(3600, "@outfire")
	else
		say = say .. "你没有携带焰火卷轴。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.info(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "焰火卷轴系列有以下一些：\\"
	say = say .. "姹紫嫣红 红色恋人\\"
	say = say .. "蓝色妖姬 红粉佳人\\"
	say = say .. "金碧辉煌 心心相映\\"
	say = say .. "天若有情 双宿双飞\\"
	say = say .. "花开并蒂 地久天长\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.getinfo(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你可以用元宝从传世商城购买\\\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.outfire(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_flag(8) and 1 or 0)) ~= 0 and ((player:get_var("mapid") == 262 and 1 or 0)) ~= 0 then
		player:clear_flag(8)
		player:random_teleport(67)
	end
	return { say = say, page = goto_page, close = close }
end

return M
