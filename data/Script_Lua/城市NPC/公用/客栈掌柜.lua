-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 客栈掌柜
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "客栈掌柜",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这里是仓库，可以替你保管很多东西，目前还不收保管\\"
	say = say .. "费，有什么可以先放我这里。为方便大家搜集红、绿、蓝三种\\"
	say = say .. "颜色的宝石以兑换小宝石，隆重推出“宝石仓库”的服务，三\\"
	say = say .. "种颜色的宝石都可以在我这儿存放，服务还是免费的哦。\\"
	say = say .. "<可接任务/@_RW_entry>\\"
	say = say .. "<存放物品/@storage>   <宝石仓库/@_CK_goldsave>\\"
	say = say .. "<取出物品/@getback>   <捆扎物品/@_CK_mbind>\\"
	say = say .. "<快捷存取/@quickstorage>\\"
	say = say .. "<关闭选单/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_entry(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(12) == 4 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "求婚的勇气任务", "落霞岛_仓库")
	elseif ((player:task_step(12) == 5 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "求婚的勇气任务", "落霞岛_仓库1")
	elseif ((player:task_step(25) == 4 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "求婚的勇气任务", "海角_仓库")
	elseif ((player:task_step(25) == 5 and 1 or 0)) ~= 0 then
		ScriptEngine.call(player, "求婚的勇气任务", "海角_仓库1")
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.quickstorage(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你想保管还是取回什么东西呢？\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.storage(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你想保管什么东西呢？\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M._CK_goldsave(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "来来来，只要是红、绿、蓝三种颜色的宝石，放在宝石\\"
	say = say .. "仓库里是可就安全了。不过每种宝石可是只能放200颗。\\"
	say = say .. "多了可就放不下咯。\\"
	say = say .. "<查看宝石数量/@_CK_checkgolditem>\\"
	say = say .. "<存放宝石/@_CK_applystoregem>\\"
	say = say .. "<取出宝石/@_CK_takegold>\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M._CK_checkgolditem(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你现在拥有：\\"
	say = say .. "<$RedGem>颗红宝石\\"
	say = say .. "<$BlueGem>颗蓝宝石\\"
	say = say .. "<$BerylGem>颗绿宝石\\"
	say = say .. "<返回/@_CK_goldsave>"
	return { say = say, page = goto_page, close = close }
end

function M._CK_applystoregem(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "能存放红、绿、蓝三种颜色的宝石。\\"
	say = say .. "<返回/@_CK_goldsave>"
	player:put_item("提供宝石", "@applystoregem")
	return { say = say, page = goto_page, close = close }
end

function M.applystoregem(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:check_using_item_name("红宝石") and 1 or 0)) ~= 0 then
		player:delete_using_item()
		player:set_var("RedGem", player:get_var("RedGem") + 1)
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("username"), "储存红宝石成功")
	elseif ((player:check_using_item_name("蓝宝石") and 1 or 0)) ~= 0 then
		player:delete_using_item()
		player:set_var("BlueGem", player:get_var("BlueGem") + 1)
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("username"), "储存蓝宝石成功")
	elseif ((player:check_using_item_name("绿宝石") and 1 or 0)) ~= 0 then
		player:delete_using_item()
		player:set_var("BerylGem", player:get_var("BerylGem") + 1)
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("username"), "储存绿宝石成功")
	else
		say = say .. "你提供的物品不正确！\\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_takegold(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<取出红宝石/@_CK_applygetredgem>....现有红宝石<$RedGem>颗\\"
	say = say .. "<取出蓝宝石/@_CK_applygetbluegem>....现有蓝宝石<$BlueGem>颗\\"
	say = say .. "<取出绿宝石/@_CK_applygetgreengem>....现有绿宝石<$BerylGem>颗\\"
	say = say .. "<返回/@_CK_goldsave>"
	return { say = say, page = goto_page, close = close }
end

function M._CK_applygetredgem(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("RedGem") > 0 and 1 or 0)) ~= 0 then
		player:input_text("请输入要取出红宝石的数量:", 3, "@TakeRedGem")
	else
		say = say .. "如果我没有看错的话，你的仓库里应该没有那么多红宝石!\\"
		say = say .. "<返回/@_CK_takegold>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.TakeRedGem(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("BAGSPACE") >= player:get_var("inputtext") and 1 or 0)) ~= 0 then
		player:give_item("红宝石", player:get_var("inputtext"))
		player:set_var("RedGem", player:get_var("RedGem") - player:get_var("inputtext"))
	else
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("username"), "你的背包没有空间取红宝石")
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

