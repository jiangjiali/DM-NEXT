-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 乾坤药袋
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "乾坤药袋",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:damage_using_item_dura(1)) and 1 or 0)) ~= 0 then
		ScriptEngine.send_player_msg(player:get_var_str("username"), "注意：每次使用乾坤药袋，不管是否捆绑物品都会减少一次可使用次数！")
		goto_page = "main1"
	end
	return { say = say, page = goto_page, close = close }
end

function M.main1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("强效太阳神水", 6) and 1 or 0)) ~= 0 then
		player:take_item("强效太阳神水", 6)
		player:give_item("强效太阳水药袋", 1)
		close = true
	else
		goto_page = "main2"
	end
	return { say = say, page = goto_page, close = close }
end

function M.main2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("治疗药水", 6) and 1 or 0)) ~= 0 then
		player:take_item("治疗药水", 6)
		player:give_item("治疗药水袋", 1)
		close = true
	else
		goto_page = "main3"
	end
	return { say = say, page = goto_page, close = close }
end

function M.main3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("超级金创药", 6) and 1 or 0)) ~= 0 then
		player:take_item("超级金创药", 6)
		player:give_item("超级金创药袋", 1)
		close = true
	else
		goto_page = "main4"
	end
	return { say = say, page = goto_page, close = close }
end

function M.main4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("超级魔法药", 6) and 1 or 0)) ~= 0 then
		player:take_item("超级魔法药", 6)
		player:give_item("超级魔法药袋", 1)
		close = true
	else
		goto_page = "main5"
	end
	return { say = say, page = goto_page, close = close }
end

function M.main5(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("特级魔法药包", 6) and 1 or 0)) ~= 0 then
		player:take_item("特级魔法药包", 6)
		player:give_item("特级魔法药袋", 1)
		close = true
	else
		goto_page = "main6"
	end
	return { say = say, page = goto_page, close = close }
end

function M.main6(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("特级金创药包", 6) and 1 or 0)) ~= 0 then
		player:take_item("特级金创药包", 6)
		player:give_item("特级金创药袋", 1)
		close = true
	else
		goto_page = "main7"
	end
	return { say = say, page = goto_page, close = close }
end

function M.main7(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("魔法药(中)包", 6) and 1 or 0)) ~= 0 then
		player:take_item("魔法药(中)包", 6)
		player:give_item("中包魔法药袋", 1)
		close = true
	else
		goto_page = "main8"
	end
	return { say = say, page = goto_page, close = close }
end

function M.main8(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("金创药(中)包", 6) and 1 or 0)) ~= 0 then
		player:take_item("金创药(中)包", 6)
		player:give_item("中包金创药袋", 1)
		close = true
	else
		goto_page = "main9"
	end
	return { say = say, page = goto_page, close = close }
end

function M.main9(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("金创药(小)包", 6) and 1 or 0)) ~= 0 then
		player:take_item("金创药(小)包", 6)
		player:give_item("小包金创药袋", 1)
		close = true
	else
		goto_page = "main10"
	end
	return { say = say, page = goto_page, close = close }
end

function M.main10(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("魔法药(小)包", 6) and 1 or 0)) ~= 0 then
		player:take_item("魔法药(小)包", 6)
		player:give_item("小包魔法药袋", 1)
		close = true
	else
		goto_page = "main11"
	end
	return { say = say, page = goto_page, close = close }
end

function M.main11(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("太阳神水", 6) and 1 or 0)) ~= 0 then
		player:take_item("太阳神水", 6)
		player:give_item("太阳水药袋", 1)
		close = true
	else
		goto_page = "noitem"
	end
	return { say = say, page = goto_page, close = close }
end

function M.noitem(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.send_player_msg(player:get_var_str("username"), "你没有需要捆绑的物品或要捆绑的物品不够6个！")
	ScriptEngine.send_player_msg(player:get_var_str("username"), "提示：使用乾坤药袋只能捆绑强效太阳神水、太阳神水、治疗药水、金创药包和魔法药包.")
	return { say = say, page = goto_page, close = close }
end

return M
