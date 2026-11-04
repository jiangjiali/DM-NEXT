-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 武馆教头
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "武馆教头",
	version = "",
	trade_types = {30},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你好,有什么能为你效劳？要拜师的话随时可以找我。\\"
	say = say .. "<可接任务/@_RW_entry>\\"
	say = say .. "<了解拜师系统相关知识/@ask>\\"
	say = say .. "<我要拜师/@needteacher>           <取消拜师请求/@cancel>\\"
	say = say .. "<解除师徒关系/@left>        <领取荣誉勋章/@get>\\"
	say = say .. "<修理荣誉勋章/@s_repair>        <查询声望/@check>\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_entry(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "王都送信任务", "中州_武馆")
	return { say = say, page = goto_page, close = close }
end

function M.ask(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "27级以下的玩家可以拜28级以上的玩家为师。\\"
	say = say .. "徒弟等级升高后师傅会得到相应的声望值，\\"
	say = say .. "有了声望值就可以做一些比较特殊的事情了。\\"
	say = say .. "徒弟35级将自动毕业出师，但注意如果没有\\"
	say = say .. "毕业或者还没解除师徒关系的人是不能再收\\"
	say = say .. "徒弟的。另外必须双方在一起时才能拜师。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.needteacher(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<$username>如果你想要拜师的话，请你要拜的师傅到场，\\"
	say = say .. "请点击下面的“拜师”选项，\\"
	say = say .. "并输入对方的名字。\\"
	say = say .. "<拜师/@inputname>\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.inputname(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("level") > 27 and 1 or 0)) ~= 0 then
		say = say .. "你已经超过了拜师的级别了,\\"
		return { say = say, page = goto_page, close = close }
	end
	if ((player.has_master and 1 or 0)) ~= 0 then
		say = say .. "你已经超过了拜师的级别了,\\"
		say = say .. "或者你已拜过师了!\\"
	else
		player:input_text("请输入师父的名字:", 16, "@postrequest")
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

function M.postrequest(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((ScriptEngine.is_online(player:get_var_str("inputtext")) and 1 or 0)) ~= 0 then
		say = say .. "请求已发送,请耐心等待!\\\\"
		player:show_page(player:get_var_str("inputtext"), "@checkandrequest1")
	else
		say = say .. "<$inputtext>不在线，无法接受您的拜师请求。\\\\"
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
	if ((player.has_master and 1 or 0)) ~= 0 then
		player:show_page(player:get_var_str("requeststudent"), "@error")
		close = true
	end
	if ((player:get_var("level") < 28 and 1 or 0)) ~= 0 then
		player:show_page(player:get_var_str("requeststudent"), "@error")
		close = true
	end
	if ((player:can_take_student() and 1 or 0)) ~= 0 then
	else
		player:show_page(player:get_var_str("requeststudent"), "@error")
		close = true
	end
	say = say .. "<$requeststudent>想拜您为师，请确认．．．\\\\"
	say = say .. "<接受/@acceptrequest&$requeststudent>\\"
	say = say .. "<拒绝/@refuserequest&$requeststudent>\\"
	return { say = say, page = goto_page, close = close }
end

function M.acceptrequest(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:add_student(ScriptEngine.param(0))) and 1 or 0)) ~= 0 then
		player:show_page(ScriptEngine.param(0), "@requestaccepted")
		say = say .. "<$_param0>拜师成功！\\\\\\"
		say = say .. "<关闭/@exit>"
	else
		player:show_page(ScriptEngine.param(0), "@error")
		say = say .. "<$_param0>拜师失败！\\\\\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.refuserequest(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:show_page(ScriptEngine.param(0), "@error")
	say = say .. "已经拒绝<$_param0>的拜师请求!\\\\\\"
	say = say .. "<关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.requestaccepted(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<$_param0>已经接受了您的拜师请求！\\\\\\"
	say = say .. "<关闭/@exit> "
	return { say = say, page = goto_page, close = close }
end

