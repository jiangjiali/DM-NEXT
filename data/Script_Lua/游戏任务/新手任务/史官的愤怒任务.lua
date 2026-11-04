-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 史官的愤怒任务
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "史官的愤怒任务",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["中州_史官"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(28) == 1 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--史官的愤怒/@_RW_fulfilTaskDesp55>\\\\"
		say = say .. "<离开/@exit>"
	elseif ((player:task_step(28) == 3 and 1 or 0)) ~= 0 then
		say = say .. "可以完成的任务：\\"
		say = say .. "<新手任务--史官的愤怒/@_RW_fulfilTaskDesp56>\\\\"
		say = say .. "<离开/@exit>"
	else
		say = say .. "您当前没有可以接的任务。\\\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp56(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("传世史记", 1) and 1 or 0)) ~= 0 then
		say = say .. "    我很惊讶你这么快就夺回了传世史记，这证明你的勇敢\\"
		say = say .. "和智慧并非浪得虚名，大家都在谈论你的英雄事迹。伟大的\\"
		say = say .. "英雄，在你未来驰骋大陆、笑傲风云的岁月中，你将学会许\\"
		say = say .. "多神奇的武技，也将掌握许多鲜为人知的秘密，这些秘密将\\"
		say = say .. "给你莫大的帮助。现在，就有一个秘密等待你去发掘；这个\\"
		say = say .. "秘密对你的未来很有帮助，你可愿意试试？\\"
		say = say .. "<我很好奇，想知道这个秘密是啥？/@_RW_fulfilTask56_56>                <没有兴趣/@exit>"
	else
		say = say .. "你还没有完成任务！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask56_56(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:has_item("传世史记", 1) and 1 or 0)) ~= 0 then
		player:take_item("传世史记", 1)
		player:give_exp(320000)
		player:complete_task(28)
		say = say .. "    快去将军坟南杀死尸卫勇士，你就能得到地魂灵石了。\\"
		say = say .. "这种灵石对于修炼元神分身的人，将有神奇的帮助。\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTaskDesp55(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这世道承平日久，人们已经忘记了当初，他们的前辈是如何\\"
	say = say .. "洒铁血、燃丹心来换取天下太平的。这年头的年轻人，都是\\"
	say = say .. "提笼架鸟满街溜达的纨绔子弟，没有几个有勇气的人。听说\\"
	say = say .. "武馆来了个年轻人，深入将军坟东，独力杀死大群尸卫，真\\"
	say = say .. "是难得啊。你是谁，找我干吗？\\"
	say = say .. "<我就是那个年轻人，前来求见史官/@_RW_fulfilTask55_55>                <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._RW_fulfilTask55_55(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:modify_task(28, 2)
	player:give_exp(200000)
	say = say .. "    快去将军坟南杀死尸卫，夺回传世史记吧；王国源远流\\"
	say = say .. "长的文化，绝不容许妖孽的玷污。\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
