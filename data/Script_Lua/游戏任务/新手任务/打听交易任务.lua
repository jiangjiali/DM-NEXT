-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 打听交易任务
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "打听交易任务",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["落霞岛_炼药1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--打听交易/@_RW_fulfilTaskDesp3>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp3(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "年轻人，谢谢你帮我的忙呢！你找我有什么事情吗？\\"
	say = say .. "<打听交易/@_RW_fulfilTask3>                <没事/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask3(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:complete_task(8)
	player:give_exp(4200)
	player:add_gold(300)
	player:add_task(9)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "想跟玩家交易的话，需要跟对方面对面站到一起，并且对方\\"
	say = say .. "要是和平攻击模式才可以哦。如果觉得这么作麻烦的话，也\\"
	say = say .. "可以直接右键点对方的头像进行交易操作。\\"
	say = say .. "你现在去首饰店掌柜那里看看，他会教你如何摆摊的。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_炼药1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--打听交易/@_RW_fulfilTaskDesp16>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp16(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "年轻人，谢谢你帮我的忙呢！你找我有什么事情吗？\\"
	say = say .. "<打听交易/@_RW_fulfilTask16_16>                <没事/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask16_16(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:complete_task(21)
	player:give_exp(4200)
	player:add_gold(300)
	player:add_task(22)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "想跟玩家交易的话，需要跟对方面对面站到一起，并且对方\\"
	say = say .. "要是和平攻击模式才可以哦。如果觉得这么作麻烦的话，也\\"
	say = say .. "可以直接右键点对方的头像进行交易操作。\\"
	say = say .. "你现在去首饰店掌柜那里看看，他会教你如何摆摊的。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
