-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 炼狱阻击战
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "炼狱阻击战",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.lianyu1840(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.system_msg("(*)今晚19点暗之魔王新动向——魔境七层战火再起，暗之魔王将亲自镇守炼狱魔境七层，我们需要所有英雄的并肩作战共同粉碎魔军的阴谋！")
	ScriptEngine.system_msg("(*)它们将不再出现在前几层的炼狱地图，全力固守“炼狱魔境七层”地图")
	ScriptEngine.system_msg("(*)怪物们选取了对自己十分有利的地理位置，妄图在此与我们决一死战！")
	ScriptEngine.system_msg("(*)今晚19点让我们吹起进攻的号角，向暗之世界宣告：人类，是不可战胜的！")
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.lianyu1900(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.system_msg("(*)尸霸率领暗之魔王的先头部队已经出现在炼狱魔境七层（41：42）附近")
	ScriptEngine.system_msg("(*)炼狱魔境七层战斗只是刚刚开始，魔王的威胁正逐渐迫近")
	ScriptEngine.system_msg("(*)我们需要所有人类的共同参与，英雄们正在炼狱魔境七层战斗")
	Map.mongen(player, "掷枪尸卫", 215, 41, 42, 10, 5, "")
	Map.mongen(player, "尸卫勇士", 215, 41, 42, 10, 5, "")
	Map.mongen(player, "尸卫战将", 215, 41, 42, 10, 5, "")
	Map.mongen(player, "尸霸", 215, 41, 42, 3, 1, "")
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.lianyu1915(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.system_msg("(*)疯狂的尸霸固然强大，却无法和魔王的实力相比")
	ScriptEngine.system_msg("(*)逆魔王率领暗之魔王的雇佣部队已经出现在炼狱魔境七层（33：35）附近")
	ScriptEngine.system_msg("(*)我们需要所有人类的共同参与，英雄们正在炼狱魔境七层战斗")
	Map.mongen(player, "逆魔卫士", 215, 33, 35, 10, 5, "")
	Map.mongen(player, "逆魔侍卫", 215, 33, 35, 10, 5, "")
	Map.mongen(player, "逆魔弓箭手", 215, 33, 35, 10, 5, "")
	Map.mongen(player, "逆魔王", 215, 33, 35, 2, 1, "")
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.lianyu1930(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.system_msg("(*)挥舞巨斧的逆魔王固然强大，却无法和魔王的实力相比")
	ScriptEngine.system_msg("(*)三头蛇王率领暗之魔王的王牌部队已经出现在炼狱魔境七层（27：28）附近")
	ScriptEngine.system_msg("(*)随着人类英雄们不间断的前往炼狱魔境七层，战斗也愈加激烈")
	Map.mongen(player, "魔甲虫", 215, 27, 28, 10, 5, "")
	Map.mongen(player, "三头蛇", 215, 27, 28, 10, 5, "")
	Map.mongen(player, "白蛇妖", 215, 27, 28, 10, 5, "")
	Map.mongen(player, "三头蛇王", 215, 27, 28, 2, 1, "")
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.lianyu1945(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "systemmsg \"(*)暗之魔王率领它的嫡系部队已经出现在炼狱魔境七层（16：19）附近\""
	say = say .. "systemmsg \"(*)英雄们,炼狱魔境七层最后的决战开始了,让我们一起来粉碎魔王的阴谋!\""
	say = say .. "mongen 血魔 215 16 19 10 5"
	say = say .. "mongen 铁翼魔 215 16 19 10 5"
	say = say .. "mongen 刺魔 215 16 19 10 5"
	say = say .. "mongen 暗之禁地魔王 215 16 19 2 1"
	say = say .. "close"
	return { say = say, page = goto_page, close = close }
end

return M
