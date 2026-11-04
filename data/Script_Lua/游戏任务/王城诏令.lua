-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 王城诏令
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "王城诏令",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

M["访问王城任务"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "王城诏令", "跨天重置")
	ScriptEngine.call(player, "王城诏令", "同步任务状态")
	say = say .. "近日，中州王城频遭魔军怪物作乱，传世英雄\\"
	say = say .. "与恶魔的大战即将全面爆发！为帮助勇士们快\\"
	say = say .. "速提高战斗能力，国王命禁军教头每天发布10\\"
	say = say .. "个训练任务。完成每个任务都可以得到奖赏，\\"
	say = say .. "如果能够完成全部10个任务，更能得到超级经\\"
	say = say .. "验大奖！还有机会获得各种极品装备！\\"
	say = say .. "任务种类如下\\"
	say = say .. "一、消灭附近洞窟魔怪（灭魔任务）；\\"
	say = say .. "二、收集各类材料（收集任务）；\\"
	say = say .. "三、寻找遗失宝藏（挖宝任务）；\\"
	say = say .. "<我要接任务/@接任务>\\"
	say = say .. "<查看任务进度/@任务进度>\\"
	say = say .. "<领取任务奖励/@领取奖励>\\"
	say = say .. "<快速完成任务/@快速完成>  需要消耗2元宝\\"
	say = say .. "<离开/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M._WCRW_LINGQU(player)
	local say = ""
	local goto_page = nil
	local close = false
	do
		local __sel = ScriptEngine.range_random(1, 92)
		if __sel == 1 then
			player:add_task(1001)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个僵尸\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 2 then
			player:add_task(1002)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个尸王\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 3 then
			player:add_task(1003)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个尸卫战将\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 4 then
			player:add_task(1004)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个尸卫\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 5 then
			player:add_task(1005)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个尸卫勇士\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 6 then
			player:add_task(1006)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个铜人\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 7 then
			player:add_task(1007)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个青铜兽\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 8 then
			player:add_task(1008)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个石人\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 9 then
			player:add_task(1009)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个铜锤手\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 10 then
			player:add_task(1010)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个金刚人\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 11 then
			player:add_task(1011)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭5个沙怪\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 12 then
			player:add_task(1012)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭5个沙雕\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 13 then
			player:add_task(1013)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭5个仙人掌\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 14 then
			player:add_task(1014)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭5个土狼\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 15 then
			player:add_task(1015)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭5个巨猿\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 16 then
			player:add_task(1016)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭5个大土蛇\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 17 then
			player:add_task(1017)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个红蛇妖\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 18 then
			player:add_task(1018)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个黑蛇妖\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 19 then
			player:add_task(1019)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个圣甲虫\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 20 then
			player:add_task(1020)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个魔甲虫\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 21 then
			player:add_task(1021)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个白蛇妖\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 22 then
			player:add_task(1022)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个地下小鬼\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 23 then
			player:add_task(1023)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个逆魔卫士\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 24 then
			player:add_task(1024)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个逆魔弓箭手\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 25 then
			player:add_task(1025)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个逆魔侍卫\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 26 then
			player:add_task(1026)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个逆魔雕像\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 27 then
			player:add_task(1027)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个毒妖\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 28 then
			player:add_task(1028)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个血妖\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 29 then
			player:add_task(1029)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个藤妖\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 30 then
			player:add_task(1030)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个火烈鸟\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 31 then
			player:add_task(1031)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个兽骑兵\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 32 then
			player:add_task(1032)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个兽骑统领\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 33 then
			player:add_task(1033)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个召魂使\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 34 then
			player:add_task(1034)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个幽魂\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 35 then
			player:add_task(1035)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个鬼方火卒\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 36 then
			player:add_task(1036)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个猛魔枪卒\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 37 then
			player:add_task(1037)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个猛魔统领\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 38 then
			player:add_task(1038)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个炎魔\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 39 then
			player:add_task(1039)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个地火弓箭手\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 40 then
			player:add_task(1040)
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个地火投矛手\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 41 then
			player:add_task(1041)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质1以上的猪肉，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 42 then
			player:add_task(1042)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质1以上的鹿肉，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 43 then
			player:add_task(1043)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质1以上的兔肉，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 44 then
			player:add_task(1044)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质1以上的牛肉，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 45 then
			player:add_task(1045)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份毒蜘蛛的牙齿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 46 then
			player:add_task(1046)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份食人花的果实，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 47 then
			player:add_task(1047)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份食人花的叶子然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 48 then
			player:add_task(1048)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份蝎子的尾巴，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 49 then
			player:add_task(1049)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份洞蛆的蛆卵，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 50 then
			player:add_task(1050)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质10以上的铜矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 51 then
			player:add_task(1051)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质10以上的铁矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 52 then
			player:add_task(1052)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质10以上的银矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 53 then
			player:add_task(1053)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质10以上的金矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 54 then
			player:add_task(1054)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质10以上的黑铁矿石，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 55 then
			player:add_task(1055)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质15以上的铜矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 56 then
			player:add_task(1056)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质15以上的铁矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 57 then
			player:add_task(1057)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质15以上的银矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 58 then
			player:add_task(1058)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质15以上的金矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 59 then
			player:add_task(1059)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质15以上的黑铁矿石，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 60 then
			player:add_task(1060)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份马牌(空)，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 61 then
			player:add_task(1061)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份魔神雕像，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 62 then
			player:add_task(1062)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍狮子吼，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 63 then
			player:add_task(1063)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍神圣战甲术，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 64 then
			player:add_task(1064)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍幽灵盾，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 65 then
			player:add_task(1065)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍灵魂墙，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 66 then
			player:add_task(1066)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍群体治愈术，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 67 then
			player:add_task(1067)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍神光术，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 68 then
			player:add_task(1068)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍解毒术，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 69 then
			player:add_task(1069)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍魔法盾，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 70 then
			player:add_task(1070)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍爆裂火焰，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 71 then
			player:add_task(1071)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍疾光电影，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 72 then
			player:add_task(1072)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍道心清明，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 73 then
			player:add_task(1073)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍冰龙破，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 74 then
			player:add_task(1074)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍玄冰刃，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 75 then
			player:add_task(1075)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍地狱雷光，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 76 then
			player:add_task(1076)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍火墙，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 77 then
			player:add_task(1077)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍五雷轰，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 78 then
			player:add_task(1078)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍风影盾，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 79 then
			player:add_task(1079)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍圣言术，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 80 then
			player:add_task(1080)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍冰旋风，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 81 then
			player:add_task(1081)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍法之魄，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 82 then
			player:add_task(1082)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍兽灵术，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 83 then
			player:add_task(1083)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍护身真气，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 84 then
			player:add_task(1084)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍抱月刀，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 85 then
			player:add_task(1085)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍半月弯刀，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 86 then
			player:add_task(1086)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍野蛮冲撞，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 87 then
			player:add_task(1087)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍雷霆剑，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 88 then
			player:add_task(1088)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍烈火剑法，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 89 then
			player:add_task(1089)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍破击剑法，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 90 then
			player:add_task(1090)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍破盾斩，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 91 then
			player:add_task(1091)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍突斩，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 92 then
			player:add_task(1092)
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍战魂真悟，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		end
	end
	return { say = say, page = goto_page, close = close }
end

M["跨天重置"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("wcrwday") == 0 and 1 or 0)) ~= 0 then
		player:set_var("wcrwday", player:get_var_str("nowtimestamp"))
	end
	if ((player:check_next_day(player:get_var("wcrwday")) and 1 or 0)) ~= 0 then
		player:set_var("wcrwday", player:get_var_str("nowtimestamp"))
		player:set_var("wcrwcount", "0")
		player:set_var("wcrwbig", "0")
	end
	return { say = say, page = goto_page, close = close }
end

