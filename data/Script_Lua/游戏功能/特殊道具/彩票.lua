-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 彩票
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "彩票",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["彩票"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你没有中奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你没有中奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(500)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你中了6等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(500)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你中了6等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:add_gold(500)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你中了6等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(500)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你中了6等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(500)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你中了6等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(500)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你中了6等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(500)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你中了6等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(500)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你中了6等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(500)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你中了6等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(500)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你中了6等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(500)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你中了6等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(500)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你中了6等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(500)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你中了6等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(500)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你中了6等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		player:add_gold(500)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你中了6等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了5等奖。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(100000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了4等奖。")
		player:scroll_text("正是太幸运了，<$username>买彩票中了四等奖，奖金10万。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(1000000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了3等奖。")
		player:scroll_text("正是太幸运了，<$username>买彩票中了三等奖，奖金100万。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(3000000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了2等奖。")
		player:scroll_text("正是太幸运了，<$username>买彩票中了二等奖，奖金300万。")
		close = true
	end
	if (ScriptEngine.random(2)) ~= 0 then
		player:delete_using_item()
		player:add_gold(10000000)
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "恭喜你中了1等奖。")
		player:scroll_text("正是太幸运了，<$username>买彩票中了一等奖，奖金1000万。")
		close = true
	else
		player:delete_using_item()
		ScriptEngine.system_msg_ex(Defines.CC_RED, player:get_var_str("username"), "你没有中奖。")
		close = true
	end
	return { say = say, page = goto_page, close = close }
end

return M
