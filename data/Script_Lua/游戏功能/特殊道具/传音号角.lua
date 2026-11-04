-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 传音号角
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "传音号角",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	if (((player:damage_using_item_dura(1)) and 1 or 0)) ~= 0 then
		player:input_text("请输入你要说的话:", 60, "@postrequest2")
		say = say .. "\\"
		say = say .. "<COLOR=GREEN <$username> >:\\\\"
		say = say .. "　　我可以让全区的人看到你说的话哦！\\"
		say = say .. "　　你可以在输入框中输入想要说的话！\\"
		say = say .. "　　注意哦....您最多可以输入30个字！\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.postrequest2(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:scroll_text("【<$username>】说 <$inputtext>")
	close = true
	return { say = say, page = goto_page, close = close }
end

return M
