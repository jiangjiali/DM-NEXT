-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 魔城传送门
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "魔城传送门",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "年青人,我可以带你去铁血魔城.\\"
	say = say .. "不过路费要1000金币!\\"
	say = say .. "<去铁血魔城/@goback>\\"
	say = say .. "<不去了/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.goback(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 999 and 1 or 0)) ~= 0 then
		player:take_gold(1000)
		player:teleport(284, 80, 76)
		close = true
	else
		say = say .. "年青人!你钱不够,我帮不了你!\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

return M
