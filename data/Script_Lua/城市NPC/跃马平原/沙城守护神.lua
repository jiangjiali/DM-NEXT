-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 沙城守护神
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "沙城守护神",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<领取沙城奖励/@getsabukprize>\\"
	say = say .. "<城主领取灵符/@getlingfu>\\"
	say = say .. "<直达各地/@gogogo>\\\\"
	return { say = say, page = goto_page, close = close }
end

function M.getsabukprize(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:is_sabuk_member() and 1 or 0)) ~= 0 then
		player:add_gold(10)
	else
		say = say .. "对不起,您不是沙城成员,不能领取沙城奖励!\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.getlingfu(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:is_sabuk_owner() and 1 or 0)) ~= 0 then
		player:give_item("灵符", 1)
	else
		say = say .. "对不起,您不是城主,不能领取灵符!\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.gogogo(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:is_sabuk_member() and 1 or 0)) ~= 0 then
		goto_page = "gogogo1"
	else
		say = say .. "对不起,您不是沙城成员,不能直达各地!\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.gogogo1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "直接选择要去的地点。\\"
	say = say .. "<炼狱海岛/@_LB_newlianyu>\\"
	say = say .. "<将军坟二层/@go2>\\"
	say = say .. "<逆魔古刹四层/@go3>\\"
	say = say .. "<蛇洞百虫穴/@go4>\\"
	say = say .. "<机关洞天机堂/@go5>\\"
	say = say .. "<通天塔六层/@go6>\\"
	say = say .. "<禁地青玉宫/@go7>\\"
	say = say .. "<地下魔域四层/@go8>\\"
	return { say = say, page = goto_page, close = close }
end

function M._LB_newlianyu(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:random_teleport(164)
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.go2(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:random_teleport(44)
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.go3(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:random_teleport(135)
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.go4(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:random_teleport(109)
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.go5(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:random_teleport(81)
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.go6(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:random_teleport(237)
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.go7(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:random_teleport(156)
	close = true
	return { say = say, page = goto_page, close = close }
end

function M.go8(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:random_teleport(277)
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
