-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 星宿朱雀
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "星宿朱雀",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "现在我可以帮你修理神饰了。不过神饰非同寻常物品，\\"
	say = say .. "修理神饰需要特殊的材料而且费用也比较贵。\\\\"
	say = say .. "<修理神饰/@checkshenshi>\\"
	say = say .. "<离开/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.checkshenshi(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你需要修理的神饰呢？请把你要修理的神饰戴在身上，而\\"
	say = say .. "不要放在包裹内，这样我一看就知道你要修理哪种神饰了。\\\\"
	say = say .. "<戴上神饰再来/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

return M
