-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 通天漩涡
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "通天漩涡",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("level") > 46 and 1 or 0)) ~= 0 then
		say = say .. "<我要去修罗界/@xiuluo>\\"
		say = say .. "<没事/@exit>\\\\"
	else
		say = say .. "等级不够,无法催动魔阵\\"
		say = say .. "<没事/@exit>\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.xiuluo(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你想去哪?\\"
	say = say .. "<虚无之关/@xuwuzhiguan>\\"
	say = say .. "<苍茫大厅/@cangmangdating>\\"
	say = say .. "<封印魔地/@fengyinmodi>\\\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.xuwuzhiguan(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:teleport(299, 28, 114)
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.cangmangdating(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:teleport(300, 30, 109)
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.fengyinmodi(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:teleport(301, 47, 53)
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
