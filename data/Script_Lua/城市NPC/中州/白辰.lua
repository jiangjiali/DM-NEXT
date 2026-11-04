-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 白辰
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "白辰",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我是中州皇宫御用铸盾师白辰，\\ "
	say = say .. "可助你以五行精华淬炼盾牌品质。\\ "
	say = say .. "<升级盾牌/@upgrade> <关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.upgrade(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "五行精华蕴含着天地五行之力，\\ "
	say = say .. "用它淬炼盾牌，可使盾牌的防御与魔御更加坚实。\\ "
	say = say .. "每次淬炼消耗 五行精华×5，品质 +1。\\ "
	say = say .. "<开始淬炼/@do_upgrade> <返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.do_upgrade(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("五行精华", 5) and 1 or 0)) ~= 0 then
		player:upgrade_shield(5)
		close = true
	else
		say = say .. "你的五行精华数量不足 5 个，无法淬炼。\\ "
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

return M
