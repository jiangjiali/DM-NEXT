-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: treasure
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "treasure",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.treasure1900(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.system_msg("“夺宝奇兵”活动提醒：携带宝盒的通天教主将在30分钟后现身，请大家做好准备！")
	ScriptEngine.system_msg("宝盒内藏有顶级技能书、武器、服装等其中随机一件，得到并保护宝盒1小时就可获得！")
	ScriptEngine.system_msg("活动详细规则，欢迎您群内咨询")
	ScriptEngine.system_msg("通天教主将出现在某个大地图的随机地点，具体坐标未知，祝你好运")
	return { say = say, page = goto_page, close = close }
end

function M.treasure1910(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.system_msg("夺宝奇兵活动提醒：携带宝盒的通天教主将在20分钟后现身，请大家做好准备！")
	ScriptEngine.system_msg("宝盒内藏有顶级技能书、武器、服装等其中随机一件，得到并保护宝盒1小时就可获得！")
	ScriptEngine.system_msg("通天教主将出现在某个大地图的随机地点，具体坐标未知，祝你好运！")
	return { say = say, page = goto_page, close = close }
end

function M.treasure1920(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.system_msg("夺宝奇兵活动提醒：携带宝盒的通天教主将在10分钟后现身，请大家做好准备！")
	ScriptEngine.system_msg("宝盒内藏有顶级技能书、武器、服装等其中随机一件，得到并保护宝盒1小时就可获得！")
	ScriptEngine.system_msg("通天教主将出现在某个大地图的随机地点，具体坐标未知，祝你好运！")
	return { say = say, page = goto_page, close = close }
end

function M.treasure1930(player)
	local say = ""
	local goto_page = nil
	local close = false
	do
		local __sel = ScriptEngine.range_random(2, 7)
		if __sel == 2 then
			Map.mongen(player, "宝盒教主", 16, 192, 405, 121, 1, "")
			ScriptEngine.system_msg("“夺宝奇兵”活动提醒：携带宝盒的通天教主已经现身，具体位置未知!")
			ScriptEngine.system_msg("宝盒内藏有顶级技能书、武器、服装等其中随机一件，得到并保护宝盒1小时就可获得！")
			ScriptEngine.system_msg("携带宝盒的通天教主已经现身，具体位置未知，祝你好运！")
		elseif __sel == 3 then
			Map.mongen(player, "宝盒教主", 16, 642, 540, 125, 1, "")
			ScriptEngine.system_msg("“夺宝奇兵”活动提醒：携带宝盒的通天教主已经现身，具体位置未知!")
			ScriptEngine.system_msg("宝盒内藏有顶级技能书、武器、服装等其中随机一件，得到并保护宝盒1小时就可获得！")
			ScriptEngine.system_msg("携带宝盒的通天教主已经现身，具体位置未知，祝你好运！")
		elseif __sel == 4 then
			Map.mongen(player, "宝盒教主", 16, 176, 160, 69, 1, "")
			ScriptEngine.system_msg("夺宝奇兵活动提醒：携带宝盒的通天教主已经出现在某个大地图，具体坐标未知，祝你好运！")
			ScriptEngine.system_msg("宝盒内藏有顶级技能书、武器、服装等其中随机一件，得到并保护宝盒1小时就可获得！")
		elseif __sel == 5 then
			Map.mongen(player, "宝盒教主", 67, 174, 845, 94, 1, "")
			ScriptEngine.system_msg("“夺宝奇兵”活动提醒：携带宝盒的通天教主已经现身，具体位置未知!")
			ScriptEngine.system_msg("宝盒内藏有顶级技能书、武器、服装等其中随机一件，得到并保护宝盒1小时就可获得！")
			ScriptEngine.system_msg("携带宝盒的通天教主已经现身，具体位置未知，祝你好运！")
		elseif __sel == 6 then
			Map.mongen(player, "宝盒教主", 67, 77, 895, 35, 1, "")
			ScriptEngine.system_msg("“夺宝奇兵”活动提醒：携带宝盒的通天教主已经现身，具体位置未知!")
			ScriptEngine.system_msg("宝盒内藏有顶级技能书、武器、服装等其中随机一件，得到并保护宝盒1小时就可获得！")
			ScriptEngine.system_msg("携带宝盒的通天教主已经现身，具体位置未知，祝你好运！")
		elseif __sel == 7 then
			Map.mongen(player, "宝盒教主", 67, 148, 256, 90, 1, "")
			ScriptEngine.system_msg("夺宝奇兵活动提醒：携带宝盒的通天教主已经出现在某个大地图，具体坐标未知，祝你好运！")
			ScriptEngine.system_msg("宝盒内藏有顶级技能书、武器、服装等其中随机一件，得到并保护宝盒1小时就可获得！")
		elseif __sel == 8 then
			Map.mongen(player, "宝盒教主", 144, 97, 271, 66, 1, "")
			ScriptEngine.system_msg("“夺宝奇兵”活动提醒：携带宝盒的通天教主已经现身，具体位置未知!")
			ScriptEngine.system_msg("宝盒内藏有顶级技能书、武器、服装等其中随机一件，得到并保护宝盒1小时就可获得！")
			ScriptEngine.system_msg("携带宝盒的通天教主已经现身，具体位置未知，祝你好运！")
		elseif __sel == 9 then
			Map.mongen(player, "宝盒教主", 144, 118, 71, 42, 1, "")
			ScriptEngine.system_msg("“夺宝奇兵”活动提醒：携带宝盒的通天教主已经现身，具体位置未知!")
			ScriptEngine.system_msg("宝盒内藏有顶级技能书、武器、服装等其中随机一件，得到并保护宝盒1小时就可获得！")
			ScriptEngine.system_msg("携带宝盒的通天教主已经现身，具体位置未知，祝你好运！")
		elseif __sel == 10 then
			Map.mongen(player, "宝盒教主", 144, 419, 392, 44, 1, "")
			ScriptEngine.system_msg("“夺宝奇兵”活动提醒：携带宝盒的通天教主已经现身，具体位置未知!")
			ScriptEngine.system_msg("宝盒内藏有顶级技能书、武器、服装等其中随机一件，得到并保护宝盒1小时就可获得！")
			ScriptEngine.system_msg("携带宝盒的通天教主已经现身，具体位置未知，祝你好运！")
		end
	end
	return { say = say, page = goto_page, close = close }
end

return M
