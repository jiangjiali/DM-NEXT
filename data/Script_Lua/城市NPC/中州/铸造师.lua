-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 铸造师
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "铸造师",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "每天你可以接取5个任务，每完成一个任务你都能获得部分极\\"
	say = say .. "品修炼值奖赏，如果能够完成全部5个任务，更能获得大量的\\"
	say = say .. "极品修炼值与金币奖励！\\"
	say = say .. "<开始武器升级/@upgrade1>     <取回升级武器/@getbackupgnow>\\"
	say = say .. "<每日灭魔任务/@TaskMSW>     <升级极品装备/@updsp>    <二次升级极品/@up2dsp>\\"
	say = say .. "<矿石合成武器/@@weaponcompound>     <超级武器合成/@@supercompound>\\"
	say = say .. "<退出/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.upgrade1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "看上去你确实想要升级你的武器\\"
	say = say .. "给我看你的武器,升级价格是10000金币\\"
	say = say .. "修炼这个武器需要原料<黑铁矿石/@biron>,<饰品/@etc>,<武器/@weapon>\\"
	say = say .. "和 <金币/@gold>.你确定要这么做吗？\\"
	say = say .. "别的原料你可以使用你包内的物品\\"
	say = say .. "你想好了吗？\\\\"
	say = say .. "<确认/@confirmupgrade>\\"
	say = say .. "<取消/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.biron(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你可以在矿山里采到黑铁矿石。\\"
	say = say .. "如果你想把武器锤炼的好一点，\\"
	say = say .. "黑铁矿石的纯度越高越好。\\"
	say = say .. "顺便请记得，在修炼期间如果没有足够数\\"
	say = say .. "量的黑色铁矿，那怕你的矿石纯度再高\\"
	say = say .. "结果也好不到哪里去。\\\\"
	say = say .. "<返回/@upgrade>"
	return { say = say, page = goto_page, close = close }
end

function M.etc(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "饰品，项链，手镯\\"
	say = say .. "当你的武器融入了这些东西的属性的时候，\\"
	say = say .. "就成了更高等级的好兵器。\\"
	say = say .. "如果你给我的原料比较好的话，升级会顺利一些；\\"
	say = say .. "要是你给的东西很糟糕，那可能会失败，\\"
	say = say .. "除非你有很好的运气\\\\"
	say = say .. "<返回/@upgrade>"
	return { say = say, page = goto_page, close = close }
end

function M.weapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "只能对武器进行升级\\"
	say = say .. "如果你想要升级武器\\"
	say = say .. "请给我你携带的武器 ...\\\\"
	say = say .. "<返回/@upgrade>"
	return { say = say, page = goto_page, close = close }
end

function M.gold(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你的钱太少了...\\"
	say = say .. "你真的认为我价值就这么点？\\"
	say = say .. "这个价格我不给你做。 ..\\\\"
	say = say .. "<返回/@upgrade>"
	return { say = say, page = goto_page, close = close }
end

function M.confirmupgrade(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "给我看你想用来升级<$weapon>的原料\\"
	say = say .. "我会自己从你的包里取出饰品和黑铁矿石来。\\"
	say = say .. "如果你有重要的东西，请你存在仓库后再来。\\\\"
	say = say .. "<请求修炼/@upgradenow>\\"
	say = say .. "<过会再来/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.upgradenow(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_upgrade_weapon() and 1 or 0)) ~= 0 then
		say = say .. "您已经有一件武器在我这里，请取回后再升级其他武器。\\"
	else
		goto_page = "doupgrade"
	end
	return { say = say, page = goto_page, close = close }
end

function M.doupgrade(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 9999 and 1 or 0)) ~= 0 and ((player:has_item("黑铁矿石", 1) and 1 or 0)) ~= 0 then
		goto_page = "doupgrade1"
	else
		say = say .. "请你下次来的时候， \\"
		say = say .. "准备好所有的矿石，武器和饰品,金钱。 \\"
		say = say .. "当然，我的工作才是最基本的...\\\\"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.doupgrade1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:upgrade_weapon_do() and 1 or 0)) ~= 0 then
		player:take_gold(10000)
		say = say .. "我会把它弄得像新的一样，\\"
		say = say .. "请过段时间后再来取 \\"
		say = say .. "<返回/@main>\\"
	else
		say = say .. "材料不够。请你下次来的时候， \\"
		say = say .. "准备好所有的矿石，武器和饰品。 \\"
		say = say .. "当然，我的工作才是最基本的...\\\\"
		say = say .. "<返回/@main>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.getbackupgnow(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_upgrade_weapon() and 1 or 0)) ~= 0 then
		goto_page = "takeupgrade"
	else
		say = say .. "以前你是不是寄存了很多东西?\\"
		say = say .. "如果你找我是为了取回你很\\"
		say = say .. "久前寄存在这里的物品，\\"
		say = say .. "那你还是回去吧，我可记\\"
		say = say .. "不起来了，这也过去太长时间了……\\\\"
		say = say .. "<返回/@main>\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.takeupgrade(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:upgrade_weapon_take() and 1 or 0)) ~= 0 then
		say = say .. "就这样了,我尽我最大努力锤炼了你的武器,结果是否<成功/@success>\\"
		say = say .. "只有在你使用过一次后才知道，出去试试吧。\\\\"
		say = say .. "<退出/@exit>\\"
	else
		say = say .. "以前你是不是寄存了很多东西?\\"
		say = say .. "如果你找我是为了取回你很\\"
		say = say .. "久前寄存在这里的物品，\\"
		say = say .. "那你还是回去吧，我可记\\"
		say = say .. "不起来了，这也过去太长时间了……\\\\"
		say = say .. "<返回/@main>\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.updsp(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请选择要升级的属性.\\"
	say = say .. "<防御/@ac2>   <魔防/@mac2> \\"
	say = say .. "<攻击/@dc2>   <魔法/@mc2>   <道术/@sc2> \\"
	say = say .. "<武器刻名/@renameweapon>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.ac2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请提供您要升级的首饰"
	player:put_item("请放入装备:", "@upgradeac2")
	return { say = say, page = goto_page, close = close }