function M.left(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "徒弟脱离师父要交五万金币，\\"
	say = say .. "师傅开除徒弟需要十万金币。\\"
	say = say .. "你是否需要解除师徒关系？\\"
	say = say .. "<是的/@leftteacher>\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.leftteacher(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<我要脱离师父/@leftmaster>\\"
	say = say .. "<我要开除徒弟/@delstudent>\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.leftmaster(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") < 50000 and 1 or 0)) ~= 0 then
		say = say .. "你身上的钱不够,我不能帮你!\\"
		return { say = say, page = goto_page, close = close }
	end
	if ((player.has_master and 1 or 0)) ~= 0 then
		player:leave_teacher()
		player:take_gold(50000)
		say = say .. "师徒关系解除成功!\\"
	else
		say = say .. "现在你没有师徒关系。\\\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.delstudent(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") < 100000 and 1 or 0)) ~= 0 then
		say = say .. "你身上的钱不够,我不能帮你!\\"
	else
		player:input_text("请输入徒弟的名字:", 16, "@studentname")
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

function M.studentname(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:delete_student(player:get_var_str("inputtext"))) and 1 or 0)) ~= 0 then
		player:take_gold(100000)
		say = say .. "师徒关系解除成功!\\"
	else
		say = say .. "师徒关系解除失败!\\\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.get(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你想付出多少声望点数换取勋章？\\"
	say = say .. "付出越多得到好勋章的机会越大。\\\\"
	say = say .. "<10点/@nomedal1>\\"
	say = say .. "<20点/@nomedal2>\\"
	say = say .. "<30点/@nomedal3>\\"
	say = say .. "<40点/@nomedal4>\\"
	say = say .. "<50点/@nomedal5>\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.nomedal1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("credit") > 9 and 1 or 0)) ~= 0 then
		player:take_credit(10)
		goto_page = "givenomedal1"
	else
		say = say .. "没有声望也想来骗勋章.快走开\\"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.givenomedal1(player)
	local say = ""
	local goto_page = nil
	local close = false
	do
		local __sel = ScriptEngine.range_random(2, 5)
		if __sel == 2 then
			player:give_item("荣誉勋章12号", 1)
			say = say .. "你获得了荣誉勋章12号!\\"
			say = say .. "<返回/@main>"
		elseif __sel == 3 then
			player:give_item("荣誉勋章13号", 1)
			say = say .. "你获得了荣誉勋章13号!\\"
			say = say .. "<返回/@main>"
		elseif __sel == 4 then
			player:give_item("荣誉勋章14号", 1)
			say = say .. "你获得了荣誉勋章14号!\\"
			say = say .. "<返回/@main>"
		elseif __sel == 5 then
			player:give_item("荣誉勋章15号", 1)
			say = say .. "你获得了荣誉勋章15号!\\"
			say = say .. "<返回/@main"
		else
			player:give_item("荣誉勋章11号", 1)
			say = say .. "你获得了荣誉勋章11号!\\"
			say = say .. "<返回/@main>"
		end
	end
	return { say = say, page = goto_page, close = close }
end

function M.nomedal2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("credit") > 19 and 1 or 0)) ~= 0 then
		player:take_credit(20)
		goto_page = "givenomedal2"
	else
		say = say .. "没有声望也想来骗勋章.快走开\\"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.givenomedal2(player)
	local say = ""
	local goto_page = nil
	local close = false
	do
		local __sel = ScriptEngine.range_random(2, 5)
		if __sel == 2 then
			player:give_item("荣誉勋章22号", 1)
			say = say .. "你获得了荣誉勋章22号!\\"
			say = say .. "<返回/@main>"
		elseif __sel == 3 then
			player:give_item("荣誉勋章23号", 1)
			say = say .. "你获得了荣誉勋章23号!\\"
			say = say .. "<返回/@main>"
		elseif __sel == 4 then
			player:give_item("荣誉勋章24号", 1)
			say = say .. "你获得了荣誉勋章24号!\\"
			say = say .. "<返回/@main>"
		elseif __sel == 5 then
			player:give_item("荣誉勋章25号", 1)
			say = say .. "你获得了荣誉勋章25号!\\"
			say = say .. "<返回/@main"
		else
			player:give_item("荣誉勋章21号", 1)
			say = say .. "你获得了荣誉勋章21号!\\"
			say = say .. "<返回/@main>"
		end
	end
	return { say = say, page = goto_page, close = close }
end

