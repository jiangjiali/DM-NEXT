-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 还魂石
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "还魂石",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:check_name_list("还魂石") and 1 or 0)) ~= 0 then
		player:damage_using_item_dura(1)
		goto_page = "hhs1"
	else
		say = say .. "\\"
		say = say .. "　　使用还魂石失败！\\"
		say = say .. "　　原因：\\"
		say = say .. "　　一、你根本没死亡过哦！\\"
		say = say .. "　　二、你已经使用过一次！\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.hhs1(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("LOGINLONG") <= 60 and 1 or 0)) ~= 0 then
		player:teleport(player:get_var("deathid"), player:get_var("deathx"), player:get_var("deathy"))
		player:del_name_list("还魂石")
		player:clear_var("deathid")
		player:clear_var("deathx")
		player:clear_var("deathy")
		ScriptEngine.system_msg_ex(Defines.CC_WISPER, "还魂石使用成功,您已成功回到上次死亡的地方!")
	else
		player:del_name_list("还魂石")
		player:clear_var("deathid")
		player:clear_var("deathx")
		player:clear_var("deathy")
		say = say .. "\\"
		say = say .. "　　距上次死亡时间已超过1分钟，不能使用还魂石!"
	end
	return { say = say, page = goto_page, close = close }
end

return M
