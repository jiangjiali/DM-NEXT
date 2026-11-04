-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 求婚的勇气任务
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "求婚的勇气任务",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["落霞岛_杂货1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(12) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--求婚的勇气/@_RW_fulfilTaskDesp3>\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp3(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我在犹豫中观望，我在观望中变得更加犹豫，为何喜欢一个\\"
	say = say .. "人，是如此的难以启齿。唉……啊，你什么时候跑到我身边\\"
	say = say .. "来的，你找我有什么事情？首饰店派你来送结婚戒指的么？\\"
	say = say .. "<给予结婚戒指/@_RW_fulfilTask3_3>                <不给他让他着急/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask3_3(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("结婚戒指", 1) and 1 or 0)) ~= 0 then
		player:modify_task(12, 2)
		player:give_exp(20000)
		player:add_gold(300)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
		say = say .. "终于送来了，谢谢你。我还有件事情，我……我……是个比\\"
		say = say .. "较内向的人，可我喜欢村里的服装店掌柜很久了，一直没有\\"
		say = say .. "勇气向她表达爱意，你就好人做到底吧，再帮我一次吧，你\\"
		say = say .. "能帮我将这枚结婚戒指交给服装店掌柜吗？服装店掌柜就在\\"
		say = say .. "村子西边的服装店（218：230）附近，快去吧，我等着你的\\"
		say = say .. "好消息。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

M["落霞岛_衣服1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--求婚的勇气/@_RW_fulfilTaskDesp4>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp4(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "“每恨年年藏金线，为他人作嫁衣裳”，我为别人做了10多\\"
	say = say .. "年衣裳，自己却始终盼不到如意郎君，来为我披上漂亮的嫁\\"
	say = say .. "衣。唉，为何我的缘份，却迟迟不曾来到……啊，你什么时\\"
	say = say .. "候跑到我身边来的，你找我有什么事情？杂货铺那个呆子派\\"
	say = say .. "你来送结婚戒指的？\\"
	say = say .. "<给予结婚戒指/@_RW_fulfilTask4_4>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask4_4(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(12, 3)
	player:give_exp(30000)
	player:add_gold(300)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "求婚这种事情，难道不应该是本人来吗？你回去告诉杂货铺\\"
	say = say .. "掌柜，让他自己亲自来吧。其实我知道他喜欢我，我也喜欢\\"
	say = say .. "他心地忠厚善良，就是太笨了。你让他亲自来吧，谢谢你！\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["落霞岛_杂货2"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(12) == 3 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--求婚的勇气/@_RW_fulfilTaskDesp5>\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp5(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你怎么这么快就回来了，难道她……她……她……她拒绝我\\"
	say = say .. "了。不会的，不会的，我知道她心里有我……你快点告诉我\\"
	say = say .. "啊，她看到结婚戒指之后是什么态度？\\"
	say = say .. "<她说让你亲自去求亲/@_RW_fulfilTask5_5>                <不告诉你，急死你/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask5_5(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(12, 4)
	player:take_item("结婚戒指", 1)
	player:give_exp(30000)
	player:add_gold(300)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "唉，爱情需要太多的勇气。能不能麻烦你帮我找瓶酒来，酒\\"
	say = say .. "能壮胆，喝点酒就有勇气了。听说仓库保管员存了不少好酒\\"
	say = say .. "，说不定能从他那里想想办法。他就在村子西南方向的仓库\\"
	say = say .. "（210：237）附近。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["落霞岛_仓库"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--求婚的勇气/@_RW_fulfilTaskDesp6>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp6(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "村里头杂货铺那个阿呆，别看他平日里憨头憨脑的，毫不起\\"
	say = say .. "眼。喝了酒以后认真起来，那气势简直就是惊天动地。上次\\"
	say = say .. "就是他借着酒劲从凶猛的鱼人手里救回三个小孩，真是让人\\"
	say = say .. "佩服。他让你来找我，又是来要酒喝吧？\\"
	say = say .. "<想要一些酒/@_RW_fulfilTask6_6>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask6_6(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:give_item("乌木剑", 1)
	player:modify_task(12, 5)
	say = say .. "酒我是有的，不过不能随便给你。除非你帮我找一把乌木剑\\"
	say = say .. "来，让我作为送给孙子的生日礼物。你可以去村子西门那铁\\"
	say = say .. "匠铺（227：216）找铁匠买一把，还可以去村子外面杀稻草\\"
	say = say .. "人，运气好的话也能得到乌木剑。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["落霞岛_仓库1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--求婚的勇气/@_RW_fulfilTaskDesp7>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp7(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "对于初涉传世大陆的新人来说，乌木剑真是一种非常好的兵\\"
	say = say .. "器，不但攻击超群，而且还附有魔法的神力。村子外面的稻\\"
	say = say .. "草人就喜欢带着乌木剑打劫新人，我的小孙子很早就想要这\\"
	say = say .. "样一把剑来玩了……请问你找到乌木剑了吗？\\"
	say = say .. "<给你乌木剑/@_RW_fulfilTask7_7>                <没有乌木剑/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask7_7(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("乌木剑", 1) and 1 or 0)) ~= 0 then
		player:take_item("乌木剑", 1)
		player:give_item("酒", 1)
		player:give_exp(40000)
		player:add_gold(500)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了500金币。")
		player:modify_task(12, 6)
		say = say .. "太好了，我孙子一定会喜欢的不得了，天天拿着它玩耍。真\\"
		say = say .. "希望他能早点长大成人，也做出一番事业来。这些酒就送你\\"
		say = say .. "了，这可是我珍藏了多年的一瓶好酒呢。杂货铺老板喝了酒\\"
		say = say .. "肯定会勇气大增的。真的希望他和衣服店的姑娘有情人终成\\"
		say = say .. "眷属，也算你和我做了一件善事吧。快去把酒送回给杂货铺\\"
		say = say .. "老板吧。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

M["落霞岛_杂货3"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(12) == 6 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--求婚的勇气/@_RW_fulfilTaskDesp8>\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp8(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "爱真的需要勇气，来面对人生的风风雨雨；只要你一个眼神\\"
	say = say .. "肯定，我的爱就有意义…酒，我需要酒来鼓起勇气…啊，你\\"
	say = say .. "回来了，拿到酒了吗？\\"
	say = say .. "<给你酒/@_RW_fulfilTask8_8>                <不给你让你着急/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask8_8(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("酒", 1) and 1 or 0)) ~= 0 then
		player:complete_task(12)
		player:take_item("酒", 1)
		player:give_item("回城卷轴", 1)
		player:give_exp(40000)
		player:add_gold(3000)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了3000金币。")
		player:add_task(13)
		say = say .. "    你还真从他那里拿到酒了，太感谢你了，我这就亲自去\\"
		say = say .. "向她求婚，等我这门婚事成了的时候一定请你来喝喜酒。\\"
		say = say .. "    我前些天在她的衣服店那里买帽子的时候，她问我什么\\"
		say = say .. "时候再去王城进货，好像是要我顺便帮她捎带些东西，可是\\"
		say = say .. "我最近总是在想着求婚的事情，店里也懒得打理，所以还积\\"
		say = say .. "压了不少货物，一时半会也不去王城，你若是有时间就过去\\"
		say = say .. "看看吧，她在村子西边的衣服店（218：230）附近。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

M["海角_杂货1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--求婚的勇气/@_RW_fulfilTaskDesp25>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp25(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我在犹豫中观望，我在观望中变得更加犹豫，为何喜欢一个\\"
	say = say .. "人，是如此的难以启齿。唉……啊，你什么时候跑到我身边\\"
	say = say .. "来的，你找我有什么事情？首饰店派你来送结婚戒指的么？\\"
	say = say .. "<给予结婚戒指/@_RW_fulfilTask25_25>                <不给他让他着急/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask25_25(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("结婚戒指", 1) and 1 or 0)) ~= 0 then
		player:modify_task(25, 2)
		player:give_exp(20000)
		player:add_gold(300)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
		say = say .. "终于送来了，谢谢你。我还有件事情，我……我……是个比\\"
		say = say .. "较内向的人，可我喜欢村里的服装店掌柜很久了，一直没有\\"
		say = say .. "勇气向她表达爱意，你就好人做到底吧，再帮我一次吧，你\\"
		say = say .. "能帮我将这枚结婚戒指交给服装店掌柜吗？服装店掌柜就在\\"
		say = say .. "村子中央的服装店（402：612）附近，快去吧，我等着你的\\"
		say = say .. "好消息。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

M["海角_衣服1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(25) == 2 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--求婚的勇气/@_RW_fulfilTaskDesp26>\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp26(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "“每恨年年藏金线，为他人作嫁衣裳”，我为别人做了10多\\"
	say = say .. "年衣裳，自己却始终盼不到如意郎君，来为我披上漂亮的嫁\\"
	say = say .. "衣。唉，为何我的缘份，却迟迟不曾来到……啊，你什么时\\"
	say = say .. "候跑到我身边来的，你找我有什么事情？杂货铺那个呆子派\\"
	say = say .. "你来送结婚戒指的？\\"
	say = say .. "<给予结婚戒指/@_RW_fulfilTask26_26>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask26_26(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(25, 3)
	player:give_exp(30000)
	player:add_gold(300)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "求婚这种事情，难道不应该是本人来吗？你回去告诉杂货铺\\"
	say = say .. "掌柜，让他自己亲自来吧。其实我知道他喜欢我，我也喜欢\\"
	say = say .. "他心地忠厚善良，就是太笨了。你让他亲自来吧，谢谢你！\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_杂货2"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--求婚的勇气/@_RW_fulfilTaskDesp27>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp27(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你怎么这么快就回来了，难道她……她……她……她拒绝我\\"
	say = say .. "了。不会的，不会的，我知道她心里有我……你快点告诉我\\"
	say = say .. "啊，她看到结婚戒指之后是什么态度？\\"
	say = say .. "<她说让你亲自去求亲/@_RW_fulfilTask27_27>                <不告诉你，急死你/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask27_27(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(25, 4)
	player:take_item("结婚戒指", 1)
	player:give_exp(30000)
	player:add_gold(300)
	ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了300金币。")
	say = say .. "唉，爱情需要太多的勇气。能不能麻烦你帮我找瓶酒来，酒\\"
	say = say .. "能壮胆，喝点酒就有勇气了。听说仓库保管员家里有不少好\\"
	say = say .. "酒，说不定能从他那里想想办法。他就在杂货铺下方不远处\\"
	say = say .. "的仓库（433：614）附近。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_仓库"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--求婚的勇气/@_RW_fulfilTaskDesp28>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp28(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我隔壁杂货铺那个阿呆，别看他平日里憨头憨脑的，毫不起\\"
	say = say .. "眼。喝了酒以后认真起来，那气势简直就是惊天动地。上次\\"
	say = say .. "就是他借着酒劲从凶猛的鱼人手里救回三个小孩，真是让人\\"
	say = say .. "佩服。他让你来找我，又是来要酒喝吧？\\"
	say = say .. "<想要一些酒/@_RW_fulfilTask28_28>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask28_28(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:give_item("乌木剑", 1)
	player:modify_task(25, 5)
	say = say .. "酒我是有的，不过不能随便给你。除非你帮我找一把乌木剑\\"
	say = say .. "来，让我作为送给孙子的生日礼物。你可以去村子北边的铁\\"
	say = say .. "匠铺（418：598）找铁匠买一把，还可以去村子外面杀稻草\\"
	say = say .. "人，运气好的话也能得到乌木剑。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

M["海角_仓库1"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--求婚的勇气/@_RW_fulfilTaskDesp29>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp29(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "对于初涉传世大陆的新人来说，乌木剑真是一种非常好的兵\\"
	say = say .. "器，不但攻击超群，而且还附有魔法的神力。村子外面的稻\\"
	say = say .. "草人就喜欢带着乌木剑打劫新人，我的小孙子很早就想要这\\"
	say = say .. "样一把剑来玩了……请问你找到乌木剑了吗？\\"
	say = say .. "<给你乌木剑/@_RW_fulfilTask29_29>                <没有乌木剑/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask29_29(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("乌木剑", 1) and 1 or 0)) ~= 0 then
		player:take_item("乌木剑", 1)
		player:give_item("酒", 1)
		player:give_exp(40000)
		player:add_gold(500)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了500金币。")
		player:modify_task(25, 6)
		say = say .. "太好了，我孙子一定会喜欢的不得了，天天拿着它玩耍。真\\"
		say = say .. "希望他能早点长大成人，也做出一番事业来。这些酒就送你\\"
		say = say .. "了，这可是我珍藏了多年的一瓶好酒呢。杂货铺老板喝了酒\\"
		say = say .. "肯定会勇气大增的。真的希望他和衣服店的姑娘有情人终成\\"
		say = say .. "眷属，也算你和我做了一件善事吧。快去把酒送回给杂货铺\\"
		say = say .. "老板吧。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

M["海角_杂货3"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "可以完成的任务：\\"
	say = say .. "<新手任务--求婚的勇气/@_RW_fulfilTaskDesp30>\\\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp30(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "爱真的需要勇气，来面对人生的风风雨雨；只要你一个眼神\\"
	say = say .. "肯定，我的爱就有意义…酒，我需要酒来鼓起勇气…啊，你\\"
	say = say .. "回来了，拿到酒了吗？\\"
	say = say .. "<给你酒/@_RW_fulfilTask30_30>                <不给你让你着急/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask30_30(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("酒", 1) and 1 or 0)) ~= 0 then
		player:complete_task(25)
		player:take_item("酒", 1)
		player:give_item("回城卷轴", 1)
		player:give_exp(40000)
		player:add_gold(3000)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "您成功增加了3000金币。")
		player:add_task(26)
		say = say .. "    你还真从他那里拿到酒了，太感谢你了，我这就亲自去\\"
		say = say .. "向她求婚，等我这门婚事成了的时候一定请你来喝喜酒。\\"
		say = say .. "    我前些天在服装店她那里购买帽子的时候，她问我什么\\"
		say = say .. "时候再去王城进货，好像是要我顺便帮她捎带些东西，可是\\"
		say = say .. "我最近总是在想着求婚的事情，店里也懒得打理，所以还积\\"
		say = say .. "压了不少货物，一时半会也不去王城，你要有时间再帮我去\\"
		say = say .. "看看吧，她在村子中央的衣服店（402：612）附近。\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

return M