function M._CK_applygetbluegem(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("BlueGem") > 0 and 1 or 0)) ~= 0 then
		player:input_text("请输入要取出蓝宝石的数量:", 3, "@TakeBlueGem")
	else
		say = say .. "如果我没有看错的话，你的仓库里应该没有那么多蓝宝石!\\"
		say = say .. "<返回/@_CK_takegold>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.TakeBlueGem(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("BAGSPACE") >= player:get_var("inputtext") and 1 or 0)) ~= 0 then
		player:give_item("蓝宝石", player:get_var("inputtext"))
		player:set_var("BlueGem", player:get_var("BlueGem") - player:get_var("inputtext"))
	else
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("username"), "你的背包没有空间取蓝宝石")
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

function M._CK_applygetgreengem(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("BerylGem") > 0 and 1 or 0)) ~= 0 then
		player:input_text("请输入要取出绿宝石的数量:", 3, "@TakeBerylGem")
	else
		say = say .. "如果我没有看错的话，你的仓库里应该没有那么多绿宝石!\\"
		say = say .. "<返回/@_CK_takegold>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.TakeBerylGem(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("BAGSPACE") >= player:get_var("inputtext") and 1 or 0)) ~= 0 then
		player:give_item("绿宝石", player:get_var("inputtext"))
		player:set_var("BerylGem", player:get_var("BerylGem") - player:get_var("inputtext"))
	else
		ScriptEngine.system_msg_ex(Defines.CC_SPECIAL, player:get_var_str("username"), "你的背包没有空间取绿宝石")
	end
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.getback(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你是要把东西拿回去吧？\\"
	say = say .. "从下面的列表里挑吧。\\\\"
	say = say .. "<返 回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M._CK_mbind(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "一看你就是有钱人！\\"
	say = say .. "行，我来帮你，你要干什么呢？\\\\"
	say = say .. "用金条<交换/@_CK_jttojz>金砖\\"
	say = say .. "用金砖<交换/@_CK_jztojt>金条\\"
	say = say .. "用金币<交换/@_CK_changegold>金条 \\"
	say = say .. "用金条<交换/@_CK_changemoney>金币 \\"
	say = say .. "<打包/@_CK_bind> \\"
	say = say .. "<离 开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._CK_jttojz(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 and ((player:has_item("金条", 5) and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:take_item("金条", 5)
		player:give_item("金砖", 1)
		say = say .. "我的生意不错!\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你没有金条还换什么? \\"
		say = say .. "想骗我？走开！ \\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_jztojt(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 and ((player:has_item("金砖", 1) and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:take_item("金砖", 1)
		player:give_item("金条", 5)
		say = say .. "兑换成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你没有金砖还换什么? \\"
		say = say .. "想骗我？走开！ \\\\"
		say = say .. "<返 回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_changegold(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 1002000 and 1 or 0)) ~= 0 then
		player:take_gold(1002000)
		player:give_item("金条", 1)
		say = say .. "兑换成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你的金币不够,还换什么? \\"
		say = say .. "想骗我？走开！ \\\\"
		say = say .. "<返 回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_changemoney(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("金条", 1) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 2000 and 1 or 0)) ~= 0 then
		player:take_item("金条", 1)
		player:add_gold(998000)
		say = say .. "兑换成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main> "
	else
		say = say .. "你没有金条还换什么? \\"
		say = say .. "想骗我？走开！ \\\\"
		say = say .. "<返 回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_bind(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "目前我能捆的只有卷轴和药水 \\"
	say = say .. "你要捆吗？ \\"
	say = say .. "要捆东西需要100金币. \\\\"
	say = say .. "<捆/@_CK_p_bind>药水 \\"
	say = say .. "<捆/@_CK_z_bind>卷书 \\"
	say = say .. "<捆/@_CK_f_bind>道符(大)\\"
	say = say .. "<捆/@_CK_zum_bind5>扎其他物品 \\"
	return { say = say, page = goto_page, close = close }
end

function M._CK_p_bind(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<捆/@_CK_ch_bind1>金创药(大量)\\"
	say = say .. "<捆/@_CK_ma_bind1>魔法药(大量)\\"
	say = say .. "<捆/@_CK_ch_bind2>金创药(中量)\\"
	say = say .. "<捆/@_CK_ma_bind2>魔法药(中量)\\"
	say = say .. "<捆/@_CK_ch_bind3>金创药(小量)\\"
	say = say .. "<捆/@_CK_ma_bind3>魔法药(小量)\\"
	say = say .. "<捆/@_CK_ch_bind4>特级金创药\\"
	say = say .. "<捆/@_CK_ma_bind4>特级魔法药\\"
	say = say .. "<返 回/@_CK_bind>"
	return { say = say, page = goto_page, close = close }
end

function M._CK_ch_bind1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("金创药(大量)", 6) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 100 and 1 or 0)) ~= 0 then
		player:take_item("金创药(大量)", 6)
		player:take_gold(100)
		player:give_item("超级金创药", 1)
		say = say .. "捆绑成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你都没有可以捆的物品，还捆什么? \\"
		say = say .. "等准备好之后，再来找我吧.. \\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_ma_bind1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("魔法药(大量)", 6) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 100 and 1 or 0)) ~= 0 then
		player:take_item("魔法药(大量)", 6)
		player:take_gold(100)
		player:give_item("超级魔法药", 1)
		say = say .. "捆绑成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你都没有可以捆的物品，还捆什么? \\"
		say = say .. "等准备好之后，再来找我吧.. \\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_ch_bind2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("金创药(中量)", 6) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 100 and 1 or 0)) ~= 0 then
		player:take_item("金创药(中量)", 6)
		player:take_gold(100)
		player:give_item("金创药(中)包", 1)
		say = say .. "捆绑成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你都没有可以捆的物品，还捆什么? \\"
		say = say .. "等准备好之后，再来找我吧.. \\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_ma_bind2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("魔法药(中量)", 6) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 100 and 1 or 0)) ~= 0 then
		player:take_item("魔法药(中量)", 6)
		player:take_gold(100)
		player:give_item("魔法药(中)包", 1)
		say = say .. "捆绑成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你都没有可以捆的物品，还捆什么? \\"
		say = say .. "等准备好之后，再来找我吧.. \\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_ch_bind3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("金创药(小量)", 6) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 100 and 1 or 0)) ~= 0 then
		player:take_item("金创药(小量)", 6)
		player:take_gold(100)
		player:give_item("金创药(小)包", 1)
		say = say .. "捆绑成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你都没有可以捆的物品，还捆什么? \\"
		say = say .. "等准备好之后，再来找我吧.. \\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_ma_bind3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("魔法药(小量)", 6) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 100 and 1 or 0)) ~= 0 then
		player:take_item("魔法药(小量)", 6)
		player:take_gold(100)
		player:give_item("魔法药(小)包", 1)
		say = say .. "捆绑成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你都没有可以捆的物品，还捆什么? \\"
		say = say .. "等准备好之后，再来找我吧.. \\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_ch_bind4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("特级金创药", 6) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 100 and 1 or 0)) ~= 0 then
		player:take_item("特级金创药", 6)
		player:take_gold(100)
		player:give_item("特级金创药包", 1)
		say = say .. "捆绑成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你都没有可以捆的物品，还捆什么? \\"
		say = say .. "等准备好之后，再来找我吧.. \\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_ma_bind4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("特级魔法药", 6) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 100 and 1 or 0)) ~= 0 then
		player:take_item("特级魔法药", 6)
		player:take_gold(100)
		player:give_item("特级魔法药包", 1)
		say = say .. "捆绑成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你都没有可以捆的物品，还捆什么? \\"
		say = say .. "等准备好之后，再来找我吧.. \\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_z_bind(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<捆/@_CK_zum_bind1>地牢卷轴\\"
	say = say .. "<捆/@_CK_zum_bind2>随机卷轴 \\"
	say = say .. "<捆/@_CK_zum_bind3>回城卷轴 \\"
	say = say .. "<捆/@_CK_zum_bind4>沙城回城卷轴 \\"
	say = say .. "<返 回/@_CK_bind>"
	return { say = say, page = goto_page, close = close }
