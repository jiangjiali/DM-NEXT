-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: box
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "box",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.pickup(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("di_executetime") == 0 and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg("宝盒目前被<$username>捡起，持宝人当前位置在<$mapname>地图，坐标<$posx>:<$posy>处")
	elseif ((player:get_var("di_executetime") == 20 and 1 or 0)) ~= 0 then
		player:delete_using_item()
		ScriptEngine.call(player, "box", "giveitem")
	else
		ScriptEngine.system_msg("持宝人<$username>当前位置在<$mapname>地图，坐标<$posx>:<$posy>处")
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.giveitem(player)
	local say = ""
	local goto_page = nil
	local close = false
	do
		local __sel = ScriptEngine.range_random(2, 32)
		if __sel == 2 then
			player:give_item("天魔战甲", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得天魔战甲")
		elseif __sel == 3 then
			player:give_item("圣战战甲", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得圣战战甲")
		elseif __sel == 4 then
			player:give_item("法神披风", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得法神披风")
		elseif __sel == 5 then
			player:give_item("裁决", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得裁决")
		elseif __sel == 6 then
			player:give_item("铜锤", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得铜锤")
		elseif __sel == 7 then
			player:give_item("无极", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得无极")
		elseif __sel == 7 then
			player:give_item("移形换影", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得移形换影")
		elseif __sel == 8 then
			player:give_item("遁地", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得遁地")
		elseif __sel == 9 then
			player:give_item("天师道袍", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得天师道袍")
		elseif __sel == 10 then
			player:give_item("天尊道袍", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得天尊道袍")
		elseif __sel == 11 then
			player:give_item("法神羽衣", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得法神羽衣")
		elseif __sel == 12 then
			player:give_item("金鹏宝甲(女)", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得金鹏宝甲(女)")
		elseif __sel == 13 then
			player:give_item("流星火雨", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得流星火雨")
		elseif __sel == 14 then
			player:give_item("金鹏宝甲(男)", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得金鹏宝甲(男)")
		elseif __sel == 15 then
			player:give_item("冥日", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得冥日")
		elseif __sel == 16 then
			player:give_item("破击剑法", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得破击剑法")
		elseif __sel == 17 then
			player:give_item("破盾斩", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得破盾斩")
		elseif __sel == 18 then
			player:give_item("化身蝙蝠", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得化身蝙蝠")
		elseif __sel == 19 then
			player:give_item("强化骷髅术", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得强化骷髅术")
		elseif __sel == 20 then
			player:give_item("骨玉", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得骨玉")
		elseif __sel == 21 then
			player:give_item("法神头盔", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得法神头盔")
		elseif __sel == 22 then
			player:give_item("法神项链", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得法神项链")
		elseif __sel == 23 then
			player:give_item("法神手镯", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得法神手镯")
		elseif __sel == 24 then
			player:give_item("法神戒指", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得法神戒指")
		elseif __sel == 25 then
			player:give_item("圣战戒指", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得圣战戒指")
		elseif __sel == 26 then
			player:give_item("圣战手镯", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得圣战手镯")
		elseif __sel == 27 then
			player:give_item("圣战项链", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得圣战项链")
		elseif __sel == 28 then
			player:give_item("圣战头盔", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得圣战头盔")
		elseif __sel == 29 then
			player:give_item("天尊戒指", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得天尊戒指")
		elseif __sel == 30 then
			player:give_item("天尊手镯", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得天尊手镯")
		elseif __sel == 31 then
			player:give_item("天尊项链", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得天尊项链")
		elseif __sel == 32 then
			player:give_item("天尊头盔", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得天尊头盔")
		else
			player:give_item("风影盾", 1)
			ScriptEngine.system_msg("恭喜<$username>夺宝成功，获得风影盾")
		end
	end
	return { say = say, page = goto_page, close = close }
end

function M.lose(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("di_executetime") == 10 and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg("宝盒已掉落30分钟,本次夺宝活动结束")
		player:delete_using_item()
	else
		ScriptEngine.system_msg("宝盒目前无人保管，正掉落在<$di_mapid>地图<$di_posx>，<$di_posy>位置")
	end
	return { say = say, page = goto_page, close = close }
end

return M