M["同步任务状态"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	player:set_var("wcrwtask", "0")
	if ((player:task_step(1001) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1001")
	end
	if ((player:task_step(1002) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1002")
	end
	if ((player:task_step(1003) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1003")
	end
	if ((player:task_step(1004) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1004")
	end
	if ((player:task_step(1005) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1005")
	end
	if ((player:task_step(1006) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1006")
	end
	if ((player:task_step(1007) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1007")
	end
	if ((player:task_step(1008) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1008")
	end
	if ((player:task_step(1009) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1009")
	end
	if ((player:task_step(1010) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1010")
	end
	if ((player:task_step(1011) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1011")
	end
	if ((player:task_step(1012) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1012")
	end
	if ((player:task_step(1013) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1013")
	end
	if ((player:task_step(1014) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1014")
	end
	if ((player:task_step(1015) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1015")
	end
	if ((player:task_step(1016) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1016")
	end
	if ((player:task_step(1017) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1017")
	end
	if ((player:task_step(1018) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1018")
	end
	if ((player:task_step(1019) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1019")
	end
	if ((player:task_step(1020) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1020")
	end
	if ((player:task_step(1021) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1021")
	end
	if ((player:task_step(1022) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1022")
	end
	if ((player:task_step(1023) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1023")
	end
	if ((player:task_step(1024) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1024")
	end
	if ((player:task_step(1025) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1025")
	end
	if ((player:task_step(1026) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1026")
	end
	if ((player:task_step(1027) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1027")
	end
	if ((player:task_step(1028) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1028")
	end
	if ((player:task_step(1029) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1029")
	end
	if ((player:task_step(1030) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1030")
	end
	if ((player:task_step(1031) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1031")
	end
	if ((player:task_step(1032) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1032")
	end
	if ((player:task_step(1033) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1033")
	end
	if ((player:task_step(1034) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1034")
	end
	if ((player:task_step(1035) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1035")
	end
	if ((player:task_step(1036) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1036")
	end
	if ((player:task_step(1037) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1037")
	end
	if ((player:task_step(1038) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1038")
	end
	if ((player:task_step(1039) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1039")
	end
	if ((player:task_step(1040) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1040")
	end
	if ((player:task_step(1041) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1041")
	end
	if ((player:task_step(1042) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1042")
	end
	if ((player:task_step(1043) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1043")
	end
	if ((player:task_step(1044) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1044")
	end
	if ((player:task_step(1045) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1045")
	end
	if ((player:task_step(1046) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1046")
	end
	if ((player:task_step(1047) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1047")
	end
	if ((player:task_step(1048) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1048")
	end
	if ((player:task_step(1049) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1049")
	end
	if ((player:task_step(1050) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1050")
	end
	if ((player:task_step(1051) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1051")
	end
	if ((player:task_step(1052) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1052")
	end
	if ((player:task_step(1053) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1053")
	end
	if ((player:task_step(1054) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1054")
	end
	if ((player:task_step(1055) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1055")
	end
	if ((player:task_step(1056) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1056")
	end
	if ((player:task_step(1057) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1057")
	end
	if ((player:task_step(1058) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1058")
	end
	if ((player:task_step(1059) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1059")
	end
	if ((player:task_step(1060) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1060")
	end
	if ((player:task_step(1061) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1061")
	end
	if ((player:task_step(1062) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1062")
	end
	if ((player:task_step(1063) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1063")
	end
	if ((player:task_step(1064) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1064")
	end
	if ((player:task_step(1065) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1065")
	end
	if ((player:task_step(1066) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1066")
	end
	if ((player:task_step(1067) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1067")
	end
	if ((player:task_step(1068) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1068")
	end
	if ((player:task_step(1069) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1069")
	end
	if ((player:task_step(1070) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1070")
	end
	if ((player:task_step(1071) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1071")
	end
	if ((player:task_step(1072) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1072")
	end
	if ((player:task_step(1073) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1073")
	end
	if ((player:task_step(1074) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1074")
	end
	if ((player:task_step(1075) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1075")
	end
	if ((player:task_step(1076) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1076")
	end
	if ((player:task_step(1077) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1077")
	end
	if ((player:task_step(1078) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1078")
	end
	if ((player:task_step(1079) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1079")
	end
	if ((player:task_step(1080) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1080")
	end
	if ((player:task_step(1081) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1081")
	end
	if ((player:task_step(1082) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1082")
	end
	if ((player:task_step(1083) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1083")
	end
	if ((player:task_step(1084) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1084")
	end
	if ((player:task_step(1085) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1085")
	end
	if ((player:task_step(1086) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1086")
	end
	if ((player:task_step(1087) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1087")
	end
	if ((player:task_step(1088) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1088")
	end
	if ((player:task_step(1089) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1089")
	end
	if ((player:task_step(1090) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1090")
	end
	if ((player:task_step(1091) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1091")
	end
	if ((player:task_step(1092) >= 1 and 1 or 0)) ~= 0 then
		player:set_var("wcrwtask", "1092")
	end
	return { say = say, page = goto_page, close = close }
end

M["大奖判定"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("wcrwcount") >= 10 and 1 or 0)) ~= 0 and ((player:get_var("wcrwbig") == 0 and 1 or 0)) ~= 0 then
		player:set_var("wcrwbig", "1")
		player:give_exp(500000)
		player:add_gold(200000)
		player:add_yuanbao(5)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "恭喜！你完成了今日全部10个王城诏令任务，额外获得经验500000、金币200000、元宝5个！")
	end
	return { say = say, page = goto_page, close = close }
end

M["发任务"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	do
		local __sel = ScriptEngine.range_random(1, 92)
		if __sel == 1 then
			player:add_task(1001)
			player:set_var("wcrwtask", "1001")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个僵尸\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 2 then
			player:add_task(1002)
			player:set_var("wcrwtask", "1002")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个尸王\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 3 then
			player:add_task(1003)
			player:set_var("wcrwtask", "1003")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个尸卫战将\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 4 then
			player:add_task(1004)
			player:set_var("wcrwtask", "1004")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个尸卫\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 5 then
			player:add_task(1005)
			player:set_var("wcrwtask", "1005")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个尸卫勇士\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 6 then
			player:add_task(1006)
			player:set_var("wcrwtask", "1006")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个铜人\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 7 then
			player:add_task(1007)
			player:set_var("wcrwtask", "1007")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个青铜兽\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 8 then
			player:add_task(1008)
			player:set_var("wcrwtask", "1008")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个石人\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 9 then
			player:add_task(1009)
			player:set_var("wcrwtask", "1009")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个铜锤手\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 10 then
			player:add_task(1010)
			player:set_var("wcrwtask", "1010")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个金刚人\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 11 then
			player:add_task(1011)
			player:set_var("wcrwtask", "1011")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭5个沙怪\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 12 then
			player:add_task(1012)
			player:set_var("wcrwtask", "1012")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭5个沙雕\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 13 then
			player:add_task(1013)
			player:set_var("wcrwtask", "1013")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭5个仙人掌\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 14 then
			player:add_task(1014)
			player:set_var("wcrwtask", "1014")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭5个土狼\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 15 then
			player:add_task(1015)
			player:set_var("wcrwtask", "1015")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭5个巨猿\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 16 then
			player:add_task(1016)
			player:set_var("wcrwtask", "1016")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭5个大土蛇\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 17 then
			player:add_task(1017)
			player:set_var("wcrwtask", "1017")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个红蛇妖\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 18 then
			player:add_task(1018)
			player:set_var("wcrwtask", "1018")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个黑蛇妖\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 19 then
			player:add_task(1019)
			player:set_var("wcrwtask", "1019")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个圣甲虫\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 20 then
			player:add_task(1020)
			player:set_var("wcrwtask", "1020")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个魔甲虫\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 21 then
			player:add_task(1021)
			player:set_var("wcrwtask", "1021")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个白蛇妖\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 22 then
			player:add_task(1022)
			player:set_var("wcrwtask", "1022")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个地下小鬼\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 23 then
			player:add_task(1023)
			player:set_var("wcrwtask", "1023")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个逆魔卫士\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 24 then
			player:add_task(1024)
			player:set_var("wcrwtask", "1024")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个逆魔弓箭手\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 25 then
			player:add_task(1025)
			player:set_var("wcrwtask", "1025")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个逆魔侍卫\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 26 then
			player:add_task(1026)
			player:set_var("wcrwtask", "1026")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个逆魔雕像\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 27 then
			player:add_task(1027)
			player:set_var("wcrwtask", "1027")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个毒妖\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 28 then
			player:add_task(1028)
			player:set_var("wcrwtask", "1028")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个血妖\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 29 then
			player:add_task(1029)
			player:set_var("wcrwtask", "1029")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个藤妖\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 30 then
			player:add_task(1030)
			player:set_var("wcrwtask", "1030")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个火烈鸟\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 31 then
			player:add_task(1031)
			player:set_var("wcrwtask", "1031")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个兽骑兵\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 32 then
			player:add_task(1032)
			player:set_var("wcrwtask", "1032")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个兽骑统领\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 33 then
			player:add_task(1033)
			player:set_var("wcrwtask", "1033")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个召魂使\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 34 then
			player:add_task(1034)
			player:set_var("wcrwtask", "1034")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个幽魂\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 35 then
			player:add_task(1035)
			player:set_var("wcrwtask", "1035")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个鬼方火卒\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 36 then
			player:add_task(1036)
			player:set_var("wcrwtask", "1036")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个猛魔枪卒\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 37 then
			player:add_task(1037)
			player:set_var("wcrwtask", "1037")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个猛魔统领\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 38 then
			player:add_task(1038)
			player:set_var("wcrwtask", "1038")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个炎魔\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 39 then
			player:add_task(1039)
			player:set_var("wcrwtask", "1039")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个地火弓箭手\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 40 then
			player:add_task(1040)
			player:set_var("wcrwtask", "1040")
			say = say .. "\\"
			say = say .. "这次要完成的任务是剿灭1个地火投矛手\\"
			say = say .. "完成任务后回到这里，还能得到奖励\\"
			say = say .. "<离开/@exit>"
		elseif __sel == 41 then
			player:add_task(1041)
			player:set_var("wcrwtask", "1041")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质1以上的猪肉，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 42 then
			player:add_task(1042)
			player:set_var("wcrwtask", "1042")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质1以上的鹿肉，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 43 then
			player:add_task(1043)
			player:set_var("wcrwtask", "1043")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质1以上的兔肉，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 44 then
			player:add_task(1044)
			player:set_var("wcrwtask", "1044")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质1以上的牛肉，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 45 then
			player:add_task(1045)
			player:set_var("wcrwtask", "1045")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份毒蜘蛛的牙齿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 46 then
			player:add_task(1046)
			player:set_var("wcrwtask", "1046")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份食人花的果实，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 47 then
			player:add_task(1047)
			player:set_var("wcrwtask", "1047")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份食人花的叶子然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 48 then
			player:add_task(1048)
			player:set_var("wcrwtask", "1048")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份蝎子的尾巴，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 49 then
			player:add_task(1049)
			player:set_var("wcrwtask", "1049")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份洞蛆的蛆卵，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 50 then
			player:add_task(1050)
			player:set_var("wcrwtask", "1050")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质10以上的铜矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 51 then
			player:add_task(1051)
			player:set_var("wcrwtask", "1051")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质10以上的铁矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 52 then
			player:add_task(1052)
			player:set_var("wcrwtask", "1052")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质10以上的银矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 53 then
			player:add_task(1053)
			player:set_var("wcrwtask", "1053")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质10以上的金矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 54 then
			player:add_task(1054)
			player:set_var("wcrwtask", "1054")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质10以上的黑铁矿石，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 55 then
			player:add_task(1055)
			player:set_var("wcrwtask", "1055")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质15以上的铜矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 56 then
			player:add_task(1056)
			player:set_var("wcrwtask", "1056")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质15以上的铁矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 57 then
			player:add_task(1057)
			player:set_var("wcrwtask", "1057")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质15以上的银矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 58 then
			player:add_task(1058)
			player:set_var("wcrwtask", "1058")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质15以上的金矿，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 59 then
			player:add_task(1059)
			player:set_var("wcrwtask", "1059")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份品质15以上的黑铁矿石，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 60 then
			player:add_task(1060)
			player:set_var("wcrwtask", "1060")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份马牌(空)，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 61 then
			player:add_task(1061)
			player:set_var("wcrwtask", "1061")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1份魔神雕像，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 62 then
			player:add_task(1062)
			player:set_var("wcrwtask", "1062")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍狮子吼，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 63 then
			player:add_task(1063)
			player:set_var("wcrwtask", "1063")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍神圣战甲术，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 64 then
			player:add_task(1064)
			player:set_var("wcrwtask", "1064")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍幽灵盾，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 65 then
			player:add_task(1065)
			player:set_var("wcrwtask", "1065")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍灵魂墙，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 66 then
			player:add_task(1066)
			player:set_var("wcrwtask", "1066")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍群体治愈术，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 67 then
			player:add_task(1067)
			player:set_var("wcrwtask", "1067")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍神光术，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 68 then
			player:add_task(1068)
			player:set_var("wcrwtask", "1068")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍解毒术，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 69 then
			player:add_task(1069)
			player:set_var("wcrwtask", "1069")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍魔法盾，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 70 then
			player:add_task(1070)
			player:set_var("wcrwtask", "1070")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍爆裂火焰，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 71 then
			player:add_task(1071)
			player:set_var("wcrwtask", "1071")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍疾光电影，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 72 then
			player:add_task(1072)
			player:set_var("wcrwtask", "1072")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本道士书籍道心清明，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 73 then
			player:add_task(1073)
			player:set_var("wcrwtask", "1073")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍冰龙破，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 74 then
			player:add_task(1074)
			player:set_var("wcrwtask", "1074")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍玄冰刃，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 75 then
			player:add_task(1075)
			player:set_var("wcrwtask", "1075")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍地狱雷光，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 76 then
			player:add_task(1076)
			player:set_var("wcrwtask", "1076")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍火墙，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 77 then
			player:add_task(1077)
			player:set_var("wcrwtask", "1077")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍五雷轰，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 78 then
			player:add_task(1078)
			player:set_var("wcrwtask", "1078")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍风影盾，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 79 then
			player:add_task(1079)
			player:set_var("wcrwtask", "1079")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍圣言术，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 80 then
			player:add_task(1080)
			player:set_var("wcrwtask", "1080")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍冰旋风，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 81 then
			player:add_task(1081)
			player:set_var("wcrwtask", "1081")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍法之魄，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 82 then
			player:add_task(1082)
			player:set_var("wcrwtask", "1082")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本法师书籍兽灵术，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 83 then
			player:add_task(1083)
			player:set_var("wcrwtask", "1083")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍护身真气，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 84 then
			player:add_task(1084)
			player:set_var("wcrwtask", "1084")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍抱月刀，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 85 then
			player:add_task(1085)
			player:set_var("wcrwtask", "1085")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍半月弯刀，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 86 then
			player:add_task(1086)
			player:set_var("wcrwtask", "1086")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍野蛮冲撞，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 87 then
			player:add_task(1087)
			player:set_var("wcrwtask", "1087")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍雷霆剑，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 88 then
			player:add_task(1088)
			player:set_var("wcrwtask", "1088")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍烈火剑法，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 89 then
			player:add_task(1089)
			player:set_var("wcrwtask", "1089")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍破击剑法，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 90 then
			player:add_task(1090)
			player:set_var("wcrwtask", "1090")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍破盾斩，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 91 then
			player:add_task(1091)
			player:set_var("wcrwtask", "1091")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍突斩，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		elseif __sel == 92 then
			player:add_task(1092)
			player:set_var("wcrwtask", "1092")
			say = say .. "\\"
			say = say .. "传世大陆近日妖孽横行，魔焰嚣张，中州王城急\\"
			say = say .. "需扩充军用物资，作为王城的新兵，请你出城搜寻\\"
			say = say .. "1本战士书籍战魂真悟，然后到我这里登记。\\"
			say = say .. "<好的/@exit>"
		else
			say = say .. "任务发放出现异常，请返回重试。\\"
			say = say .. "<返回/@访问王城任务>"
		end
	end
	return { say = say, page = goto_page, close = close }
end

M["接任务"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "王城诏令", "跨天重置")
	ScriptEngine.call(player, "王城诏令", "同步任务状态")
	if ((player:get_var("wcrwcount") >= 10 and 1 or 0)) ~= 0 then
		say = say .. "你今天已经完成了10个王城诏令任务，明天再来吧。\\"
		say = say .. "<离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:get_var("wcrwtask") > 0 and 1 or 0)) ~= 0 then
		say = say .. "你身上已经有进行中的王城诏令任务了。\\"
		say = say .. "<查看任务进度/@任务进度>          <放弃当前任务/@放弃任务>\\"
		say = say .. "<离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	ScriptEngine.call(player, "王城诏令", "发任务")
	return { say = say, page = goto_page, close = close }
end

M["领取奖励"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "王城诏令", "跨天重置")
	ScriptEngine.call(player, "王城诏令", "同步任务状态")
	if ((player:task_step(1001) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1001)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭僵尸】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1002) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1002)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个尸王】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1003) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1003)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个尸卫战将】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1004) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1004)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个尸卫】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1005) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1005)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个尸卫勇士】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1006) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1006)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个铜人】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1007) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1007)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个青铜兽】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1008) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1008)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个石人】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1009) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1009)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个铜锤手】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1010) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1010)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个金刚人】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1011) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1011)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(100000)
		player:add_gold(25000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭5个沙怪】，获得经验100000、金币25000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1012) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1012)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(100000)
		player:add_gold(25000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭5个沙雕】，获得经验100000、金币25000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1013) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1013)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(100000)
		player:add_gold(25000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭5个仙人掌】，获得经验100000、金币25000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1014) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1014)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(100000)
		player:add_gold(25000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭5个土狼】，获得经验100000、金币25000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1015) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1015)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(100000)
		player:add_gold(25000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭5个巨猿】，获得经验100000、金币25000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1016) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1016)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(100000)
		player:add_gold(25000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭5个大土蛇】，获得经验100000、金币25000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1017) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1017)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个红蛇妖】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1018) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1018)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个黑蛇妖】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1019) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1019)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个圣甲虫】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1020) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1020)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个魔甲虫】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1021) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1021)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个白蛇妖】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1022) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1022)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个地下小鬼】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1023) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1023)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个逆魔卫士】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1024) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1024)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个逆魔弓箭手】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1025) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1025)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个逆魔侍卫】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1026) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1026)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个逆魔雕像】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1027) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1027)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个毒妖】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1028) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1028)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个血妖】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1029) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1029)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个藤妖】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1030) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1030)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个火烈鸟】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1031) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1031)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个兽骑兵】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1032) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1032)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个兽骑统领】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1033) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1033)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个召魂使】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1034) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1034)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个幽魂】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1035) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1035)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个鬼方火卒】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1036) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1036)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个猛魔枪卒】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1037) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1037)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个猛魔统领】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1038) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1038)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个炎魔】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1039) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1039)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个地火弓箭手】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1040) >= 2 and 1 or 0)) ~= 0 then
		player:complete_task(1040)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(30000)
		player:add_gold(8000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你完成了【王城诏令--剿灭1个地火投矛手】，获得经验30000、金币8000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1041) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("猪肉", 1) and 1 or 0)) ~= 0 then
		player:take_item("猪肉", 1)
		player:complete_task(1041)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(120000)
		player:add_gold(30000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份猪肉，完成了【王城诏令--搜寻物资猪肉】，获得经验120000、金币30000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1042) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("鹿肉", 1) and 1 or 0)) ~= 0 then
		player:take_item("鹿肉", 1)
		player:complete_task(1042)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(120000)
		player:add_gold(30000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份鹿肉，完成了【王城诏令--搜寻物资鹿肉】，获得经验120000、金币30000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1043) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("兔肉", 1) and 1 or 0)) ~= 0 then
		player:take_item("兔肉", 1)
		player:complete_task(1043)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(120000)
		player:add_gold(30000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份兔肉，完成了【王城诏令--搜寻物资兔肉】，获得经验120000、金币30000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1044) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("猪肉", 1) and 1 or 0)) ~= 0 then
		player:take_item("猪肉", 1)
		player:complete_task(1044)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(120000)
		player:add_gold(30000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份猪肉，完成了【王城诏令--搜寻物资牛肉】，获得经验120000、金币30000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1045) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("蝎尾", 1) and 1 or 0)) ~= 0 then
		player:take_item("蝎尾", 1)
		player:complete_task(1045)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(120000)
		player:add_gold(30000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份蝎尾，完成了【王城诏令--搜寻物资毒蜘蛛牙齿】，获得经验120000、金币30000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1046) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("果实", 1) and 1 or 0)) ~= 0 then
		player:take_item("果实", 1)
		player:complete_task(1046)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(120000)
		player:add_gold(30000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份果实，完成了【王城诏令--搜寻物资食人花果实】，获得经验120000、金币30000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1047) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("叶子", 1) and 1 or 0)) ~= 0 then
		player:take_item("叶子", 1)
		player:complete_task(1047)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(120000)
		player:add_gold(30000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份叶子，完成了【王城诏令--搜寻物资叶子】，获得经验120000、金币30000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1048) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("蝎尾", 1) and 1 or 0)) ~= 0 then
		player:take_item("蝎尾", 1)
		player:complete_task(1048)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(120000)
		player:add_gold(30000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份蝎尾，完成了【王城诏令--搜寻物资蝎子尾巴】，获得经验120000、金币30000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1049) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("蛆卵", 1) and 1 or 0)) ~= 0 then
		player:take_item("蛆卵", 1)
		player:complete_task(1049)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(120000)
		player:add_gold(30000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份蛆卵，完成了【王城诏令--搜寻物资洞蛆的蛆卵】，获得经验120000、金币30000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1050) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("铜矿", 1) and 1 or 0)) ~= 0 then
		player:take_item("铜矿", 1)
		player:complete_task(1050)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(150000)
		player:add_gold(40000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份铜矿，完成了【王城诏令--搜寻物资铜矿】，获得经验150000、金币40000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1051) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("铁矿", 1) and 1 or 0)) ~= 0 then
		player:take_item("铁矿", 1)
		player:complete_task(1051)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(150000)
		player:add_gold(40000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份铁矿，完成了【王城诏令--搜寻物资铁矿】，获得经验150000、金币40000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1052) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("银矿", 1) and 1 or 0)) ~= 0 then
		player:take_item("银矿", 1)
		player:complete_task(1052)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(150000)
		player:add_gold(40000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份银矿，完成了【王城诏令--搜寻物资银矿】，获得经验150000、金币40000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1053) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("金矿", 1) and 1 or 0)) ~= 0 then
		player:take_item("金矿", 1)
		player:complete_task(1053)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(150000)
		player:add_gold(40000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份金矿，完成了【王城诏令--搜寻物资金矿】，获得经验150000、金币40000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1054) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("黑铁矿石", 1) and 1 or 0)) ~= 0 then
		player:take_item("黑铁矿石", 1)
		player:complete_task(1054)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(150000)
		player:add_gold(40000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份黑铁矿石，完成了【王城诏令--搜寻物资黑铁矿石】，获得经验150000、金币40000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1055) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("铜矿", 1) and 1 or 0)) ~= 0 then
		player:take_item("铜矿", 1)
		player:complete_task(1055)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(150000)
		player:add_gold(40000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份铜矿，完成了【王城诏令--搜寻物资铜矿】，获得经验150000、金币40000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1056) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("铁矿", 1) and 1 or 0)) ~= 0 then
		player:take_item("铁矿", 1)
		player:complete_task(1056)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(150000)
		player:add_gold(40000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份铁矿，完成了【王城诏令--搜寻物资铁矿】，获得经验150000、金币40000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1057) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("银矿", 1) and 1 or 0)) ~= 0 then
		player:take_item("银矿", 1)
		player:complete_task(1057)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(150000)
		player:add_gold(40000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份银矿，完成了【王城诏令--搜寻物资银矿】，获得经验150000、金币40000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1058) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("金矿", 1) and 1 or 0)) ~= 0 then
		player:take_item("金矿", 1)
		player:complete_task(1058)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(150000)
		player:add_gold(40000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份金矿，完成了【王城诏令--搜寻物资金矿】，获得经验150000、金币40000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1059) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("黑铁矿石", 1) and 1 or 0)) ~= 0 then
		player:take_item("黑铁矿石", 1)
		player:complete_task(1059)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(150000)
		player:add_gold(40000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份黑铁矿石，完成了【王城诏令--搜寻物资黑铁矿石】，获得经验150000、金币40000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1060) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("马牌(空)", 1) and 1 or 0)) ~= 0 then
		player:take_item("马牌(空)", 1)
		player:complete_task(1060)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份马牌(空)，完成了【王城诏令--搜寻物资马牌(空)】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1061) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("魔神雕像", 1) and 1 or 0)) ~= 0 then
		player:take_item("魔神雕像", 1)
		player:complete_task(1061)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份魔神雕像，完成了【王城诏令--搜寻物资魔神雕像】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1062) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("狮子吼", 1) and 1 or 0)) ~= 0 then
		player:take_item("狮子吼", 1)
		player:complete_task(1062)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份狮子吼，完成了【王城诏令--搜寻物资狮子吼】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1063) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("神圣战甲术", 1) and 1 or 0)) ~= 0 then
		player:take_item("神圣战甲术", 1)
		player:complete_task(1063)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份神圣战甲术，完成了【王城诏令--搜寻物资神圣战甲术】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1064) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("幽灵盾", 1) and 1 or 0)) ~= 0 then
		player:take_item("幽灵盾", 1)
		player:complete_task(1064)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份幽灵盾，完成了【王城诏令--搜寻物资幽灵盾】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1065) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("灵魂墙", 1) and 1 or 0)) ~= 0 then
		player:take_item("灵魂墙", 1)
		player:complete_task(1065)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份灵魂墙，完成了【王城诏令--搜寻物资灵魂墙】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1066) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("群体治愈术", 1) and 1 or 0)) ~= 0 then
		player:take_item("群体治愈术", 1)
		player:complete_task(1066)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份群体治愈术，完成了【王城诏令--搜寻物资群体治愈术】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1067) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("神光术", 1) and 1 or 0)) ~= 0 then
		player:take_item("神光术", 1)
		player:complete_task(1067)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份神光术，完成了【王城诏令--搜寻物资神光术】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1068) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("解毒术", 1) and 1 or 0)) ~= 0 then
		player:take_item("解毒术", 1)
		player:complete_task(1068)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份解毒术，完成了【王城诏令--搜寻物资解毒术】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1069) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("魔法盾", 1) and 1 or 0)) ~= 0 then
		player:take_item("魔法盾", 1)
		player:complete_task(1069)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份魔法盾，完成了【王城诏令--搜寻物资魔法盾】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1070) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("爆裂火焰", 1) and 1 or 0)) ~= 0 then
		player:take_item("爆裂火焰", 1)
		player:complete_task(1070)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份爆裂火焰，完成了【王城诏令--搜寻物资爆裂火焰】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1071) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("疾光电影", 1) and 1 or 0)) ~= 0 then
		player:take_item("疾光电影", 1)
		player:complete_task(1071)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份疾光电影，完成了【王城诏令--搜寻物资疾光电影】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1072) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("道心清明", 1) and 1 or 0)) ~= 0 then
		player:take_item("道心清明", 1)
		player:complete_task(1072)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份道心清明，完成了【王城诏令--搜寻物资道心清明】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1073) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("冰龙破", 1) and 1 or 0)) ~= 0 then
		player:take_item("冰龙破", 1)
		player:complete_task(1073)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份冰龙破，完成了【王城诏令--搜寻物资冰龙破】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1074) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("玄冰刃", 1) and 1 or 0)) ~= 0 then
		player:take_item("玄冰刃", 1)
		player:complete_task(1074)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份玄冰刃，完成了【王城诏令--搜寻物资玄冰刃】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1075) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("地狱雷光", 1) and 1 or 0)) ~= 0 then
		player:take_item("地狱雷光", 1)
		player:complete_task(1075)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份地狱雷光，完成了【王城诏令--搜寻物资地狱雷光】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1076) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("火墙", 1) and 1 or 0)) ~= 0 then
		player:take_item("火墙", 1)
		player:complete_task(1076)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份火墙，完成了【王城诏令--搜寻物资火墙】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1077) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("五雷轰", 1) and 1 or 0)) ~= 0 then
		player:take_item("五雷轰", 1)
		player:complete_task(1077)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份五雷轰，完成了【王城诏令--搜寻物资五雷轰】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1078) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("风影盾", 1) and 1 or 0)) ~= 0 then
		player:take_item("风影盾", 1)
		player:complete_task(1078)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份风影盾，完成了【王城诏令--搜寻物资风影盾】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1079) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("圣言术", 1) and 1 or 0)) ~= 0 then
		player:take_item("圣言术", 1)
		player:complete_task(1079)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份圣言术，完成了【王城诏令--搜寻物资圣言术】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1080) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("冰旋风", 1) and 1 or 0)) ~= 0 then
		player:take_item("冰旋风", 1)
		player:complete_task(1080)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份冰旋风，完成了【王城诏令--搜寻物资冰旋风】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1081) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("法之魄", 1) and 1 or 0)) ~= 0 then
		player:take_item("法之魄", 1)
		player:complete_task(1081)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份法之魄，完成了【王城诏令--搜寻物资法之魄】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1082) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("兽灵术", 1) and 1 or 0)) ~= 0 then
		player:take_item("兽灵术", 1)
		player:complete_task(1082)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份兽灵术，完成了【王城诏令--搜寻物资兽灵术】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1083) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("护身真气", 1) and 1 or 0)) ~= 0 then
		player:take_item("护身真气", 1)
		player:complete_task(1083)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份护身真气，完成了【王城诏令--搜寻物资护身真气】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1084) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("抱月刀", 1) and 1 or 0)) ~= 0 then
		player:take_item("抱月刀", 1)
		player:complete_task(1084)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份抱月刀，完成了【王城诏令--搜寻物资抱月刀】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1085) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("半月弯刀", 1) and 1 or 0)) ~= 0 then
		player:take_item("半月弯刀", 1)
		player:complete_task(1085)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份半月弯刀，完成了【王城诏令--搜寻物资半月弯刀】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1086) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("野蛮冲撞", 1) and 1 or 0)) ~= 0 then
		player:take_item("野蛮冲撞", 1)
		player:complete_task(1086)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份野蛮冲撞，完成了【王城诏令--搜寻物资野蛮冲撞】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1087) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("雷霆剑", 1) and 1 or 0)) ~= 0 then
		player:take_item("雷霆剑", 1)
		player:complete_task(1087)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份雷霆剑，完成了【王城诏令--搜寻物资雷霆剑】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1088) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("烈火剑法", 1) and 1 or 0)) ~= 0 then
		player:take_item("烈火剑法", 1)
		player:complete_task(1088)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份烈火剑法，完成了【王城诏令--搜寻物资烈火剑法】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1089) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("破击剑法", 1) and 1 or 0)) ~= 0 then
		player:take_item("破击剑法", 1)
		player:complete_task(1089)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份破击剑法，完成了【王城诏令--搜寻物资破击剑法】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1090) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("破盾斩", 1) and 1 or 0)) ~= 0 then
		player:take_item("破盾斩", 1)
		player:complete_task(1090)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份破盾斩，完成了【王城诏令--搜寻物资破盾斩】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1091) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("突斩", 1) and 1 or 0)) ~= 0 then
		player:take_item("突斩", 1)
		player:complete_task(1091)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份突斩，完成了【王城诏令--搜寻物资突斩】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:task_step(1092) >= 1 and 1 or 0)) ~= 0 and ((player:has_item("战魂真悟", 1) and 1 or 0)) ~= 0 then
		player:take_item("战魂真悟", 1)
		player:complete_task(1092)
		player:set_var("wcrwtask", "0")
		player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
		player:give_exp(300000)
		player:add_gold(80000)
		ScriptEngine.call(player, "王城诏令", "大奖判定")
		say = say .. "你上交了1份战魂真悟，完成了【王城诏令--搜寻物资战魂真悟】，获得经验300000、金币80000。\\"
		say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if (1) ~= 0 then
		say = say .. "你当前没有可领取奖励的王城诏令任务。\\"
		say = say .. "<查看任务进度/@任务进度>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	return { say = say, page = goto_page, close = close }