end

function M.upgradeac2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("forgerate") > 50000 and 1 or 0)) ~= 0 then
		player:take_forge_point(50000)
		player:upgrade_pet_item("ac2=+1")
		say = say .. "首饰升级成功!\\\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你的极品修炼值不够\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mac2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请提供您要升级的首饰"
	player:put_item("请放入装备:", "@upgrademac2")
	return { say = say, page = goto_page, close = close }
end

function M.upgrademac2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("forgerate") > 50000 and 1 or 0)) ~= 0 then
		player:take_forge_point(50000)
		player:upgrade_pet_item("mac2=+1")
		say = say .. "首饰升级成功!\\\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你的极品修炼值不够\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.dc2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请提供您要升级的首饰"
	player:put_item("请放入装备:", "@upgradedc2")
	return { say = say, page = goto_page, close = close }
end

function M.upgradedc2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("forgerate") > 50000 and 1 or 0)) ~= 0 then
		player:take_forge_point(50000)
		player:upgrade_pet_item("dc2=+1")
		say = say .. "首饰升级成功!\\\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你的极品修炼值不够\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.mc2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请提供您要升级的首饰"
	player:put_item("请放入装备:", "@upgrademc2")
	return { say = say, page = goto_page, close = close }
end

function M.upgrademc2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("forgerate") > 50000 and 1 or 0)) ~= 0 then
		player:take_forge_point(50000)
		player:upgrade_pet_item("mc2=+1")
		say = say .. "首饰升级成功!\\\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你的极品修炼值不够\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.sc2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请提供您要升级的首饰"
	player:put_item("请放入装备:", "@upgradesc2")
	return { say = say, page = goto_page, close = close }
end

function M.upgradesc2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("forgerate") > 50000 and 1 or 0)) ~= 0 then
		player:take_forge_point(50000)
		player:upgrade_pet_item("sc2=+1")
		say = say .. "首饰升级成功!"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你的极品修炼值不够\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.renameweapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:input_text("请输入你想要的武器名字(3个汉字以内):", 6, "@weaponself")
	return { say = say, page = goto_page, close = close }
end

