-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 沙城霸主
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "沙城霸主",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "城主名字:<COLOR=GREEN <$sabukmaster_name>> 性别:<COLOR=GREEN <$sabukmaster_sex><$sabukmaster_class> >级别:<$sabukmaster_level>级.\\"
	say = say .. "城主宣言:\\"
	return { say = say, page = goto_page, close = close }
end

return M
