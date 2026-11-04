-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: AutoRobot
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "AutoRobot",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.CurDay(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:set_var("GameStage.CurDay", player:get_var("GameStage.CurDay") + 1)
	do
		local __sel = player:get_var("GameStage.CurDay")
		if __sel == 1 then
			player:set_var("GameStage.CurStage", player:get_var("GameStage.CurStage") + 1)
		elseif __sel == 4 then
			player:set_var("GameStage.CurStage", player:get_var("GameStage.CurStage") + 1)
		elseif __sel == 7 then
			player:set_var("GameStage.CurStage", player:get_var("GameStage.CurStage") + 1)
		elseif __sel == 14 then
			player:set_var("GameStage.CurStage", player:get_var("GameStage.CurStage") + 1)
		elseif __sel == 30 then
			player:set_var("GameStage.CurStage", player:get_var("GameStage.CurStage") + 1)
		elseif __sel == 60 then
			player:set_var("GameStage.CurStage", player:get_var("GameStage.CurStage") + 1)
		elseif __sel == 90 then
			player:set_var("GameStage.CurStage", player:get_var("GameStage.CurStage") + 1)
		elseif __sel == 120 then
			player:set_var("GameStage.CurStage", player:get_var("GameStage.CurStage") + 1)
		elseif __sel == 150 then
			player:set_var("GameStage.CurStage", player:get_var("GameStage.CurStage") + 1)
		elseif __sel == 180 then
			player:set_var("GameStage.CurStage", player:get_var("GameStage.CurStage") + 1)
		end
	end
	return { say = say, page = goto_page, close = close }
end

return M
