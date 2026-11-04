-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 马倌
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "马倌",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "　　你好，有什么事情需要我帮忙么？\\\\"
	say = say .. "<修理/@repair>马牌\\"
	say = say .. "<清空/@main1>马牌\\"
	say = say .. "<没什么事情/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.repair(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要修理马牌吗？\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

M["~repair"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你的马牌已经修好了。\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.main1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你是不是觉得现有的座骑配不上你的身份？\\"
	say = say .. "你可以把马牌清空然后重新寻找座骑。\\"
	say = say .. "你要清空你的马牌吗？\\\\"
	say = say .. "<要/@change>\\"
	say = say .. "<不要/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.change(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "马牌清空后你马牌中的座骑将消失,\\"
	say = say .. "你必须重新设定马牌中的座骑。\\"
	say = say .. "你包裹里只能放一块马牌,不然我不知道清空哪块。\\"
	say = say .. "清空马牌需要收取5000金币的手续费,\\"
	say = say .. "你确定是要清空你的马牌吗？\\\\"
	say = say .. "<是的/@change1>\\"
	say = say .. "<不要/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.change1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 5000 and 1 or 0)) ~= 0 then
	else
		say = say .. "你身上没有足够的钱,\\"
		say = say .. "我不能帮你清空马牌。\\"
		say = say .. "<关闭/@exit>"
		close = true
	end
	if ((player:has_item("马牌", 1) and 1 or 0)) ~= 0 then
		say = say .. "马牌已经清空,顺便把马牌修理了一下,\\"
		say = say .. "你已经可以设定新的座骑了。\\\\"
		say = say .. "<离 开/@exit>"
		player:take_gold(5000)
		player:take_item("马牌", 1)
		player:give_item("马牌(空)", 1)
		close = true
	else
		say = say .. "你包裹里没有马牌,没法帮你清空。\\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

return M
