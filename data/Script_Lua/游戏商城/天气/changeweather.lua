-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: changeweather
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "changeweather",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.weather(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:check_map_flag("weather") and 1 or 0)) ~= 0 and (((player:damage_using_item_dura(1)) and 1 or 0)) ~= 0 then
		player:change_weather((tonumber(ScriptEngine.param(0)) or 0))
		player:scroll_text("<$username>改变了<$mapname>的天气效果为<$_param1>,请开启天气效果欣赏!")
	else
		ScriptEngine.send_player_msg(player:get_var_str("username"), "户外才能使用天气卷轴")
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