function M.nomedal3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("credit") > 29 and 1 or 0)) ~= 0 then
		player:take_credit(30)
		goto_page = "givenomedal3"
	else
		say = say .. "没有声望也想来骗勋章.快走开\\"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.givenomedal3(player)
	local say = ""
	local goto_page = nil
	local close = false
	do
		local __sel = ScriptEngine.range_random(2, 5)
		if __sel == 2 then
			player:give_item("荣誉勋章32号", 1)
			say = say .. "你获得了荣誉勋章32号!\\"
			say = say .. "<返回/@main>"
		elseif __sel == 3 then
			player:give_item("荣誉勋章33号", 1)
			say = say .. "你获得了荣誉勋章33号!\\"
			say = say .. "<返回/@main>"
		elseif __sel == 4 then
			player:give_item("荣誉勋章34号", 1)
			say = say .. "你获得了荣誉勋章34号!\\"
			say = say .. "<返回/@main>"
		elseif __sel == 5 then
			player:give_item("荣誉勋章35号", 1)
			say = say .. "你获得了荣誉勋章35号!\\"
			say = say .. "<返回/@main"
		else
			player:give_item("荣誉勋章31号", 1)
			say = say .. "你获得了荣誉勋章31号!\\"
			say = say .. "<返回/@main>"
		end
	end
	return { say = say, page = goto_page, close = close }
end

function M.nomedal4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("credit") > 39 and 1 or 0)) ~= 0 then
		player:take_credit(40)
		goto_page = "givenomedal4"
	else
		say = say .. "没有声望也想来骗勋章.快走开\\"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.givenomedal4(player)
	local say = ""
	local goto_page = nil
	local close = false
	do
		local __sel = ScriptEngine.range_random(2, 5)
		if __sel == 2 then
			player:give_item("荣誉勋章42号", 1)
			say = say .. "你获得了荣誉勋章42号!\\"
			say = say .. "<返回/@main>"
		elseif __sel == 3 then
			player:give_item("荣誉勋章43号", 1)
			say = say .. "你获得了荣誉勋章43号!\\"
			say = say .. "<返回/@main>"
		elseif __sel == 4 then
			player:give_item("荣誉勋章44号", 1)
			say = say .. "你获得了荣誉勋章44号!\\"
			say = say .. "<返回/@main>"
		elseif __sel == 5 then
			player:give_item("荣誉勋章45号", 1)
			say = say .. "你获得了荣誉勋章45号!\\"
			say = say .. "<返回/@main"
		else
			player:give_item("荣誉勋章41号", 1)
			say = say .. "你获得了荣誉勋章41号!\\"
			say = say .. "<返回/@main>"
		end
	end
	return { say = say, page = goto_page, close = close }
end

function M.nomedal5(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("credit") > 49 and 1 or 0)) ~= 0 then
		player:take_credit(50)
		goto_page = "givenomedal5"
	else
		say = say .. "没有声望也想来骗勋章.快走开\\"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.givenomedal5(player)
	local say = ""
	local goto_page = nil
	local close = false
	do
		local __sel = ScriptEngine.range_random(2, 5)
		if __sel == 2 then
			player:give_item("荣誉勋章52号", 1)
			say = say .. "你获得了荣誉勋章52号!\\"
			say = say .. "<返回/@main>"
		elseif __sel == 3 then
			player:give_item("荣誉勋章53号", 1)
			say = say .. "你获得了荣誉勋章53号!\\"
			say = say .. "<返回/@main>"
		elseif __sel == 4 then
			player:give_item("荣誉勋章54号", 1)
			say = say .. "你获得了荣誉勋章54号!\\"
			say = say .. "<返回/@main>"
		elseif __sel == 5 then
			player:give_item("荣誉勋章55号", 1)
			say = say .. "你获得了荣誉勋章55号!\\"
			say = say .. "<返回/@main"
		else
			player:give_item("荣誉勋章51号", 1)
			say = say .. "你获得了荣誉勋章51号!\\"
			say = say .. "<返回/@main>"
		end
	end
	return { say = say, page = goto_page, close = close }
end

function M.s_repair(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要修理荣誉勋章吗？\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

M["~s_repair"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "荣誉勋章已经修理好了！\\\\"
	say = say .. "<返 回/@main> "
	return { say = say, page = goto_page, close = close }
end

function M.check(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你目前的声望是<$credit>点。\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
