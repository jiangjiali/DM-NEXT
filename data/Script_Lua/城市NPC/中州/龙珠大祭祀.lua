-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 龙珠大祭祀
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "龙珠大祭祀",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我是龙珠大祭祀，投入任意一颗龙珠可使魔法阵拥有\\"
	say = say .. "更大的魔力。\\\\"
	say = say .. "<这就投入龙珠/@putin>\\"
	say = say .. "<查看魔法阵现在的威力多大/@magicpower>\\"
	say = say .. "<赶快去收集龙珠/@exit>\\"
	say = say .. "<离开/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.putin(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "您的包裹里没有龙珠。\\\\"
	say = say .. "<赶快去收集龙珠/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.magicpower(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "通过大家的努力，魔法阵的魔力已经提高到56917层！\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
