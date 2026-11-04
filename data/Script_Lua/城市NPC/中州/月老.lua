-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 月老
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "月老",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你想做什么？\\"
	say = say .. "<求婚/@marry>\\"
	say = say .. "<取消求婚/@wantcancel>\\"
	say = say .. "<离婚/@divorce>\\"
	say = say .. "<询问结婚时间/@asktime>\\"
	say = say .. "<打听消息/@ask>\\"
	say = say .. "<离开/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.marry(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "求婚必须是男性,还必须拥有至少5点的声望\\"
	say = say .. "值和带上求婚戒指!满足了上述所有条件之后，\\"
	say = say .. "你只需支付1000块金币的手续费，就可以向\\"
	say = say .. "爱人“求婚”了\\"
	say = say .. "<我够条件,我要求婚/@marry1>\\"
	say = say .. "<我下次再来吧/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.marry1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") < 1000 and 1 or 0)) ~= 0 then
		say = say .. "你小子太穷了,1000块都拿不出,还来求婚!\\"
		return { say = say, page = goto_page, close = close }
	end
	if ((player.is_married and 1 or 0)) ~= 0 then
		say = say .. "你已经结婚了,还来找我做什么!\\"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:check_equipment_ex("求婚戒指") and 1 or 0)) ~= 0 then
	else
		say = say .. "你没带上结婚戒指,带上了再来找我!\\"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:get_var("credit") < 5 and 1 or 0)) ~= 0 then
		say = say .. "你的声望值少于5点,我不能答应你的请求!\\"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:get_var("sex") == 1 and 1 or 0)) ~= 0 then
		say = say .. "你是女人,你来求婚做什么,怕嫁不出去啊?\\"
	else
		player:input_text("请输入求婚对象的名字:", 16, "@postrequest")
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

function M.postrequest(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((ScriptEngine.is_online(player:get_var_str("inputtext")) and 1 or 0)) ~= 0 then
		say = say .. "请求已发送！\\\\"
		player:show_page(player:get_var_str("inputtext"), "@checkandrequest1")
	else
		say = say .. "<$inputtext>不在线，无法接受您的求婚请求。\\\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.error(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请求失败，原因是\\"
	say = say .. "<$_param0>\\\\\\"
	say = say .. "<关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.checkandrequest1(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:set_var("requeststudent", ScriptEngine.param(0))
	player:delay(0, "@checkandrequest")
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.checkandrequest(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("sex") == 0 and 1 or 0)) ~= 0 then
		player:show_page(player:get_var_str("requeststudent"), "@error")
		close = true
	end
	if ((player.is_married and 1 or 0)) ~= 0 then
		player:show_page(player:get_var_str("requeststudent"), "@error")
		close = true
	end
	say = say .. "<$requeststudent>向您求婚，请确认．．．\\\\"
	say = say .. "<接受/@acceptrequest&$requeststudent>\\"
	say = say .. "<拒绝/@refuserequest&$requeststudent>\\"
	return { say = say, page = goto_page, close = close }
end

function M.acceptrequest(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:set_wife(ScriptEngine.param(0), 1) and 1 or 0)) ~= 0 then
		player:show_page(ScriptEngine.param(0), "@requestaccepted")
		say = say .. "<$_param0>求婚成功！\\\\\\"
		say = say .. "<关闭/@exit>"
	else
		player:show_page(ScriptEngine.param(0), "@error")
		say = say .. "<$_param0>求婚失败！\\\\\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.refuserequest(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:show_page(ScriptEngine.param(0), "@error")
	say = say .. "已经拒绝<$_param0>的求婚请求!\\\\\\"
	say = say .. "<关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.requestaccepted(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:take_equipment(0)
	player:take_gold(1000)
	say = say .. "<$_param0>已经接受了您的求婚请求！\\\\\\"
	say = say .. "<关闭/@exit> "
	return { say = say, page = goto_page, close = close }
end

function M.wantcancel(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "求婚者必须是男性且装备求婚戒指，声望值在5点以上\\"
	say = say .. "如果你的求婚失败，你的求婚戒指会保留下来。\\"
	say = say .. "求婚成功后，你的求婚戒指就会被收走。\\"
	say = say .. "每次求婚收取1000金币手续费，你准备好求婚了吗？\\"
	say = say .. "<准备好了/@agree>\\"
	say = say .. "<没有/@exit>，下次再来\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.agree(player)
	local say = ""
	local goto_page = nil
	local close = false
	goto_page = "marry1"
	return { say = say, page = goto_page, close = close }
end

function M.divorce(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "想要离婚的话你必须支付一根金条，\\"
	say = say .. "而且对方必须在线.\\"
	say = say .. "你确定要离婚吗？\\\\"
	say = say .. "<确定/@leave>\\"
	say = say .. "<不离/@exit>\\"
	say = say .. "<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.leave(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("金条", 1) and 1 or 0)) ~= 0 then
	else
		say = say .. "你没金条,来找我做什么!\\"
		say = say .. "<返回/@main>\\"
		return { say = say, page = goto_page, close = close }
	end
	if ((player.is_married and 1 or 0)) ~= 0 and (((player:unmarry()) and 1 or 0)) ~= 0 then
		player:take_item("金条", 1)
		say = say .. "离婚成功！\\\\"
		say = say .. "<返回/@main>\\"
	else
		say = say .. "你没结婚,来找我做什么!\\"
		say = say .. "<返回/@main>\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.ask(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "前几天我不小心丢了一枚戒指，\\"
	say = say .. "你能帮我找回来吗？\\\\"
	say = say .. "<确定/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
