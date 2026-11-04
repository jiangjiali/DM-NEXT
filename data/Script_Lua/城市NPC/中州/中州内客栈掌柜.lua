-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 中州内客栈掌柜
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "中州内客栈掌柜",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "　　客官可是来投宿的？我们这可是响当当的招牌，别说这\\"
	say = say .. "王城了，在整个中州只怕也是天字第一号的。四海之内的奇\\"
	say = say .. "人异士都喜欢来我们这，把酒言欢，谈古论今！\\"
	say = say .. "　　就说那玄玄老人吧，可真是个活神仙啊，他在小店的这\\"
	say = say .. "些时日，来拜见他老人家的英雄把客栈的门槛都踏破了。听\\"
	say = say .. "说他仙法玄奇可以帮凡人凝练出神奇的各种宝石呢，真是了\\"
	say = say .. "不得啊……咳，不说这个了，客官来间上房吧？\\"
	say = say .. "　　<离开/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

return M
