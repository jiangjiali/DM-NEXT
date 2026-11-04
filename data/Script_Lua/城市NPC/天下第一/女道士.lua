-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 女道士
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "女道士",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "天下第一女道士：<COLOR=GREEN <$TOP_2_1_NAME>> \\"
	say = say .. "所属行会：<$top_2_1_guildname>\\\\"
	say = say .. "纷扰乱世群雄逐鹿，<$TOP_2_1_NAME>在烽烟四起的传奇世界中修炼\\"
	say = say .. "成为天下第一，从<$TOP_0_0_rankdate>至今还没有人可以超越。\\"
	say = say .. "<$TOP_2_1_NAME>的等级为<$TOP_2_1_level>级。\\"
	say = say .. "今天的天下第一是<$TOP_2_1_NAME>，明天的天下第一会是谁？\\\\"
	say = say .. "申请天下第一名号，请到中州471，229处找史官    <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

return M