end

function M._CK_zum_bind1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("地牢卷轴", 6) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 100 and 1 or 0)) ~= 0 then
		player:take_item("地牢卷轴", 6)
		player:take_gold(100)
		player:give_item("地牢逃脱卷包", 1)
		say = say .. "捆绑成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你都没有可以捆的物品，还捆什么? \\"
		say = say .. "等准备好之后，再来找我吧.. \\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_zum_bind2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("随机卷轴", 6) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 100 and 1 or 0)) ~= 0 then
		player:take_item("随机卷轴", 6)
		player:take_gold(100)
		player:give_item("随机传送卷包", 1)
		say = say .. "捆绑成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你都没有可以捆的物品，还捆什么? \\"
		say = say .. "等准备好之后，再来找我吧.. \\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_zum_bind3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("回城卷轴", 6) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 100 and 1 or 0)) ~= 0 then
		player:take_item("回城卷轴", 6)
		player:take_gold(100)
		player:give_item("回城卷包", 1)
		say = say .. "捆绑成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你都没有可以捆的物品，还捆什么? \\"
		say = say .. "等准备好之后，再来找我吧.. \\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_zum_bind4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("沙城回城卷", 6) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 100 and 1 or 0)) ~= 0 then
		player:take_item("沙城回城卷", 6)
		player:take_gold(100)
		player:give_item("沙城回城卷包", 1)
		say = say .. "捆绑成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你都没有可以捆的物品，还捆什么? \\"
		say = say .. "等准备好之后，再来找我吧.. \\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_f_bind(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("道符（大）", 6) and 1 or 0)) ~= 0 and ((player:get_var("gold") > 100 and 1 or 0)) ~= 0 then
		player:take_item("道符（大）", 6)
		player:take_gold(100)
		player:give_item("道符包", 1)
		say = say .. "捆绑成功！"
		say = say .. "\\\\"
		say = say .. "<返 回/@main>"
	else
		say = say .. "你都没有可以捆的物品，还捆什么? \\"
		say = say .. "等准备好之后，再来找我吧.. \\\\"
		say = say .. "<离 开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._CK_zum_bind5(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请选择您要打包的物品:\\"
	say = say .. "<5级宝宝卷轴/@_CK_spebind&5级宝宝卷轴>    <6级宝宝卷轴/@_CK_spebind&6级宝宝卷轴>     <7级宝宝卷轴/@_CK_spebind&7级宝宝卷轴>\\"
	say = say .. "<8级宝宝卷轴/@_CK_spebind&8级宝宝卷轴>    <9级宝宝卷轴/@_CK_spebind&9级宝宝卷轴>     <修罗军团封印/@_CK_spebind&修罗军团封印>\\"
	say = say .. "<豹粮/@_CK_spebind&豹粮> \\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
