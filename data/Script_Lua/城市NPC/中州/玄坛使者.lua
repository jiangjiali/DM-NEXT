-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 玄坛使者
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "玄坛使者",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "此乃神武殿商行的掌柜。\\ "
	say = say .. "各位勇士若有闲置物品，尽可寄售于此。\\\\"
	say = say .. "<进入交易行/@entertrade>\\ "
	say = say .. "<进入商行/@enterfirm>\\ "
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.entertrade(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:open_vip_trade()
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.enterfirm(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:open_firm()
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
