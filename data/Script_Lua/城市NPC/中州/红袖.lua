-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 红袖
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "红袖",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "啊，有贵客到来，欢迎光临。本店专营传奇世界个性饰品，\\"
	say = say .. "种类繁多，价廉物美，定有一款适合你，快来挑选一下吧。\\"
	say = say .. "不过，小店刚刚开张，购买的个性饰品现在只能用元宝支\\"
	say = say .. "付，千万不要忘记哦。\\"
	say = say .. "<购买各种特色饰品/@poptanglist>\\"
	say = say .. "<我想购买灵符/@bigredbag>　　<我想购买迎春鞭炮/@bianpao>\\"
	say = say .. "<稍等，让我先去买几个元宝/@@urlpay.shanda.com.cn>\\"
	say = say .. "查看更多商品详情，请<登陆POPTANG商城/@@urlstore.poptang.com>\\"
	say = say .. "<用大红包换灵符/@hongbao>　<离开/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

return M
