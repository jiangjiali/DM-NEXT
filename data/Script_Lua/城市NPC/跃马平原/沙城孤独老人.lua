-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 沙城孤独老人
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "沙城孤独老人",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你想知道最近沙城的攻城战役吗?\\ \\ "
	say = say .. "<查看/@aboutwar>"
	return { say = say, page = goto_page, close = close }
end

function M.aboutwar(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "◆最近的攻城战役预告:\\"
	say = say .. "战役开始时间：<$SABUKWARDATE> 开始。\\ "
	say = say .. "<◆详细攻城时间表/@AttackRequestPage>"
	return { say = say, page = goto_page, close = close }
end

return M
