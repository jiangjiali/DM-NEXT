-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 超级神佑
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "超级神佑",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.ms(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:set_god_bless(1, 50, 1800)) and 1 or 0)) ~= 0 then
		player:damage_using_item_dura(1)
		say = say .. "超级秒杀!\\"
		say = say .. "持续时间为30分钟\\"
		say = say .. "下线自动消失!\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.zj(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:set_god_bless(2, 60, 2400)) and 1 or 0)) ~= 0 then
		player:damage_using_item_dura(1)
		say = say .. "超级重击!\\"
		say = say .. "持续时间为40分钟\\"
		say = say .. "下线自动消失!\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.syo(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:set_god_bless(4, 90, 3600)) and 1 or 0)) ~= 0 then
		player:damage_using_item_dura(1)
		say = say .. "超级神佑!\\"
		say = say .. "持续时间为60分钟\\"
		say = say .. "下线自动消失!\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.syu(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:set_god_bless(3, 90, 3600)) and 1 or 0)) ~= 0 then
		player:damage_using_item_dura(1)
		say = say .. "超级神御!\\"
		say = say .. "持续时间为60分钟\\"
		say = say .. "下线自动消失!\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

return M
