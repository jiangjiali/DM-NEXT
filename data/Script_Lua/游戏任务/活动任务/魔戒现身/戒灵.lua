-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 戒灵
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "戒灵",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:hour_between(13, 13) and 1 or 0)) ~= 0 then
		say = say .. "\"魔戒现身\"活动正在进行中,我只需要6枚黑暗之戒,最\\"
		say = say .. "先交给我的这6枚戒指的勇士我将借助戒指之力将他们送到魔\\"
		say = say .. "王殿,到时结合这些勇士的力量给它致命的一击就能阻止魔\\"
		say = say .. "王的邪恶计划了,如果一们英雄交了多枚戒指,那么这位英友\\"
		say = say .. "在活动结束前将有多次进入魔王殿的机会.无论夺戒任务\\"
		say = say .. "是否成功,找到并交给\"戒灵\"一枚黑暗之戒的英雄将额外\\"
		say = say .. "获得声望值1点.现在请把你找到的黑暗之戒交给我,我送\\"
		say = say .. "你去魔王殿.\\"
		say = say .. "<给你黑暗之戒/@blackring> <进入魔王殿/@go> <离开/@exit>\\"
	else
		say = say .. "远道而来的英雄啊，请尽力阻止铁血魔王的邪恶阴谋吧！数\\"
		say = say .. "千年前，铁血魔王有十二枚蕴藏着毕生魔力的\"黑暗之戒\"，\\"
		say = say .. "拥有这样戒指就有机会应用铁血魔王的力量，甚至控制整个\\"
		say = say .. "世界。如今，传说中的魔戒纷纷现身，十二枚流失在外的黑\\"
		say = say .. "暗之戒也已经被藤妖大军发现，它们将一路护送这些戒指赶\\"
		say = say .. "赴禁地，妄图使魔王从中获取更多的力量。藤妖大军在路上\\"
		say = say .. "必经妖界禁地，这是我们唯一能够阻止魔王险恶阴谋的机会\\"
		say = say .. "夺取魔王的宝物，我们可以设法给魔王重创！\\"
		say = say .. "<我该怎么做/@howtodo>\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.howtodo(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "藤妖大军出现的时间是每天下午13：00－14：00，请英雄们\\"
	say = say .. "务必从藤妖大军处夺下这些枚“黑暗之戒”并交给我，我需\\"
	say = say .. "要最先交给我的六枚戒指，交给我这六枚戒指的勇士我将借\\"
	say = say .. "助戒指之力将他们送到魔王殿，到时结合这些勇士的力量给\\"
	say = say .. "它致命的一击，就能阻止魔王的邪恶计划了。如果一位英雄\\"
	say = say .. "交了多枚戒指，那么这位英雄在活动结束前将有多次进入魔\\"
	say = say .. "王殿的机会。无论夺戒任务是否成功，找到并交给“戒灵”\\"
	say = say .. "一枚黑暗之戒的英雄将额外获得声望值1点 。\\"
	say = say .. "<离开/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.blackring(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("戒灵.戒指数") == 6 and 1 or 0)) ~= 0 then
		say = say .. "6枚黑暗之戒已找到,你来迟了,明天现来吧!\\"
	elseif ((player:get_var("戒灵.戒指数") < 6 and 1 or 0)) ~= 0 then
		say = say .. "交齐6枚黑暗之戒,我可以召唤出强大的\\"
		say = say .. "铁血魔王,王者之戒等你拿噢.!\\"
		say = say .. "<上交黑暗之戒/@referfingerring>\\"
		say = say .. "<我没有我去找/@exit>\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.referfingerring(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("黑暗之戒", 1) and 1 or 0)) ~= 0 then
		player:take_item("黑暗之戒", 1)
		player:give_credit(1)
		player:set_var("戒灵.戒指数", player:get_var("戒灵.戒指数") + 1)
		ScriptEngine.call(player, "戒灵", "report")
		say = say .. "我已收下你的黑暗之戒,在活动结束前你都可以来找我,我\\"
		say = say .. "帮你进入魔王殿但是我只能帮你进入一次,并且你在里面只\\"
		say = say .. "能呆10个小时,如果活动结束了你再来找我,那么就帮不了\\"
		say = say .. "你什么了,而且黑暗之戒只在当天有效.\\"
		say = say .. "<我马上就要进去/@enter>\\"
		say = say .. "<我呆会再来吧/@exit>\\"
	else
		say = say .. "小伙子你身上没有黑暗之戒,你这是欺骗行为!\\"
		say = say .. "<呵呵!/@exit>\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.enter(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:random_teleport(996)
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.report(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("戒灵.戒指数") == 6 and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg("玩家<$username>找到了第<$戒灵.戒指数>枚黑暗之戒,魔王10秒钟后将出现在远古修炼场!")
		Map.mongen(player, "铁血魔王", 996, 75, 79, 2, 1, "")
	elseif ((player:get_var("戒灵.戒指数") < 6 and 1 or 0)) ~= 0 then
		ScriptEngine.system_msg("玩家<$username>找到了第<$戒灵.戒指数>枚黑暗之戒,当戒灵收集起6枚后,魔王将会出现在远古修炼场!")
	end
	return { say = say, page = goto_page, close = close }
end

function M.mongen(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((Map.monster_count(144, "铁血魔王") == 1 and 1 or 0)) ~= 0 then
		Map.mongen(player, "黑暗藤妖", 144, 107, 268, 69, 3, "")
		Map.mongen(player, "黑暗藤妖", 144, 254, 128, 104, 3, "")
		Map.mongen(player, "黑暗藤妖", 144, 414, 397, 43, 3, "")
		Map.mongen(player, "黑暗藤妖", 144, 397, 66, 36, 3, "")
		Map.clear_monsters(996, "铁血魔王")
	else
		Map.mongen(player, "黑暗藤妖", 144, 107, 268, 69, 3, "")
		Map.mongen(player, "黑暗藤妖", 144, 254, 128, 104, 3, "")
		Map.mongen(player, "黑暗藤妖", 144, 414, 397, 43, 3, "")
		Map.mongen(player, "黑暗藤妖", 144, 397, 66, 36, 3, "")
	end
	return { say = say, page = goto_page, close = close }
end

function M.monclear(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((Map.monster_count(144, "黑暗藤妖") > 0 and 1 or 0)) ~= 0 then
		Map.clear_monsters(144, "黑暗藤妖")
		player:set_var("戒灵.戒指数", "0")
	end
	return { say = say, page = goto_page, close = close }
end

return M
