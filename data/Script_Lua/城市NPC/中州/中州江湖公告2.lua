-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 中州江湖公告2
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "中州江湖公告2",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "江湖公告，是国王为了方便闯荡传奇世界的\\"
	say = say .. "英雄而设立，您如果有问题需要帮忙，可以\\"
	say = say .. "前来江湖公告寻求帮助！\\\\"
	say = say .. "<王城诏令任务/@_WCRW_FANGWEN>\\"
	say = say .. "<想快速移动到其他地区/@main1>\\"
	say = say .. "<关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._WCRW_FANGWEN(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "王城诏令", "访问王城任务")
	return { say = say, page = goto_page, close = close }
end

function M.main1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这是国王为了对抗邪恶力量而特别开辟的骑兵\\"
	say = say .. "驿道，能够以最快的速度帮助你往返于各个地\\"
	say = say .. "区 。不过为此你必须付出一些代价做为使用\\"
	say = say .. "费用。你确定要使用这条驿道吗？\\"
	say = say .. "<去将军坟附近/@lingmuall>\\"
	say = say .. "<去死水沼泽入口/@deadwater>\\"
	say = say .. "<去西域奇境/@west>\\"
	say = say .. "<去其他地方/@othergo>\\"
	say = say .. "<不去了/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.lingmuall(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这是国王为了对抗邪恶力量而特别开辟的骑兵\\"
	say = say .. "驿道，能够以最快的速度帮助你往返于各个地\\"
	say = say .. "区 。不过为此你必须付出一些代价做为使用\\"
	say = say .. "费用。你确定要使用这条驿道吗？\\"
	say = say .. "<将军坟南入口/@lingmus> \\"
	say = say .. "<将军坟北入口/@lingmun> \\"
	say = say .. "<将军坟东入口/@lingmue> \\\\"
	say = say .. "<不去了/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.lingmus(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去将军坟南入口？\\"
	say = say .. "500金币就可以了，没有的话就自己走着去吧。\\\\"
	say = say .. "<付钱/@lms> \\"
	say = say .. "<没钱/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.lms(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 499 and 1 or 0)) ~= 0 then
		player:take_gold(500)
		player:teleport(16, 32, 353)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.lingmun(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去将军坟北入口？\\"
	say = say .. "500金币就可以了，没有的话就自己走着去吧。\\\\"
	say = say .. "<付钱/@lmn> \\"
	say = say .. "<没钱/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.lmn(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 499 and 1 or 0)) ~= 0 then
		player:take_gold(500)
		player:teleport(16, 51, 182)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.deadwater(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "去死水沼泽入口要500金币，你去么？\\"
	say = say .. "<去死水沼泽/@godeadwater>\\"
	say = say .. "<关闭/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.godeadwater(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 499 and 1 or 0)) ~= 0 then
		player:take_gold(500)
		player:teleport(16, 778, 522)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.west(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这是国王为了对抗邪恶力量而特别开辟的骑兵驿道，能够\\"
	say = say .. "以最快的速度帮助你往返于各个地区 。不过为此你必须付\\"
	say = say .. "出一些代价做为使用费用。你确定要使用这条驿道吗？\\"
	say = say .. "你是要去西域奇境吗？由于路途遥远，它将花费你2000金币\\"
	say = say .. "你确定要快速移动吗？\\\\"
	say = say .. "<确定/@west1>\\"
	say = say .. "<没钱/@west2>\\"
	return { say = say, page = goto_page, close = close }
end

function M.west1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 1999 and 1 or 0)) ~= 0 then
		player:take_gold(2000)
		player:teleport(220, 466, 109)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.west2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "那你自己到西域的515,170附近去找吧。\\\\"
	say = say .. "<关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.othergo(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "这是国王为了对抗邪恶力量而特别开辟的骑兵驿道，能够\\"
	say = say .. "以最快的速度帮助你往返于各个地区 。不过为此你必须付\\"
	say = say .. "出一些代价做为使用费用。你确定要使用这条驿道吗？\\"
	say = say .. "<海角村/@new> \\"
	say = say .. "<中州关隘/@ztown>\\"
	say = say .. "<落霞岛/@island>\\\\"
	say = say .. "<不去了/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.new(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去海角村？\\"
	say = say .. "300块就可以了，没有的话就自己走着去吧。\\\\"
	say = say .. "<付钱/@new1> \\"
	say = say .. "<没钱/@new2>"
	return { say = say, page = goto_page, close = close }
end

function M.new1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 299 and 1 or 0)) ~= 0 then
		player:take_gold(300)
		player:teleport(16, 397, 593)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.ztown(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去中州关隘吗？\\"
	say = say .. "500金币就可以了，没有的话就自己走着去吧。\\\\"
	say = say .. "<付钱/@pass1> \\"
	say = say .. "<没钱/@pass2>"
	return { say = say, page = goto_page, close = close }
end

function M.pass1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 499 and 1 or 0)) ~= 0 then
		player:take_gold(500)
		player:teleport(16, 727, 42)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.pass2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "那就自己到730，40附近去找吧。\\\\"
	say = say .. "<关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.island(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "要去落霞岛？\\"
	say = say .. "1000金币就可以了，没有的话就自己走着去吧。\\\\"
	say = say .. "<付钱/@island1>\\"
	say = say .. "<没钱/@island2>\\"
	return { say = say, page = goto_page, close = close }
end

function M.island1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 999 and 1 or 0)) ~= 0 then
		player:teleport(53, 237, 236)
		close = true
	else
		say = say .. "你没有足够金钱!\\"
		say = say .. "<关闭/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

function M.island2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "那就自己到200，200附近去找吧。\\\\"
	say = say .. "<关闭/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
