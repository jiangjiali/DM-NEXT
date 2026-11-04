-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 王国官员
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "王国官员",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "我会帮助有实力的行会攻打铁血魔城，想要申请攻打魔城或\\"
	say = say .. "者在攻打魔城中遇到困难，都可以来找我。不必再犹豫了，\\"
	say = say .. "展示你们行会的实力挑战铁血魔王！\\"
	say = say .. "<申请攻打铁血魔城/@sign>\\"
	say = say .. "<查看攻打魔城行会排名/@aboutlist>\\"
	say = say .. "<查看哪些行会要攻城/@attacklist>\\"
	say = say .. "<打听消息/@ask>\\"
	say = say .. "<离开/@exit>\\"
	return { say = say, page = goto_page, close = close }
end

function M.sign(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:is_guild_master() and 1 or 0)) ~= 0 then
		say = say .. ".."
	else
		say = say .. "你不是行会会长，你不能申请攻打魔城。你可以请行会的会长\\"
		say = say .. "来找我申请，但是申请的行会必须有一百万以上的行会经验。\\\\"
		say = say .. "<离开/@exit>\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.aboutlist(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<查看今天攻打铁血魔城的行会/@looktoday>\\"
	say = say .. "<查看明天即将攻打铁血魔城的行会/@looktoo>\\"
	return { say = say, page = goto_page, close = close }
end

function M.looktoday(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "下面就是今天攻打铁血魔城的所有行会。\\"
	say = say .. "魔幻帝国\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.looktoo(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "下次攻城还不知猴年马月呢\\"
	say = say .. "<返回/@main>"
	return { say = say, page = goto_page, close = close }
end

function M.attacklist(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "铁血魔城就在眼前，如果你的行会有足够的勇气和实力，就\\"
	say = say .. "来我这里申请攻打铁血魔城吧。请注意，申请人必须是行会\\"
	say = say .. "会长，任何时候都可以来申请，攻打魔城的时间是申请后的\\"
	say = say .. "第二天晚上8点至9点，请好好把握时机。\\\\"
	say = say .. "<申请攻打铁血魔城/@sign>\\"
	say = say .. "<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

return M
