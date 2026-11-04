-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 红池传送门
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "红池传送门",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你要进入炼狱的更深层吗？\\"
	say = say .. "按照你职业的不同，所走的道路也不相同，\\"
	say = say .. "不过最终的终点是相同的。你准备好了吗？\\\\"
	say = say .. "<我准备好了，前进/@go>\\"
	say = say .. "<先返回投石谷/@backnew>\\"
	say = say .. "<还没准备好，等等/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.go(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("JOB") == 0 and 1 or 0)) ~= 0 then
		player:teleport(200, 141, 20)
		close = true
	end
	if ((player:get_var("JOB") == 1 and 1 or 0)) ~= 0 then
		player:teleport(201, 225, 134)
		close = true
	end
	if ((player:get_var("job") == 2 and 1 or 0)) ~= 0 then
		player:teleport(202, 41, 125)
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

function M.backnew(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:teleport(189, 166, 90)
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
