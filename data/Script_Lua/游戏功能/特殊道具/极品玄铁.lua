-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 极品玄铁
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "极品玄铁",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请提供您要升级的首饰"
	player:put_item("请放入手饰:", "@upgradeweapon")
	return { say = say, page = goto_page, close = close }
end

function M.upgradeweapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:damage_using_item_dura(1)) and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "zuo")
	end
	return { say = say, page = goto_page, close = close }
end

function M.zuo(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("job") == 1 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "daoshi")
	else
	end
	if ((player:get_var("job") == 2 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "fashi")
	else
	end
	ScriptEngine.call(player, "极品玄铁", "wushi")
	if ((player:get_var("job") == 0 and 1 or 0)) ~= 0 and (1) ~= 0 then
	end
	return { say = say, page = goto_page, close = close }
end

function M.daoshi(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("ui_stdmode") == 15 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "dtoukui")
	else
	end
	if ((player:get_var("ui_stdmode") == 22 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "djiezhi")
	else
	end
	if ((player:get_var("ui_stdmode") == 23 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "djiezhi")
	else
	end
	if ((player:get_var("ui_stdmode") == 20 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "dxianglian")
	else
	end
	if ((player:get_var("ui_stdmode") == 19 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "dxianglian")
	else
	end
	if ((player:get_var("ui_stdmode") == 26 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "dshouzuo")
	end
	return { say = say, page = goto_page, close = close }
end

function M.dtoukui(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:upgrade_pet_item("sc2=+1")
	say = say .. "首饰升级成功!\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.djiezhi(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:upgrade_pet_item("sc2=+1")
	say = say .. "首饰升级成功!\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.dxianglian(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:upgrade_pet_item("sc2=+1")
	say = say .. "首饰升级成功!\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.dshouzuo(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:upgrade_pet_item("sc2=+1")
	say = say .. "首饰升级成功!\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.fashi(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("ui_stdmode") == 15 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "ftoukui")
	else
	end
	if ((player:get_var("ui_stdmode") == 22 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "fjiezhi")
	else
	end
	if ((player:get_var("ui_stdmode") == 23 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "fjiezhi")
	else
	end
	if ((player:get_var("ui_stdmode") == 20 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "fxianglian")
	else
	end
	if ((player:get_var("ui_stdmode") == 19 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "fxianglian")
	else
	end
	if ((player:get_var("ui_stdmode") == 26 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "fshouzuo")
	end
	return { say = say, page = goto_page, close = close }
end

function M.ftoukui(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:upgrade_pet_item("mc2=+1")
	say = say .. "首饰升级成功!\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.fjiezhi(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:upgrade_pet_item("mc2=+1")
	say = say .. "首饰升级成功!\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.fxianglian(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:upgrade_pet_item("mc2=+1")
	say = say .. "首饰升级成功!\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.fshouzuo(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:upgrade_pet_item("mc2=+1")
	say = say .. "首饰升级成功!\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.wushi(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("ui_stdmode") == 15 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "wtoukui")
	else
	end
	if ((player:get_var("ui_stdmode") == 22 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "wjiezhi")
	else
	end
	if ((player:get_var("ui_stdmode") == 23 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "wjiezhi")
	else
	end
	if ((player:get_var("ui_stdmode") == 20 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "wxianglian")
	else
	end
	if ((player:get_var("ui_stdmode") == 19 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "wxianglian")
	else
	end
	if ((player:get_var("ui_stdmode") == 26 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "极品玄铁", "wshouzuo")
	end
	return { say = say, page = goto_page, close = close }
end

function M.wtoukui(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:upgrade_pet_item("dc2=+1")
	say = say .. "首饰升级成功!\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.wjiezhi(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:upgrade_pet_item("dc2=+1")
	say = say .. "首饰升级成功!\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.wxianglian(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:upgrade_pet_item("dc2=+1")
	say = say .. "首饰升级成功!\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.wshouzuo(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:upgrade_pet_item("dc2=+1")
	say = say .. "首饰升级成功!\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
