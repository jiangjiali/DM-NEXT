-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 英雄守护神
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "英雄守护神",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "年轻的英雄啊，你能够在这里找到我，足以证明我们之\\"
	say = say .. "间有缘。既然有缘相遇，就让我来帮助你实现一个心愿吧。\\"
	say = say .. "说吧，你想要实现什么样的愿望？\\\\"
	say = say .. "<我要财富/@Treasure>  <我要经验/@Experience>  <我要武器/@Weapon>\\"
	say = say .. "<我要战袍/@Clothing>  <我要饰品/@Adornment>  <我要升级/@Level>\\"
	say = say .. "<我要宝石/@Gold>\\<我要放弃愿望/@Giveup>\\"
	say = say .. "<真的这么厉害？我看是假的吧……/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.Treasure(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要财富啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望。\\"
	say = say .. "不过，愿望的实现结果也有好坏之分，到底会如何？就\\"
	say = say .. "要看你的诚意和运气了。你将可能获得：\\"
	say = say .. "一、20万金币；二、30万金币；三、50万金币；\\"
	say = say .. "四、80万金币；五、 1根金条；六、 1块金砖\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantTreasure>   <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_Treasure>"
	return { say = say, page = goto_page, close = close }
end

function M.HowFindLongZhu(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "“一星珠”散落在各大地表\\"
	say = say .. "“二星珠”散落在将军坟\\"
	say = say .. "“三星珠”散落在逆魔古刹\\"
	say = say .. "“四星珠”散落在机关洞\\"
	say = say .. "“五星珠”散落在蛇洞\\"
	say = say .. "“六星珠”散落在通天塔\\"
	say = say .. "“七星珠”散落在铁血魔城\\"
	say = say .. "你现在已经知道了七颗龙珠的秘密，快去找到它们，实现你的愿望吧！\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.IWantTreasure(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你已经许过愿望了，快去寻找龙珠吧！\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_Treasure(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "givemoney"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.givemoney(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		say = say .. "你真幸运,获得了200000金币!\\\\"
		player:add_gold(200000)
	else
		goto_page = "gold30W"
	end
	return { say = say, page = goto_page, close = close }
end

function M.gold30W(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		say = say .. "你真幸运,获得了300000金币!\\\\"
		player:add_gold(300000)
	else
		goto_page = "gold50W"
	end
	return { say = say, page = goto_page, close = close }
end

function M.gold50W(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		say = say .. "你真幸运,获得了500000金币!\\\\"
		player:add_gold(500000)
	else
		goto_page = "gold80W"
	end
	return { say = say, page = goto_page, close = close }
end

function M.gold80W(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		say = say .. "你真幸运,获得了800000金币!\\\\"
		player:add_gold(800000)
	else
		goto_page = "gold100W"
	end
	return { say = say, page = goto_page, close = close }
end

function M.gold100W(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		say = say .. "你真幸运,获得了一根金条!\\\\"
		player:give_item("金条", 1)
	else
		player:give_item("金砖", 1)
		say = say .. "你真幸运,获得了一根金砖!\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.Experience(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要经验啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望。\\"
	say = say .. "不过，愿望的实现结果也有好坏之分，到底会如何？就\\"
	say = say .. "要看你的诚意和运气了。你将可能获得：\\"
	say = say .. "一、 10万经验；二、 20万经验；三、 40万经验；\\"
	say = say .. "四、 80万经验；五、100万经验；四、300万经验\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantExperience> <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_Experience>"
	return { say = say, page = goto_page, close = close }
end

function M.IWantExperience(player)
	local say = ""
	local goto_page = nil
	local close = false
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_Experience(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "GiveExperience"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveExperience(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_exp(100000)
		say = say .. "你真幸运,获得了100000经验值!\\\\"
	else
		goto_page = "Experience20W"
	end
	return { say = say, page = goto_page, close = close }
end

function M.Experience20W(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_exp(200000)
		say = say .. "你真幸运,获得了200000经验值!\\\\"
	else
		goto_page = "Experience40W"
	end
	return { say = say, page = goto_page, close = close }
end

function M.Experience40W(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_exp(400000)
		say = say .. "你真幸运,获得了400000经验值!\\\\"
	else
		goto_page = "Experience80W"
	end
	return { say = say, page = goto_page, close = close }
end

function M.Experience80W(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_exp(800000)
		say = say .. "你真幸运,获得了800000经验值!\\\\"
	else
		goto_page = "Experience100W"
	end
	return { say = say, page = goto_page, close = close }
end

function M.Experience100W(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_exp(1000000)
		say = say .. "你真幸运,获得了1000000经验值!\\\\"
	else
		player:give_exp(3000000)
		say = say .. "你真幸运,获得了3000000经验值!\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.Weapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("job") == 0 and 1 or 0)) ~= 0 then
		goto_page = "ZSWeapon"
	end
	goto_page = "FSWeapon"
	if ((player:get_var("job") == 1 and 1 or 0)) ~= 0 and (1) ~= 0 then
	end
	goto_page = "DSWeapon"
	if ((player:get_var("job") == 2 and 1 or 0)) ~= 0 and (1) ~= 0 then
	end
	return { say = say, page = goto_page, close = close }
end

function M.DSWeapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要武器啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望。\\"
	say = say .. "不过，愿望的实现结果也有好坏之分，到底会如何？就\\"
	say = say .. "要看你的诚意和运气了。你将可能获得：\\"
	say = say .. "一、乌木剑；二、银蛇剑；三、离别钩；\\"
	say = say .. "四、无极；五、龙纹\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantWeapon>   <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_Weapon>"
	return { say = say, page = goto_page, close = close }
end

function M.IWantWeapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你已经许过愿望了，快去寻找龙珠吧！\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_DSWeapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "GiveDSWeapon"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSWeapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("乌木剑", 1)
		say = say .. "你获得了乌木剑!\\"
	else
		goto_page = "GiveDSWeapon1"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSWeapon1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("银蛇剑", 1)
		say = say .. "你获得了银蛇剑!\\"
	else
		goto_page = "GiveDSWeapon2"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSWeapon2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("离别钩", 1)
		say = say .. "你获得了离别钩!\\"
	else
		goto_page = "GiveDSWeapon3"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSWeapon3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("无极", 1)
		say = say .. "你获得了无极!\\"
	else
		player:give_item("龙纹", 1)
		say = say .. "你获得了龙纹!\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.FSWeapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要武器啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望。\\"
	say = say .. "不过，愿望的实现结果也有好坏之分，到底会如何？就\\"
	say = say .. "要看你的诚意和运气了。你将可能获得：\\"
	say = say .. "一、乌木剑；二、狼牙棒；三、魔法权杖；\\"
	say = say .. "四、骨玉；五、血饮\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantWeapon>   <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_FSWeapon>"
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_FSWeapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "GiveFSWeapon"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSWeapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("乌木剑", 1)
		say = say .. "你获得了乌木剑!\\"
	else
		goto_page = "GiveFSWeapon2"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSWeapon2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("狼牙棒", 1)
		say = say .. "你获得了狼牙棒!\\"
	else
		goto_page = "GiveFSWeapon3"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSWeapon3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("魔法权杖", 1)
		say = say .. "你获得了魔法权杖!\\"
	else
		goto_page = "GiveFSWeapon4"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSWeapon4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("骨玉", 1)
		say = say .. "你获得了骨玉!\\"
	else
		player:give_item("血饮", 1)
		say = say .. "你获得了血饮!\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.ZSWeapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要武器啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望。\\"
	say = say .. "不过，愿望的实现结果也有好坏之分，到底会如何？就\\"
	say = say .. "要看你的诚意和运气了。你将可能获得：\\"
	say = say .. "一、乌木剑；二、炼狱战斧；三、铜锤；\\"
	say = say .. "四、裁决；五、屠龙刀\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantWeapon>   <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_DSWeapon>"
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_ZSWeapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "GiveZSWeapon"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSWeapon(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("乌木剑", 1)
		say = say .. "你获得了乌木剑!\\"
	else
		goto_page = "GiveZSWeapon2"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSWeapon2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("炼狱战斧", 1)
		say = say .. "你获得了炼狱战斧!\\"
	else
		goto_page = "GiveZSWeapon3"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSWeapon3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("铜锤", 1)
		say = say .. "你获得了铜锤!\\"
	else
		goto_page = "GiveZSWeapon4"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSWeapon4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("裁决", 1)
		say = say .. "你获得了裁决!\\"
	else
		player:give_item("屠龙刀", 1)
		say = say .. "你获得了屠龙刀!\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.Clothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("job") == 0 and 1 or 0)) ~= 0 and ((player:get_var("sex") == 0 and 1 or 0)) ~= 0 then
		goto_page = "ZSManClothing"
	end
	if ((player:get_var("job") == 0 and 1 or 0)) ~= 0 and ((player:get_var("sex") == 1 and 1 or 0)) ~= 0 then
		goto_page = "ZSWoManClothing"
	end
	if ((player:get_var("job") == 1 and 1 or 0)) ~= 0 and ((player:get_var("sex") == 0 and 1 or 0)) ~= 0 then
		goto_page = "FSManClothing"
	end
	if ((player:get_var("job") == 1 and 1 or 0)) ~= 0 and ((player:get_var("sex") == 1 and 1 or 0)) ~= 0 then
		goto_page = "FSWoManClothing"
	end
	if ((player:get_var("job") == 2 and 1 or 0)) ~= 0 and ((player:get_var("sex") == 0 and 1 or 0)) ~= 0 then
		goto_page = "DSManClothing"
	end
	if ((player:get_var("job") == 2 and 1 or 0)) ~= 0 and ((player:get_var("sex") == 1 and 1 or 0)) ~= 0 then
		goto_page = "DSWoManClothing"
	end
	return { say = say, page = goto_page, close = close }
end

function M.ZSManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要战袍啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望。\\"
	say = say .. "记住，愿望的实现结果也有好坏之分，到底会如何？就\\"
	say = say .. "要看你的诚意和运气了。你将可能获得：\\"
	say = say .. "一、布衣(男)；二、中盔(男)；三、重盔甲(男)；\\"
	say = say .. "四、战神(男)；五、金鹏宝甲(男)；六、天魔战甲\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantClothing>   <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_ZSManClothing>"
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_ZSManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "GiveZSManClothing"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("布衣(男)", 1)
		say = say .. "你获得了布衣(男)!\\"
	else
		goto_page = "GiveZSManClothing2"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSManClothing2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("中盔(男)", 1)
		say = say .. "你获得了中盔(男)!\\"
	else
		goto_page = "GiveZSManClothing3"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSManClothing3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("重盔甲(男)", 1)
		say = say .. "你获得了重盔甲(男)!\\"
	else
		goto_page = "GiveZSManClothing4"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSManClothing4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("战神(男)", 1)
		say = say .. "你获得了战神(男)!\\"
	else
		goto_page = "GiveZSManClothing5"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSManClothing5(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("金鹏宝甲(男)", 1)
		say = say .. "你获得了金鹏宝甲(男)!\\"
	else
		player:give_item("天魔战甲", 1)
		say = say .. "你获得了天魔战甲!\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.ZSWoManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要战袍啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望。\\"
	say = say .. "记住，愿望的实现结果也有好坏之分，到底会如何？就\\"
	say = say .. "要看你的诚意和运气了。你将可能获得：\\"
	say = say .. "一、布衣(女)；二、中盔(女)；三、重盔甲(女)；\\"
	say = say .. "四、战神(女)；五、金鹏宝甲(女)；六、圣战宝甲\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantClothing>   <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_ZSWoManClothing>"
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_ZSWoManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "GiveZSWoManClothing"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSWoManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("布衣(女)", 1)
		say = say .. "你获得了布衣(女)!\\"
	else
		goto_page = "GiveZSWoManClothing2"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSWoManClothing2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("中盔(女)", 1)
		say = say .. "你获得了中盔(女)!\\"
	else
		goto_page = "GiveZSWoManClothing3"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSWoManClothing3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("重盔甲(女)", 1)
		say = say .. "你获得了重盔甲(女)!\\"
	else
		goto_page = "GiveZSWoManClothing4"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSWoManClothing4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("战神(女)", 1)
		say = say .. "你获得了战神(女)!\\"
	else
		goto_page = "GiveZSWoManClothing5"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSWoManClothing5(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("金鹏宝甲(女)", 1)
		say = say .. "你获得了金鹏宝甲(女)!\\"
	else
		player:give_item("圣战宝甲", 1)
		say = say .. "你获得了圣战宝甲!\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.FSManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要战袍啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望。\\"
	say = say .. "记住，愿望的实现结果也有好坏之分，到底会如何？就\\"
	say = say .. "要看你的诚意和运气了。你将可能获得：\\"
	say = say .. "一、布衣(男)；二、中盔(男)；三、魔袍(男)；\\"
	say = say .. "四、恶魔长袍(男)；五、金鹏宝甲(男)；六、法神披风\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantClothing>   <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_FSManClothing>"
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_FSManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "GiveFSManClothing"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("布衣(男)", 1)
		say = say .. "你获得了布衣(男)!\\"
	else
		goto_page = "GiveFSManClothing2"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSManClothing2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("中盔(男)", 1)
		say = say .. "你获得了中盔(男)!\\"
	else
		goto_page = "GiveFSManClothing3"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSManClothing3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("魔袍(男)", 1)
		say = say .. "你获得了魔袍(男)!\\"
	else
		goto_page = "GiveFSManClothing4"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSManClothing4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("恶魔长袍(男)", 1)
		say = say .. "你获得了恶魔长袍(男)!\\"
	else
		goto_page = "GiveFSManClothing5"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSManClothing5(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("金鹏宝甲(男)", 1)
		say = say .. "你获得了金鹏宝甲(男)!\\"
	else
		player:give_item("法神披风", 1)
		say = say .. "你获得了法神披风!\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.FSWoManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要战袍啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望。\\"
	say = say .. "记住，愿望的实现结果也有好坏之分，到底会如何？就\\"
	say = say .. "要看你的诚意和运气了。你将可能获得：\\"
	say = say .. "一、布衣(女)；二、中盔(女)；三、魔袍(女)；\\"
	say = say .. "四、恶魔长袍(女)；五、金鹏宝甲(女)；六、法神羽衣\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantClothing>   <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_FSWoManClothing>"
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_FSWoManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "GiveFSWoManClothing"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSWoManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("布衣(女)", 1)
		say = say .. "你获得了布衣(女)!\\"
	else
		goto_page = "GiveFSWoManClothing2"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSWoManClothing2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("中盔(女)", 1)
		say = say .. "你获得了中盔(女)!\\"
	else
		goto_page = "GiveFSWoManClothing3"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSWoManClothing3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("魔袍(女)", 1)
		say = say .. "你获得了魔袍(女)!\\"
	else
		goto_page = "GiveFSWoManClothing4"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSWoManClothing4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("恶魔长袍(女)", 1)
		say = say .. "你获得了恶魔长袍(女)!\\"
	else
		goto_page = "GiveFSWoManClothing5"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSWoManClothing5(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("金鹏宝甲(女)", 1)
		say = say .. "你获得了金鹏宝甲(女)!\\"
	else
		player:give_item("法神羽衣", 1)
		say = say .. "你获得了法神羽衣!\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.DSManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要战袍啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望。\\"
	say = say .. "记住，愿望的实现结果也有好坏之分，到底会如何？就\\"
	say = say .. "要看你的诚意和运气了。你将可能获得：\\"
	say = say .. "一、布衣(男)；二、中盔(男)；三、灵魂战甲(男)；\\"
	say = say .. "四、幽灵战甲(男)；五、金鹏宝甲(男)；六、天尊道袍\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantClothing>   <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_DSManClothing>"
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_DSManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "GiveDSManClothing"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("布衣(男)", 1)
		say = say .. "你获得了布衣(男)!\\"
	else
		goto_page = "GiveDSManClothing2"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSManClothing2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("中盔(男)", 1)
		say = say .. "你获得了中盔(男)!\\"
	else
		goto_page = "GiveDSManClothing3"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSManClothing3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("灵魂战甲(男)", 1)
		say = say .. "你获得了灵魂战甲(男)!\\"
	else
		goto_page = "GiveDSManClothing4"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSManClothing4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("幽灵战甲(男)", 1)
		say = say .. "你获得了幽灵战甲(男)!\\"
	else
		goto_page = "GiveDSManClothing5"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSManClothing5(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("金鹏宝甲(男)", 1)
		say = say .. "你获得了金鹏宝甲(男)!\\"
	else
		player:give_item("天尊道袍", 1)
		say = say .. "你获得了天尊道袍!\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.DSWoManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要战袍啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望。\\"
	say = say .. "记住，愿望的实现结果也有好坏之分，到底会如何？就\\"
	say = say .. "要看你的诚意和运气了。你将可能获得：\\"
	say = say .. "一、布衣(女)；二、中盔(女)；三、灵魂战甲(女)；\\"
	say = say .. "四、幽灵战甲(女)；五、金鹏宝甲(女)；六、天师道袍\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantClothing>   <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_DSWoManClothing>"
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_DSWoManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "GiveDSWoManClothing"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSWoManClothing(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("布衣(女)", 1)
		say = say .. "你获得了布衣(女)!\\"
	else
		goto_page = "GiveDSWoManClothing2"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSWoManClothing2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("中盔(女)", 1)
		say = say .. "你获得了中盔(女)!\\"
	else
		goto_page = "GiveDSWoManClothing3"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSWoManClothing3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("灵魂战甲(女)", 1)
		say = say .. "你获得了灵魂战甲(女)!\\"
	else
		goto_page = "GiveDSWoManClothing4"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSWoManClothing4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("幽灵战甲(女)", 1)
		say = say .. "你获得了幽灵战甲(女)!\\"
	else
		goto_page = "GiveDSWoManClothing5"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSWoManClothing5(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("金鹏宝甲(女)", 1)
		say = say .. "你获得了金鹏宝甲(女)!\\"
	else
		player:give_item("天师道袍", 1)
		say = say .. "你获得了天师道袍!\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.Adornment(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("job") == 0 and 1 or 0)) ~= 0 then
		goto_page = "ZSAdornment"
	end
	goto_page = "FSAdornment"
	if ((player:get_var("job") == 1 and 1 or 0)) ~= 0 and (1) ~= 0 then
	end
	goto_page = "DSAdornment"
	if ((player:get_var("job") == 2 and 1 or 0)) ~= 0 and (1) ~= 0 then
	end
	return { say = say, page = goto_page, close = close }
end

function M.ZSAdornment(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要饰品啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望。\\"
	say = say .. "愿望的实现结果也有好坏之分，你将可能获得：\\"
	say = say .. "珊瑚戒指、幽冥项链、记忆头盔、龙戒、黑铁头盔、力\\"
	say = say .. "量戒指、猛士手镯、绿色项链、记忆项链、祈祷头盔、圣战\\"
	say = say .. "戒指、圣战手镯、圣战项链、圣战头盔……其中一件。\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantAdornment>   <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_ZSAdornment>"
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_ZSAdornment(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "GiveZSAdornment"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSAdornment(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("珊瑚戒指", 1)
		say = say .. "你获得了珊瑚戒指!\\"
	else
		goto_page = "GiveZSAdornment2"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSAdornment2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("幽冥项链", 1)
		say = say .. "你获得了幽冥项链!\\"
	else
		goto_page = "GiveZSAdornment3"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSAdornment3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("记忆头盔", 1)
		say = say .. "你获得了记忆头盔!\\"
	else
		goto_page = "GiveZSAdornment4"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSAdornment4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("龙戒", 1)
		say = say .. "你获得了龙戒!\\"
	else
		goto_page = "GiveZSAdornment5"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSAdornment5(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("黑铁头盔", 1)
		say = say .. "你获得了黑铁头盔!\\"
	else
		goto_page = "GiveZSAdornment6"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSAdornment6(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("力量戒指", 1)
		say = say .. "你获得了力量戒指!\\"
	else
		goto_page = "GiveZSAdornment7"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSAdornment7(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("猛士手镯", 1)
		say = say .. "你获得了猛士手镯!\\"
	else
		goto_page = "GiveZSAdornment8"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSAdornment8(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("绿色项链", 1)
		say = say .. "你获得了绿色项链!\\"
	else
		goto_page = "GiveZSAdornment9"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSAdornment9(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("记忆项链", 1)
		say = say .. "你获得了记忆项链!\\"
	else
		goto_page = "GiveZSAdornment10"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSAdornment10(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("祈祷头盔", 1)
		say = say .. "你获得了祈祷头盔!\\"
	else
		goto_page = "GiveZSAdornment11"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSAdornment11(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("圣战手镯", 1)
		say = say .. "你获得了圣战手镯!\\"
	else
		goto_page = "GiveZSAdornment12"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSAdornment12(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("圣战头盔", 1)
		say = say .. "你获得了圣战头盔!\\"
	else
		goto_page = "GiveZSAdornment13"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveZSAdornment13(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("圣战项链", 1)
		say = say .. "你获得了圣战项链!\\"
	else
		player:give_item("圣战戒指", 1)
		say = say .. "你获得了圣战戒指!\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.FSAdornment(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要饰品啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望。\\"
	say = say .. "愿望的实现结果也有好坏之分，你将可能获得：\\"
	say = say .. "天珑手镯、生命项链、紫晶戒指、红宝戒指、魔魂手镯\\"
	say = say .. "、祈祷头盔、龙鳞手镯、恶魔铃、碧螺戒指、法神戒指、\\"
	say = say .. "法神手镯、法神项链、法神头盔……其中一件。\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantAdornment>   <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_FSAdornment>"
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_FSAdornment(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "GiveFSAdornment"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSAdornment(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("天珑手镯", 1)
		say = say .. "你获得了天珑手镯!\\"
	else
		goto_page = "GiveFSAdornment2"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSAdornment2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("生命项链", 1)
		say = say .. "你获得了生命项链!\\"
	else
		goto_page = "GiveFSAdornment3"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSAdornment3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("紫晶戒指", 1)
		say = say .. "你获得了紫晶戒指!\\"
	else
		goto_page = "GiveFSAdornment4"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSAdornment4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("红宝戒指", 1)
		say = say .. "你获得了红宝戒指!\\"
	else
		goto_page = "GiveFSAdornment5"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSAdornment5(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("魔魂手镯", 1)
		say = say .. "你获得了魔魂手镯!\\"
	else
		goto_page = "GiveFSAdornment6"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSAdornment6(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("祈祷头盔", 1)
		say = say .. "你获得了祈祷头盔!\\"
	else
		goto_page = "GiveFSAdornment7"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSAdornment7(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("恶魔铃", 1)
		say = say .. "你获得了恶魔铃!\\"
	else
		goto_page = "GiveFSAdornment8"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSAdornment8(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("碧螺戒指", 1)
		say = say .. "你获得了碧螺戒指!\\"
	else
		goto_page = "GiveFSAdornment9"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSAdornment9(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("法神头盔", 1)
		say = say .. "你获得了法神头盔!\\"
	else
		goto_page = "GiveFSAdornment10"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSAdornment10(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("法神项链", 1)
		say = say .. "你获得了法神项链!\\"
	else
		goto_page = "GiveFSAdornment11"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveFSAdornment11(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("法神手镯", 1)
		say = say .. "你获得了法神手镯!\\"
	else
		player:give_item("法神戒指", 1)
		say = say .. "你获得了法神戒指!\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.DSAdornment(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要饰品啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望。\\"
	say = say .. "愿望的实现结果也有好坏之分，你将可能获得：\\"
	say = say .. "楼兰手镯、思诺项链、记忆头盔、白金戒指、天珠项链\\"
	say = say .. "、心灵护腕、灵魂项链、泰坦戒指、三眼护腕、祈祷头盔、\\"
	say = say .. "天尊戒指、天尊手镯、天尊项链、天尊头盔……其中一件。\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantAdornment>   <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_DSAdornment>"
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_DSAdornment(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "GiveDSAdornment"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSAdornment(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("楼兰手镯", 1)
		say = say .. "你获得了楼兰手镯!\\"
	else
		goto_page = "GiveDSAdornment2"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSAdornment2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("思诺项链", 1)
		say = say .. "你获得了思诺项链!\\"
	else
		goto_page = "GiveDSAdornment3"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSAdornment3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("记忆头盔", 1)
		say = say .. "你获得了记忆头盔!\\"
	else
		goto_page = "GiveDSAdornment4"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSAdornment4(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("白金戒指", 1)
		say = say .. "你获得了白金戒指!\\"
	else
		goto_page = "GiveDSAdornment5"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSAdornment5(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("天珠项链", 1)
		say = say .. "你获得了天珠项链!\\"
	else
		goto_page = "GiveDSAdornment6"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSAdornment6(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("灵魂项链", 1)
		say = say .. "你获得了灵魂项链!\\"
	else
		goto_page = "GiveDSAdornment7"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSAdornment7(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("三眼护腕", 1)
		say = say .. "你获得了三眼护腕!\\"
	else
		goto_page = "GiveDSAdornment8"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSAdornment8(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("泰坦戒指", 1)
		say = say .. "你获得了泰坦戒指!\\"
	else
		goto_page = "GiveDSAdornment9"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSAdornment9(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("祈祷头盔", 1)
		say = say .. "你获得了祈祷头盔!\\"
	else
		goto_page = "GiveDSAdornment10"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSAdornment10(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("天尊戒指", 1)
		say = say .. "你获得了天尊戒指!\\"
	else
		goto_page = "GiveDSAdornment11"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSAdornment11(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("天尊手镯", 1)
		say = say .. "你获得了天尊手镯!\\"
	else
		goto_page = "GiveDSAdornment12"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveDSAdornment12(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("天尊项链", 1)
		say = say .. "你获得了天尊项链!\\"
	else
		player:give_item("天尊头盔", 1)
		say = say .. "你获得了天尊头盔!\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.Level(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要升级啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望，让\\"
	say = say .. "你可以直接升一级。不过，请务必注意两点：\\"
	say = say .. "1、我的能力还不够帮助35级以上的角色直接升级；\\"
	say = say .. "2、这个愿望有可能会落空，让你一无所获；\\\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantLevel>   <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_Level>"
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_Level(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("level") > 35 and 1 or 0)) ~= 0 then
		say = say .. "我的能力还不够帮助35级以上的角色直接升级；\\"
	else
		goto_page = "IGet7LongZhu_Level1"
	end
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_Level1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "GiveLevel"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveLevel(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(8)) ~= 0 then
		say = say .. "你的运气不行,下次再来吧!\\"
	else
		player:add_level(1)
		say = say .. "恭喜你获得了直升一级的奖励!\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.Gold(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "哦，你想要宝石啊，没问题，只要你帮我找齐我不小心\\"
	say = say .. "遗失的七颗龙珠，我就有足够的法力帮你实现这个愿望。\\"
	say = say .. "不过，愿望的实现结果也有好坏之分，到底会如何？就\\"
	say = say .. "要看你的诚意和运气了。你将可能获得：\\"
	say = say .. "一、12颗宝石，三种宝石各4颗；二、15颗宝石，三种宝\\"
	say = say .. "石各5颗；三、21颗宝石，三种宝石各7颗。\\"
	say = say .. "<到哪里才能找到那七颗龙珠？/@HowFindLongZhu>\\"
	say = say .. "<我要许这个愿望/@IWantGold>   <还有其它的愿望吗？/@main>\\"
	say = say .. "<我已经把龙珠带来了，快帮我实现愿望吧！/@IGet7LongZhu_Gold>"
	return { say = say, page = goto_page, close = close }
end

function M.IGet7LongZhu_Gold(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("一星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("二星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("三星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("四星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("五星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("六星珠", 1) and 1 or 0)) ~= 0 and ((player:has_item("七星珠", 1) and 1 or 0)) ~= 0 then
		player:take_item("一星珠", 1)
		player:take_item("二星珠", 1)
		player:take_item("三星珠", 1)
		player:take_item("四星珠", 1)
		player:take_item("五星珠", 1)
		player:take_item("六星珠", 1)
		player:take_item("七星珠", 1)
		goto_page = "GiveGold"
	else
		say = say .. "你的龙珠还没有收集！\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveGold(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("红宝石", 4)
		player:give_item("蓝宝石", 4)
		player:give_item("绿宝石", 4)
		say = say .. "你获得了12颗宝石!\\"
	else
		goto_page = "GiveGold2"
	end
	return { say = say, page = goto_page, close = close }
end

function M.GiveGold2(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:give_item("红宝石", 5)
		player:give_item("蓝宝石", 5)
		player:give_item("绿宝石", 5)
		say = say .. "你获得了15颗宝石!\\"
	else
		player:give_item("红宝石", 7)
		player:give_item("蓝宝石", 7)
		player:give_item("绿宝石", 7)
		say = say .. "你获得了21颗宝石!\\"
	end
	return { say = say, page = goto_page, close = close }
end

return M
