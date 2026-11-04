-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 炼狱入口
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "炼狱入口",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:hour_between(18, 21) and 1 or 0)) ~= 0 then
		say = say .. "炼狱是具有双倍经验附加功能的区域，里面的怪物也异常强大，\\"
		say = say .. "只有勇士才可能安全到桃园净土，当然奖励也是十分丰厚的.\\"
		say = say .. "<我要挑战炼狱/@newenter>\\"
		say = say .. "<我不去了/@exit>\\\\"
	else
		say = say .. "还没到炼狱开放时间呢，等到时间再来吧。\\"
		say = say .. "每天18:00-22:00会开放炼狱。\\"
		say = say .. "<明白了/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.newenter(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:clear_flag(7)
	player:random_teleport(164)
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