function M.weaponself(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "请提供您要刻名的武器"
	player:put_item("请放入武器:", "@upgradeweapon")
	return { say = say, page = goto_page, close = close }
end

function M.upgradeweapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("ui_stdmode") == 5 and 1 or 0)) ~= 0 and ((player:get_var("forgerate") > 30000 and 1 or 0)) ~= 0 then
		player:format_string("vstr", "name=<$inputtext><$ui_name>")
		player:take_forge_point(30000)
		player:upgrade_pet_item(player:get_var_str("vstr"))
		say = say .. "武器刻名成功\\\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你提供的不是武器,我无法帮您刻名!\\"
		say = say .. "你的极品修炼值不够\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.TaskMSW(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_task(2) and 1 or 0)) ~= 0 then
		goto_page = "whitesnake"
	elseif ((player:has_task(3) and 1 or 0)) ~= 0 then
		goto_page = "gundaoshou"
	elseif ((player:has_task(4) and 1 or 0)) ~= 0 then
		goto_page = "zhanjiang"
	elseif ((player:has_task(5) and 1 or 0)) ~= 0 then
		goto_page = "nimodiaoxian"
	elseif ((player:has_task(6) and 1 or 0)) ~= 0 then
		goto_page = "tengyao"
	elseif ((player:has_task(7) and 1 or 0)) ~= 0 then
		goto_page = "tongling"
	else
		goto_page = "accepttask"
	end
	return { say = say, page = goto_page, close = close }
end

function M.whitesnake(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(2) == 4 and 1 or 0)) ~= 0 then
		player:add_forge_point(1000)
		player:delete_task(2)
		player:add_gold(20000)
		say = say .. "这1000的极品修炼值是做任务的奖励\\\\"
		say = say .. "<退出/@exit>"
	else
		say = say .. "年轻人,你的任务还没有完成,完成了再来找我吧\\\\"
		say = say .. "<退出/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.gundaoshou(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(3) == 21 and 1 or 0)) ~= 0 then
		player:add_forge_point(1500)
		player:delete_task(3)
		player:add_gold(20000)
		say = say .. "这1500的极品修炼值是做任务的奖励\\\\"
		say = say .. "<退出/@exit>"
	else
		say = say .. "年轻人,你的任务还没有完成,完成了再来找我吧\\\\"
		say = say .. "<退出/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.zhanjiang(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(4) == 16 and 1 or 0)) ~= 0 then
		player:add_forge_point(1100)
		player:delete_task(4)
		player:add_gold(20000)
		say = say .. "这1100的极品修炼值是做任务的奖励\\\\"
		say = say .. "<退出/@exit>"
	else
		say = say .. "年轻人,你的任务还没有完成,完成了再来找我吧\\\\"
		say = say .. "<退出/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.nimodiaoxian(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(5) == 16 and 1 or 0)) ~= 0 then
		player:add_forge_point(1100)
		player:delete_task(5)
		player:add_gold(20000)
		say = say .. "这1100的极品修炼值是做任务的奖励\\\\"
		say = say .. "<退出/@exit>"
	else
		say = say .. "年轻人,你的任务还没有完成,完成了再来找我吧\\\\"
		say = say .. "<退出/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.tengyao(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(6) == 16 and 1 or 0)) ~= 0 then
		player:add_forge_point(1100)
		player:delete_task(6)
		player:add_gold(20000)
		say = say .. "这1100的极品修炼值是做任务的奖励\\\\"
		say = say .. "<退出/@exit>"
	else
		say = say .. "年轻人,你的任务还没有完成,完成了再来找我吧\\\\"
		say = say .. "<退出/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.tongling(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(7) == 4 and 1 or 0)) ~= 0 then
		player:add_forge_point(900)
		player:delete_task(7)
		player:add_gold(20000)
		say = say .. "这900的极品修炼值是做任务的奖励\\\\"
		say = say .. "<退出/@exit>"
	else
		say = say .. "年轻人,你的任务还没有完成,完成了再来找我吧\\\\"
		say = say .. "<退出/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.accepttask(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<极品修炼值任务/@forgerate>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.forgerate(player)
	local say = ""
	local goto_page = nil
	local close = false
	do
		local __sel = ScriptEngine.range_random(1, 6)
		if __sel == 1 then
			player:add_task(2)
			ScriptEngine.reload_task()
			say = say .. "杀死3只白蛇妖\\\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 2 then
			player:add_task(3)
			ScriptEngine.reload_task()
			say = say .. "剿灭20只滚刀手\\\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 3 then
			player:add_task(4)
			ScriptEngine.reload_task()
			say = say .. "剿灭15个尸卫战将\\\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 4 then
			player:add_task(5)
			ScriptEngine.reload_task()
			say = say .. "剿灭15个逆魔雕像\\\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 5 then
			player:add_task(6)
			ScriptEngine.reload_task()
			say = say .. "剿灭15个藤妖\\\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 6 then
			player:add_task(7)
			ScriptEngine.reload_task()
			say = say .. "剿灭3个兽骑统领\\\\"
			say = say .. "<好的/@exit>"
		end
	end
	return { say = say, page = goto_page, close = close }
end

return M