end

M["快速完成"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "王城诏令", "跨天重置")
	ScriptEngine.call(player, "王城诏令", "同步任务状态")
	if ((player:get_var("wcrwtask") <= 0 and 1 or 0)) ~= 0 then
		say = say .. "你现在没有进行中的王城诏令任务。\\"
		say = say .. "<我要接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:get_var("wcrwcount") >= 10 and 1 or 0)) ~= 0 then
		say = say .. "你今天已经完成了10个王城诏令任务，无法再快速完成。\\"
		say = say .. "<离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	say = say .. "是否花费2个元宝，直接完成当前的王城诏令任务？\\"
	say = say .. "<确认，花费2元宝完成/@快速完成处理>          <返回/@任务进度>"
	return { say = say, page = goto_page, close = close }
end

M["快速完成处理"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "王城诏令", "同步任务状态")
	if ((player:get_var("wcrwtask") <= 0 and 1 or 0)) ~= 0 then
		say = say .. "你现在没有进行中的王城诏令任务。\\"
		say = say .. "<离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if ((player:get_var("yuanbao") < 2 and 1 or 0)) ~= 0 then
		say = say .. "你的元宝不足，无法快速完成任务。\\"
		say = say .. "<离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	player:take_yuanbao(2)
	do
		local __sel = player:get_var("wcrwtask")
		if __sel == 1001 then
			player:complete_task(1001)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭僵尸】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1002 then
			player:complete_task(1002)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个尸王】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1003 then
			player:complete_task(1003)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个尸卫战将】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1004 then
			player:complete_task(1004)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个尸卫】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1005 then
			player:complete_task(1005)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个尸卫勇士】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1006 then
			player:complete_task(1006)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个铜人】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1007 then
			player:complete_task(1007)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个青铜兽】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1008 then
			player:complete_task(1008)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个石人】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1009 then
			player:complete_task(1009)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个铜锤手】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1010 then
			player:complete_task(1010)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个金刚人】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1011 then
			player:complete_task(1011)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(100000)
			player:add_gold(25000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭5个沙怪】，获得经验100000、金币25000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1012 then
			player:complete_task(1012)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(100000)
			player:add_gold(25000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭5个沙雕】，获得经验100000、金币25000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1013 then
			player:complete_task(1013)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(100000)
			player:add_gold(25000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭5个仙人掌】，获得经验100000、金币25000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1014 then
			player:complete_task(1014)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(100000)
			player:add_gold(25000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭5个土狼】，获得经验100000、金币25000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1015 then
			player:complete_task(1015)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(100000)
			player:add_gold(25000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭5个巨猿】，获得经验100000、金币25000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1016 then
			player:complete_task(1016)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(100000)
			player:add_gold(25000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭5个大土蛇】，获得经验100000、金币25000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1017 then
			player:complete_task(1017)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个红蛇妖】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1018 then
			player:complete_task(1018)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个黑蛇妖】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1019 then
			player:complete_task(1019)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个圣甲虫】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1020 then
			player:complete_task(1020)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个魔甲虫】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1021 then
			player:complete_task(1021)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个白蛇妖】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1022 then
			player:complete_task(1022)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个地下小鬼】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1023 then
			player:complete_task(1023)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个逆魔卫士】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1024 then
			player:complete_task(1024)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个逆魔弓箭手】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1025 then
			player:complete_task(1025)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个逆魔侍卫】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1026 then
			player:complete_task(1026)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个逆魔雕像】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1027 then
			player:complete_task(1027)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个毒妖】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1028 then
			player:complete_task(1028)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个血妖】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1029 then
			player:complete_task(1029)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个藤妖】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1030 then
			player:complete_task(1030)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个火烈鸟】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1031 then
			player:complete_task(1031)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个兽骑兵】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1032 then
			player:complete_task(1032)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个兽骑统领】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1033 then
			player:complete_task(1033)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个召魂使】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1034 then
			player:complete_task(1034)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个幽魂】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1035 then
			player:complete_task(1035)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个鬼方火卒】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1036 then
			player:complete_task(1036)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个猛魔枪卒】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1037 then
			player:complete_task(1037)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个猛魔统领】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1038 then
			player:complete_task(1038)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个炎魔】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1039 then
			player:complete_task(1039)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个地火弓箭手】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1040 then
			player:complete_task(1040)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(30000)
			player:add_gold(8000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--剿灭1个地火投矛手】，获得经验30000、金币8000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1041 then
			player:complete_task(1041)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(120000)
			player:add_gold(30000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资猪肉】，获得经验120000、金币30000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1042 then
			player:complete_task(1042)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(120000)
			player:add_gold(30000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资鹿肉】，获得经验120000、金币30000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1043 then
			player:complete_task(1043)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(120000)
			player:add_gold(30000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资兔肉】，获得经验120000、金币30000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1044 then
			player:complete_task(1044)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(120000)
			player:add_gold(30000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资牛肉】，获得经验120000、金币30000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1045 then
			player:complete_task(1045)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(120000)
			player:add_gold(30000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资毒蜘蛛牙齿】，获得经验120000、金币30000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1046 then
			player:complete_task(1046)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(120000)
			player:add_gold(30000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资食人花果实】，获得经验120000、金币30000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1047 then
			player:complete_task(1047)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(120000)
			player:add_gold(30000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资叶子】，获得经验120000、金币30000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1048 then
			player:complete_task(1048)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(120000)
			player:add_gold(30000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资蝎子尾巴】，获得经验120000、金币30000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1049 then
			player:complete_task(1049)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(120000)
			player:add_gold(30000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资洞蛆的蛆卵】，获得经验120000、金币30000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1050 then
			player:complete_task(1050)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(150000)
			player:add_gold(40000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资铜矿】，获得经验150000、金币40000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1051 then
			player:complete_task(1051)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(150000)
			player:add_gold(40000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资铁矿】，获得经验150000、金币40000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1052 then
			player:complete_task(1052)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(150000)
			player:add_gold(40000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资银矿】，获得经验150000、金币40000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1053 then
			player:complete_task(1053)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(150000)
			player:add_gold(40000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资金矿】，获得经验150000、金币40000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1054 then
			player:complete_task(1054)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(150000)
			player:add_gold(40000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资黑铁矿石】，获得经验150000、金币40000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1055 then
			player:complete_task(1055)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(150000)
			player:add_gold(40000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资铜矿】，获得经验150000、金币40000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1056 then
			player:complete_task(1056)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(150000)
			player:add_gold(40000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资铁矿】，获得经验150000、金币40000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1057 then
			player:complete_task(1057)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(150000)
			player:add_gold(40000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资银矿】，获得经验150000、金币40000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1058 then
			player:complete_task(1058)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(150000)
			player:add_gold(40000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资金矿】，获得经验150000、金币40000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1059 then
			player:complete_task(1059)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(150000)
			player:add_gold(40000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资黑铁矿石】，获得经验150000、金币40000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1060 then
			player:complete_task(1060)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资马牌(空)】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1061 then
			player:complete_task(1061)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资魔神雕像】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1062 then
			player:complete_task(1062)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资狮子吼】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1063 then
			player:complete_task(1063)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资神圣战甲术】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1064 then
			player:complete_task(1064)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资幽灵盾】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1065 then
			player:complete_task(1065)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资灵魂墙】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1066 then
			player:complete_task(1066)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资群体治愈术】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1067 then
			player:complete_task(1067)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资神光术】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1068 then
			player:complete_task(1068)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资解毒术】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1069 then
			player:complete_task(1069)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资魔法盾】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1070 then
			player:complete_task(1070)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资爆裂火焰】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1071 then
			player:complete_task(1071)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资疾光电影】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1072 then
			player:complete_task(1072)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资道心清明】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1073 then
			player:complete_task(1073)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资冰龙破】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1074 then
			player:complete_task(1074)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资玄冰刃】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1075 then
			player:complete_task(1075)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资地狱雷光】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1076 then
			player:complete_task(1076)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资火墙】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1077 then
			player:complete_task(1077)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资五雷轰】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1078 then
			player:complete_task(1078)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资风影盾】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1079 then
			player:complete_task(1079)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资圣言术】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1080 then
			player:complete_task(1080)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资冰旋风】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1081 then
			player:complete_task(1081)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资法之魄】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1082 then
			player:complete_task(1082)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资兽灵术】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1083 then
			player:complete_task(1083)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资护身真气】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1084 then
			player:complete_task(1084)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资抱月刀】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1085 then
			player:complete_task(1085)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资半月弯刀】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1086 then
			player:complete_task(1086)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资野蛮冲撞】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1087 then
			player:complete_task(1087)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资雷霆剑】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1088 then
			player:complete_task(1088)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资烈火剑法】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1089 then
			player:complete_task(1089)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资破击剑法】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1090 then
			player:complete_task(1090)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资破盾斩】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1091 then
			player:complete_task(1091)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资突斩】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		elseif __sel == 1092 then
			player:complete_task(1092)
			player:set_var("wcrwtask", "0")
			player:set_var("wcrwcount", player:get_var("wcrwcount") + 1)
			player:give_exp(300000)
			player:add_gold(80000)
			ScriptEngine.call(player, "王城诏令", "大奖判定")
			say = say .. "你花费2元宝直接完成了【王城诏令--搜寻物资战魂真悟】，获得经验300000、金币80000。\\"
			say = say .. "<继续接任务/@接任务>          <离开/@exit>"
		else
			say = say .. "发生异常：未找到当前任务。\\"
			say = say .. "<离开/@exit>"
		end
	end
	return { say = say, page = goto_page, close = close }
end

M["任务进度"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "王城诏令", "跨天重置")
	ScriptEngine.call(player, "王城诏令", "同步任务状态")
	if ((player:get_var("wcrwtask") <= 0 and 1 or 0)) ~= 0 then
		say = say .. "你现在没有进行中的王城诏令任务。\\"
		say = say .. "<我要接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	do
		local __sel = player:get_var("wcrwtask")
		if __sel == 1001 then
			say = say .. "当前任务：王城诏令--剿灭僵尸（半身僵尸、喷血僵尸、手铐僵尸、钻地僵尸、黑衣僵尸均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1002 then
			say = say .. "当前任务：王城诏令--剿灭1个尸王（尸王均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1003 then
			say = say .. "当前任务：王城诏令--剿灭1个尸卫战将（尸卫战将均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1004 then
			say = say .. "当前任务：王城诏令--剿灭1个尸卫（尸卫均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1005 then
			say = say .. "当前任务：王城诏令--剿灭1个尸卫勇士（尸卫勇士均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1006 then
			say = say .. "当前任务：王城诏令--剿灭1个铜人（铜人均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1007 then
			say = say .. "当前任务：王城诏令--剿灭1个青铜兽（青铜兽均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1008 then
			say = say .. "当前任务：王城诏令--剿灭1个石人（石人均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1009 then
			say = say .. "当前任务：王城诏令--剿灭1个铜锤手（铜锤手均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1010 then
			say = say .. "当前任务：王城诏令--剿灭1个金刚人（金刚人均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1011 then
			say = say .. "当前任务：王城诏令--剿灭5个沙怪（沙怪均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1012 then
			say = say .. "当前任务：王城诏令--剿灭5个沙雕（沙雕均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1013 then
			say = say .. "当前任务：王城诏令--剿灭5个仙人掌（仙人掌均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1014 then
			say = say .. "当前任务：王城诏令--剿灭5个土狼（土狼均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1015 then
			say = say .. "当前任务：王城诏令--剿灭5个巨猿（巨猿均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1016 then
			say = say .. "当前任务：王城诏令--剿灭5个大土蛇（大土蛇均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1017 then
			say = say .. "当前任务：王城诏令--剿灭1个红蛇妖（红蛇妖均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1018 then
			say = say .. "当前任务：王城诏令--剿灭1个黑蛇妖（黑蛇妖均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1019 then
			say = say .. "当前任务：王城诏令--剿灭1个圣甲虫（圣甲虫均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1020 then
			say = say .. "当前任务：王城诏令--剿灭1个魔甲虫（魔甲虫均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1021 then
			say = say .. "当前任务：王城诏令--剿灭1个白蛇妖（白蛇妖均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1022 then
			say = say .. "当前任务：王城诏令--剿灭1个地下小鬼（地下小鬼均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1023 then
			say = say .. "当前任务：王城诏令--剿灭1个逆魔卫士（逆魔卫士均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1024 then
			say = say .. "当前任务：王城诏令--剿灭1个逆魔弓箭手（逆魔弓箭手均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1025 then
			say = say .. "当前任务：王城诏令--剿灭1个逆魔侍卫（逆魔侍卫均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1026 then
			say = say .. "当前任务：王城诏令--剿灭1个逆魔雕像（逆魔雕像均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1027 then
			say = say .. "当前任务：王城诏令--剿灭1个毒妖（毒妖均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1028 then
			say = say .. "当前任务：王城诏令--剿灭1个血妖（血妖均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1029 then
			say = say .. "当前任务：王城诏令--剿灭1个藤妖（藤妖均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1030 then
			say = say .. "当前任务：王城诏令--剿灭1个火烈鸟（火烈鸟均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1031 then
			say = say .. "当前任务：王城诏令--剿灭1个兽骑兵（兽骑兵均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1032 then
			say = say .. "当前任务：王城诏令--剿灭1个兽骑统领（兽骑统领均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1033 then
			say = say .. "当前任务：王城诏令--剿灭1个召魂使（召魂使、招魂使均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1034 then
			say = say .. "当前任务：王城诏令--剿灭1个幽魂（幽魂均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1035 then
			say = say .. "当前任务：王城诏令--剿灭1个鬼方火卒（鬼方火卒均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1036 then
			say = say .. "当前任务：王城诏令--剿灭1个猛魔枪卒（猛魔枪卒均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1037 then
			say = say .. "当前任务：王城诏令--剿灭1个猛魔统领（猛魔统领均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1038 then
			say = say .. "当前任务：王城诏令--剿灭1个炎魔（炎魔均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1039 then
			say = say .. "当前任务：王城诏令--剿灭1个地火弓箭手（地火兽弓箭手均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1040 then
			say = say .. "当前任务：王城诏令--剿灭1个地火投矛手（地火兽投矛手均可）。\\"
			say = say .. "完成后回来领取奖励，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1041 then
			say = say .. "当前任务：王城诏令--搜寻物资猪肉。\\"
			say = say .. "需要收集1份猪肉，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1042 then
			say = say .. "当前任务：王城诏令--搜寻物资鹿肉。\\"
			say = say .. "需要收集1份鹿肉，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1043 then
			say = say .. "当前任务：王城诏令--搜寻物资兔肉。\\"
			say = say .. "需要收集1份兔肉，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1044 then
			say = say .. "当前任务：王城诏令--搜寻物资牛肉。\\"
			say = say .. "需要收集1份猪肉，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1045 then
			say = say .. "当前任务：王城诏令--搜寻物资毒蜘蛛牙齿。\\"
			say = say .. "需要收集1份蝎尾，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1046 then
			say = say .. "当前任务：王城诏令--搜寻物资食人花果实。\\"
			say = say .. "需要收集1份果实，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1047 then
			say = say .. "当前任务：王城诏令--搜寻物资叶子。\\"
			say = say .. "需要收集1份叶子，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1048 then
			say = say .. "当前任务：王城诏令--搜寻物资蝎子尾巴。\\"
			say = say .. "需要收集1份蝎尾，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1049 then
			say = say .. "当前任务：王城诏令--搜寻物资洞蛆的蛆卵。\\"
			say = say .. "需要收集1份蛆卵，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1050 then
			say = say .. "当前任务：王城诏令--搜寻物资铜矿。\\"
			say = say .. "需要收集1份铜矿，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1051 then
			say = say .. "当前任务：王城诏令--搜寻物资铁矿。\\"
			say = say .. "需要收集1份铁矿，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1052 then
			say = say .. "当前任务：王城诏令--搜寻物资银矿。\\"
			say = say .. "需要收集1份银矿，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1053 then
			say = say .. "当前任务：王城诏令--搜寻物资金矿。\\"
			say = say .. "需要收集1份金矿，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1054 then
			say = say .. "当前任务：王城诏令--搜寻物资黑铁矿石。\\"
			say = say .. "需要收集1份黑铁矿石，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1055 then
			say = say .. "当前任务：王城诏令--搜寻物资铜矿。\\"
			say = say .. "需要收集1份铜矿，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1056 then
			say = say .. "当前任务：王城诏令--搜寻物资铁矿。\\"
			say = say .. "需要收集1份铁矿，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1057 then
			say = say .. "当前任务：王城诏令--搜寻物资银矿。\\"
			say = say .. "需要收集1份银矿，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1058 then
			say = say .. "当前任务：王城诏令--搜寻物资金矿。\\"
			say = say .. "需要收集1份金矿，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1059 then
			say = say .. "当前任务：王城诏令--搜寻物资黑铁矿石。\\"
			say = say .. "需要收集1份黑铁矿石，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1060 then
			say = say .. "当前任务：王城诏令--搜寻物资马牌(空)。\\"
			say = say .. "需要收集1份马牌(空)，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1061 then
			say = say .. "当前任务：王城诏令--搜寻物资魔神雕像。\\"
			say = say .. "需要收集1份魔神雕像，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1062 then
			say = say .. "当前任务：王城诏令--搜寻物资狮子吼。\\"
			say = say .. "需要收集1份狮子吼，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1063 then
			say = say .. "当前任务：王城诏令--搜寻物资神圣战甲术。\\"
			say = say .. "需要收集1份神圣战甲术，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1064 then
			say = say .. "当前任务：王城诏令--搜寻物资幽灵盾。\\"
			say = say .. "需要收集1份幽灵盾，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1065 then
			say = say .. "当前任务：王城诏令--搜寻物资灵魂墙。\\"
			say = say .. "需要收集1份灵魂墙，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1066 then
			say = say .. "当前任务：王城诏令--搜寻物资群体治愈术。\\"
			say = say .. "需要收集1份群体治愈术，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1067 then
			say = say .. "当前任务：王城诏令--搜寻物资神光术。\\"
			say = say .. "需要收集1份神光术，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1068 then
			say = say .. "当前任务：王城诏令--搜寻物资解毒术。\\"
			say = say .. "需要收集1份解毒术，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1069 then
			say = say .. "当前任务：王城诏令--搜寻物资魔法盾。\\"
			say = say .. "需要收集1份魔法盾，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1070 then
			say = say .. "当前任务：王城诏令--搜寻物资爆裂火焰。\\"
			say = say .. "需要收集1份爆裂火焰，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1071 then
			say = say .. "当前任务：王城诏令--搜寻物资疾光电影。\\"
			say = say .. "需要收集1份疾光电影，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1072 then
			say = say .. "当前任务：王城诏令--搜寻物资道心清明。\\"
			say = say .. "需要收集1份道心清明，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1073 then
			say = say .. "当前任务：王城诏令--搜寻物资冰龙破。\\"
			say = say .. "需要收集1份冰龙破，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1074 then
			say = say .. "当前任务：王城诏令--搜寻物资玄冰刃。\\"
			say = say .. "需要收集1份玄冰刃，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1075 then
			say = say .. "当前任务：王城诏令--搜寻物资地狱雷光。\\"
			say = say .. "需要收集1份地狱雷光，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1076 then
			say = say .. "当前任务：王城诏令--搜寻物资火墙。\\"
			say = say .. "需要收集1份火墙，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1077 then
			say = say .. "当前任务：王城诏令--搜寻物资五雷轰。\\"
			say = say .. "需要收集1份五雷轰，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1078 then
			say = say .. "当前任务：王城诏令--搜寻物资风影盾。\\"
			say = say .. "需要收集1份风影盾，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1079 then
			say = say .. "当前任务：王城诏令--搜寻物资圣言术。\\"
			say = say .. "需要收集1份圣言术，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1080 then
			say = say .. "当前任务：王城诏令--搜寻物资冰旋风。\\"
			say = say .. "需要收集1份冰旋风，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1081 then
			say = say .. "当前任务：王城诏令--搜寻物资法之魄。\\"
			say = say .. "需要收集1份法之魄，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1082 then
			say = say .. "当前任务：王城诏令--搜寻物资兽灵术。\\"
			say = say .. "需要收集1份兽灵术，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1083 then
			say = say .. "当前任务：王城诏令--搜寻物资护身真气。\\"
			say = say .. "需要收集1份护身真气，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1084 then
			say = say .. "当前任务：王城诏令--搜寻物资抱月刀。\\"
			say = say .. "需要收集1份抱月刀，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1085 then
			say = say .. "当前任务：王城诏令--搜寻物资半月弯刀。\\"
			say = say .. "需要收集1份半月弯刀，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1086 then
			say = say .. "当前任务：王城诏令--搜寻物资野蛮冲撞。\\"
			say = say .. "需要收集1份野蛮冲撞，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1087 then
			say = say .. "当前任务：王城诏令--搜寻物资雷霆剑。\\"
			say = say .. "需要收集1份雷霆剑，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1088 then
			say = say .. "当前任务：王城诏令--搜寻物资烈火剑法。\\"
			say = say .. "需要收集1份烈火剑法，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1089 then
			say = say .. "当前任务：王城诏令--搜寻物资破击剑法。\\"
			say = say .. "需要收集1份破击剑法，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1090 then
			say = say .. "当前任务：王城诏令--搜寻物资破盾斩。\\"
			say = say .. "需要收集1份破盾斩，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1091 then
			say = say .. "当前任务：王城诏令--搜寻物资突斩。\\"
			say = say .. "需要收集1份突斩，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		elseif __sel == 1092 then
			say = say .. "当前任务：王城诏令--搜寻物资战魂真悟。\\"
			say = say .. "需要收集1份战魂真悟，收集齐后回来交付，或花2元宝快速完成。\\"
			say = say .. "<领取奖励/@领取奖励>          <快速完成(2元宝)/@快速完成>\\"
			say = say .. "<放弃当前任务/@放弃任务>          <离开/@exit>"
		else
			say = say .. "发生异常：未找到当前任务。\\"
			say = say .. "<离开/@exit>"
		end
	end
	return { say = say, page = goto_page, close = close }
end

M["放弃任务"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("wcrwtask") <= 0 and 1 or 0)) ~= 0 then
		say = say .. "你现在没有进行中的王城诏令任务。\\"
		say = say .. "<离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	say = say .. "确定要放弃当前的王城诏令任务吗？放弃后可以重新接取新的任务。\\"
	say = say .. "<确定放弃/@放弃任务确认>          <返回/@任务进度>"
	return { say = say, page = goto_page, close = close }
end

M["放弃任务确认"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "王城诏令", "同步任务状态")
	if ((player:get_var("wcrwtask") > 0 and 1 or 0)) ~= 0 then
		player:delete_task(player:get_var("wcrwtask"))
		player:set_var("wcrwtask", "0")
		say = say .. "你已经放弃了当前任务。\\"
		say = say .. "<我要接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	if (1) ~= 0 then
		say = say .. "你现在没有进行中的王城诏令任务。\\"
		say = say .. "<我要接任务/@接任务>          <离开/@exit>"
		return { say = say, page = goto_page, close = close }
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1001"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1001) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1001, 0, player:get_task_value(1001, 0) + 1)
	end
	if ((player:task_step(1001) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1001, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1001, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭僵尸】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1002"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1002) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1002, 0, player:get_task_value(1002, 0) + 1)
	end
	if ((player:task_step(1002) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1002, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1002, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个尸王】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1003"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1003) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1003, 0, player:get_task_value(1003, 0) + 1)
	end
	if ((player:task_step(1003) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1003, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1003, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个尸卫战将】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1004"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	ScriptEngine.call(player, "taskMonster", "shiwei")
	if ((player:task_step(1004) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1004, 0, player:get_task_value(1004, 0) + 1)
	end
	if ((player:task_step(1004) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1004, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1004, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个尸卫】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1005"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1005) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1005, 0, player:get_task_value(1005, 0) + 1)
	end
	if ((player:task_step(1005) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1005, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1005, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个尸卫勇士】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1006"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1006) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1006, 0, player:get_task_value(1006, 0) + 1)
	end
	if ((player:task_step(1006) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1006, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1006, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个铜人】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1007"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1007) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1007, 0, player:get_task_value(1007, 0) + 1)
	end
	if ((player:task_step(1007) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1007, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1007, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个青铜兽】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1008"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1008) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1008, 0, player:get_task_value(1008, 0) + 1)
	end
	if ((player:task_step(1008) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1008, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1008, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个石人】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1009"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1009) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1009, 0, player:get_task_value(1009, 0) + 1)
	end
	if ((player:task_step(1009) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1009, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1009, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个铜锤手】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1010"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1010) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1010, 0, player:get_task_value(1010, 0) + 1)
	end
	if ((player:task_step(1010) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1010, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1010, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个金刚人】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1011"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1011) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1011, 0, player:get_task_value(1011, 0) + 1)
	end
	if ((player:task_step(1011) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1011, 0) >= 5 and 1 or 0)) ~= 0 then
		player:modify_task(1011, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭5个沙怪】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1012"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1012) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1012, 0, player:get_task_value(1012, 0) + 1)
	end
	if ((player:task_step(1012) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1012, 0) >= 5 and 1 or 0)) ~= 0 then
		player:modify_task(1012, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭5个沙雕】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1013"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1013) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1013, 0, player:get_task_value(1013, 0) + 1)
	end
	if ((player:task_step(1013) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1013, 0) >= 5 and 1 or 0)) ~= 0 then
		player:modify_task(1013, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭5个仙人掌】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1014"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1014) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1014, 0, player:get_task_value(1014, 0) + 1)
	end
	if ((player:task_step(1014) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1014, 0) >= 5 and 1 or 0)) ~= 0 then
		player:modify_task(1014, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭5个土狼】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1015"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1015) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1015, 0, player:get_task_value(1015, 0) + 1)
	end
	if ((player:task_step(1015) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1015, 0) >= 5 and 1 or 0)) ~= 0 then
		player:modify_task(1015, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭5个巨猿】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1016"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1016) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1016, 0, player:get_task_value(1016, 0) + 1)
	end
	if ((player:task_step(1016) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1016, 0) >= 5 and 1 or 0)) ~= 0 then
		player:modify_task(1016, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭5个大土蛇】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1017"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1017) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1017, 0, player:get_task_value(1017, 0) + 1)
	end
	if ((player:task_step(1017) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1017, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1017, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个红蛇妖】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1018"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1018) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1018, 0, player:get_task_value(1018, 0) + 1)
	end
	if ((player:task_step(1018) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1018, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1018, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个黑蛇妖】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1019"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1019) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1019, 0, player:get_task_value(1019, 0) + 1)
	end
	if ((player:task_step(1019) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1019, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1019, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个圣甲虫】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1020"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1020) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1020, 0, player:get_task_value(1020, 0) + 1)
	end
	if ((player:task_step(1020) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1020, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1020, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个魔甲虫】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1021"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1021) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1021, 0, player:get_task_value(1021, 0) + 1)
	end
	if ((player:task_step(1021) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1021, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1021, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个白蛇妖】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1022"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1022) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1022, 0, player:get_task_value(1022, 0) + 1)
	end
	if ((player:task_step(1022) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1022, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1022, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个地下小鬼】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1023"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1023) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1023, 0, player:get_task_value(1023, 0) + 1)
	end
	if ((player:task_step(1023) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1023, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1023, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个逆魔卫士】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1024"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1024) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1024, 0, player:get_task_value(1024, 0) + 1)
	end
	if ((player:task_step(1024) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1024, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1024, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个逆魔弓箭手】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1025"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1025) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1025, 0, player:get_task_value(1025, 0) + 1)
	end
	if ((player:task_step(1025) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1025, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1025, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个逆魔侍卫】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1026"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1026) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1026, 0, player:get_task_value(1026, 0) + 1)
	end
	if ((player:task_step(1026) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1026, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1026, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个逆魔雕像】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1027"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1027) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1027, 0, player:get_task_value(1027, 0) + 1)
	end
	if ((player:task_step(1027) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1027, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1027, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个毒妖】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1028"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1028) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1028, 0, player:get_task_value(1028, 0) + 1)
	end
	if ((player:task_step(1028) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1028, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1028, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个血妖】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1029"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1029) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1029, 0, player:get_task_value(1029, 0) + 1)
	end
	if ((player:task_step(1029) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1029, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1029, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个藤妖】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1030"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1030) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1030, 0, player:get_task_value(1030, 0) + 1)
	end
	if ((player:task_step(1030) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1030, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1030, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个火烈鸟】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1031"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1031) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1031, 0, player:get_task_value(1031, 0) + 1)
	end
	if ((player:task_step(1031) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1031, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1031, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个兽骑兵】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1032"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1032) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1032, 0, player:get_task_value(1032, 0) + 1)
	end
	if ((player:task_step(1032) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1032, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1032, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个兽骑统领】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1033"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1033) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1033, 0, player:get_task_value(1033, 0) + 1)
	end
	if ((player:task_step(1033) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1033, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1033, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个召魂使】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1034"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1034) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1034, 0, player:get_task_value(1034, 0) + 1)
	end
	if ((player:task_step(1034) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1034, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1034, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个幽魂】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1035"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1035) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1035, 0, player:get_task_value(1035, 0) + 1)
	end
	if ((player:task_step(1035) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1035, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1035, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个鬼方火卒】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1036"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1036) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1036, 0, player:get_task_value(1036, 0) + 1)
	end
	if ((player:task_step(1036) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1036, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1036, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个猛魔枪卒】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1037"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1037) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1037, 0, player:get_task_value(1037, 0) + 1)
	end
	if ((player:task_step(1037) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1037, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1037, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个猛魔统领】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1038"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1038) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1038, 0, player:get_task_value(1038, 0) + 1)
	end
	if ((player:task_step(1038) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1038, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1038, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个炎魔】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1039"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1039) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1039, 0, player:get_task_value(1039, 0) + 1)
	end
	if ((player:task_step(1039) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1039, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1039, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个地火弓箭手】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

M["杀1040"] = function(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:task_step(1040) == 1 and 1 or 0)) ~= 0 then
		player:set_task_value(1040, 0, player:get_task_value(1040, 0) + 1)
	end
	if ((player:task_step(1040) == 1 and 1 or 0)) ~= 0 and ((player:get_task_value(1040, 0) >= 1 and 1 or 0)) ~= 0 then
		player:modify_task(1040, 2)
		ScriptEngine.send_player_msg(player:get_var_str("username"), "王城诏令：任务【王城诏令--剿灭1个地火投矛手】已完成，请回中州找禁军教头领取奖励。")
	end
	return { say = say, page = goto_page, close = close }
end

return M
