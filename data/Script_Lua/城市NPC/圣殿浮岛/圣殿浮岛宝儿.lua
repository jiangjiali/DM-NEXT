-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 圣殿浮岛宝儿
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "圣殿浮岛宝儿",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "你好啊，年轻人！我是宝儿，当年孟虎大人在圣殿山\\"
	say = say .. "战胜魔族后，为了防止三昧真火之力反噬生灵，特派我\\"
	say = say .. "在此守护三昧真火的秘密。\\"
	say = say .. "只有得到孟虎大人认可的人，才能从我这里领悟三昧真火\\"
	say = say .. "的真正力量。你，准备好接受这股力量了吗？\\"
	say = say .. "<领悟三昧真火/@@lingwufire>\\"
	say = say .. "<什么是三昧真火/@whatis>\\"
	say = say .. "<进入修炼地图/@enterfiremap>\\"
	say = say .. "<圣殿山/@@entersjs>\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.whatis(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "三昧真火乃是天地间最纯粹的三灵之火，分别为：\\"
	say = say .. "木灵之青火——源于万物生机，生生不息；\\"
	say = say .. "地灵之石火——源于大地熔岩，厚重炽热；\\"
	say = say .. "空灵之天火——源于九天星辰，璀璨夺目。\\"
	say = say .. "三种真火合一，即为三昧真火。修炼者掌握此力量后，可大幅提\\"
	say = say .. "升自身的各项能力：生命值、魔法值、攻击力、防御力、命中、\\"
	say = say .. "暴击等。\\"
	say = say .. "修炼三昧真火需要达到42级并完成相应主线任务。另外，在修炼\\"
	say = say .. "场中打怪可以获得真火值，真火值满即可提升三昧真火的等级。\\"
	say = say .. "使用火凝丹更是可以额外吸收大量真火值。\\"
	say = say .. "<我要领悟三昧真火/@@lingwufire> <离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.enterfiremap(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("level") > 41 and 1 or 0)) ~= 0 then
		player:send_raw_msg(0, 0, 0, 0)
	else
		say = say .. "你的等级不足42级，还无法进入三昧真火修炼地图。"
		say = say .. "请继续历练变强之后再来吧！\\"
		say = say .. "<离开/@exit>"
	end
	return { say = say, page = goto_page, close = close }
end

return M
