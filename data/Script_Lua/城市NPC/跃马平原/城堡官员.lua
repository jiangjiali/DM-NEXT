-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 城堡官员
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "城堡官员",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:is_sabuk_owner() and 1 or 0)) ~= 0 then
		goto_page = "main1"
	else
		say = say .. "这个城堡的库存货币是<$SABUKTOTALGOLD金币, 今天的收入是 \\"
		say = say .. "<$SABUKTODAYINCOME>金币.\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.main1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这个城堡的库存货币是<$SABUKTOTALGOLD>金币, 今天的收入是 \\"
	say = say .. "<$SABUKTODAYINCOME>金币.\\"
	say = say .. "<取回资金/@d_withdrawal>    <存储资金/@d_receipts>\\"
	say = say .. "<申请城主雕像/@diaoxiang>  <编辑行会宣言/@xuanyan>\\"
	say = say .. "<开关城门命令/@treatdoor>  \\"
	say = say .. "<城门城墙维修命令/@repaircastle>\\"
	say = say .. "<门卫的命令/@guardcmd>   <修改沙城折扣率/@sabukcess>\\"
	say = say .. "<关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.d_withdrawal(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:is_sabuk_owner() and 1 or 0)) ~= 0 then
		player:get_sabuk_gold(player:get_var("SABUKTOTALGOLD"))
		say = say .. "你取走了<$SABUKTOTALGOLD>金币\\"
		say = say .. "<返回/@main1>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.d_receipts(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:is_sabuk_owner() and 1 or 0)) ~= 0 then
		player:input_text("输入你想要存储的资金", 7, "@guildgold")
	end
	return { say = say, page = goto_page, close = close }
end

function M.guildgold(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > player:get_var("inputtext") and 1 or 0)) ~= 0 then
		player:put_sabuk_gold(player:get_var("inputtext"))
		say = say .. "你存储了<$inputtext>金币\\"
		say = say .. "<返回/@main1>"
	else
		say = say .. "你的金币不够\\"
		say = say .. "<返回/@main1>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.diaoxiang(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:is_sabuk_owner() and 1 or 0)) ~= 0 then
		goto_page = "diaoxiangok"
	else
		say = say .. "对不起，你还没有申请沙城城主雕像，请先申请雕像！\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.diaoxiangok(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:set_sabuk_master()) and 1 or 0)) ~= 0 then
		say = say .. "申请沙城主雕像成功!\\"
	else
		say = say .. "你已经申请过沙城城主雕像.\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.treatdoor(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "当前大门是<$SABUKDOORSTATE>状态.\\\\"
	say = say .. "<关闭大门./@closemaindoor>\\"
	say = say .. "<打开大门./@openmaindoor>\\"
	say = say .. "<返回/@main1>\\"
	return { say = say, page = goto_page, close = close }
end

function M.closemaindoor(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "大门被关闭了.\\\\"
	say = say .. "<返回/@treatdoor>\\"
	ScriptEngine.sabuk_door(0)
	return { say = say, page = goto_page, close = close }
end

function M.openmaindoor(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "大门被打开了.\\\\"
	say = say .. "<返回/@treatdoor>\\"
	ScriptEngine.sabuk_door(1)
	return { say = say, page = goto_page, close = close }
end

function M.repaircastle(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你想去哪里修理 ?\\\\"
	say = say .. "<修理大门./@repairdoor>\\"
	say = say .. "<修理城墙./@repairwalls>\\"
	say = say .. "<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.repairdoor(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 100000 and 1 or 0)) ~= 0 then
		player:take_gold(100000)
		ScriptEngine.repair_sabuk_gate()
		say = say .. "大门修理好了.\\"
		say = say .. "<关闭/@exit>"
	else
		say = say .. "您没有足够的金币来修理大门.\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.repairwalls(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<修理左城墙./@repairleftwall>\\"
	say = say .. "<修理中城墙./@repaircenterwall>\\"
	say = say .. "<修理右城墙./@repairrightwall>\\"
	say = say .. "<返回/@repaircastle>\\"
	return { say = say, page = goto_page, close = close }
end

function M.repairleftwall(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 200000 and 1 or 0)) ~= 0 then
		player:take_gold(200000)
		ScriptEngine.repair_sabuk_wall(1)
		say = say .. "左城墙修理好了.\\"
		say = say .. "<关闭/@exit>"
	else
		say = say .. "您没有足够的金币来修理城墙.\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.repaircenterwall(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 200000 and 1 or 0)) ~= 0 then
		player:take_gold(200000)
		ScriptEngine.repair_sabuk_wall(2)
		say = say .. "中城墙修理好了.\\"
		say = say .. "<关闭/@exit>"
	else
		say = say .. "您没有足够的金币来修理城墙.\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.repairrightwall(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 200000 and 1 or 0)) ~= 0 then
		player:take_gold(200000)
		ScriptEngine.repair_sabuk_wall(3)
		say = say .. "右城墙修理好了.\\"
		say = say .. "<关闭/@exit>"
	else
		say = say .. "您没有足够的金币来修理城墙.\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.guardcmd(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请对卫士指定你的命令.\\\\"
	say = say .. "<雇佣弓箭手./@hirearchers>\\"
	say = say .. "<改变攻击命令./@commandorder>\\"
	say = say .. "<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.hirearchers(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

function M.commandorder(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

function M.d_guildlogo(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

function M.sabukcess(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:is_sabuk_owner() and 1 or 0)) ~= 0 then
		player:input_text("请输入你要调整的沙城折扣率(最高为30%)", 2, "@changecess")
	end
	return { say = say, page = goto_page, close = close }
end

function M.changecess(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:is_sabuk_owner() and 1 or 0)) ~= 0 and ((player:get_var("inputtext") < 31 and 1 or 0)) ~= 0 then
		ScriptEngine.set_sabuk_rebate(player:get_var("inputtext"))
		say = say .. "沙城折扣率调整成功\\"
		say = say .. "你设置的沙城折扣率为<$inputtext>%\\"
		say = say .. "<返回/@main>\\"
	else
		say = say .. "你输入的数值过高\\"
		say = say .. "<返回/@main>\\"
	end
	return { say = say, page = goto_page, close = close }
end

return M
