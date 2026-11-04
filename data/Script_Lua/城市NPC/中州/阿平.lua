-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 阿平
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "阿平",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我在这里帮助那些愿意赎罪的恶人，\\"
	say = say .. "洗脱罪名后就可以在城里自由进出。\\"
	say = say .. "记住——赎罪的前提是要有声望值。\\"
	say = say .. "用一点声望值可洗去一点PK值!\\\\"
	say = say .. "<我要洗红名/@xihongming>  <检测PK值/@CHECKPK>\\"
	say = say .. "<关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.xihongming(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("credit") > 0 and 1 or 0)) ~= 0 and ((player:get_var("pkpoint") > 0 and 1 or 0)) ~= 0 then
		goto_page = "xihongming1"
	else
		say = say .. "你的声望值不够或PK值不够!\\\\"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.xihongming1(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:take_credit(1)
	player:dec_pk(1)
	say = say .. "我帮你洗去了一点PK值!\\\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.CHECKPK(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你的PK值是<color=green <$pkpoint>>点!\\\\ "
	say = say .. "<关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
