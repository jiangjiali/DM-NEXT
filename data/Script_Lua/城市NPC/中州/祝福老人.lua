-- 由 txt 脚本自动转换生成, 请勿手工编辑
-- 源脚本: 祝福老人
-- 转换工具: Tools/ScriptConverter

local M = {}

M.meta = {
	name = "祝福老人",
	version = "",
	trade_types = {},
	big_box = false,
	left_page = "",
}

function M.main(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "想要为你的朋友送祝福吗？花费10万金币或用一个灵符\\"
	say = say .. "，你的祝福就能通过红字公告发出，让所有人都能看\\"
	say = say .. "到。如果你的朋友收到这样的祝福一定非常感动。现在\\"
	say = say .. "祝福语共有5大类，请选择吧：\\\\"
	say = say .. "<深情蜜语/@love>　　<真爱告白/@court>　　<新婚祝福/@marry>　　<友情天地/@friend>　　<节日祝福/@holiday>\\\\"
	say = say .. "<以后再说/@exit>"
	return { say = say, page = goto_page, close = close }
end

function M.love(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 99999 and 1 or 0)) ~= 0 then
		goto_page = "love1"
	else
		say = say .. "你的金币不够\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.court(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 99999 and 1 or 0)) ~= 0 then
		goto_page = "court1"
	else
		say = say .. "你的金币不够\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.marry(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 99999 and 1 or 0)) ~= 0 then
		goto_page = "marry1"
	else
		say = say .. "你的金币不够\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.friend(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 99999 and 1 or 0)) ~= 0 then
		goto_page = "friend1"
	else
		say = say .. "你的金币不够\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.holiday(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") > 99999 and 1 or 0)) ~= 0 then
		goto_page = "holiday1"
	else
		say = say .. "你的金币不够\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.love1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福1/@bless&love1>:爱是一片无尽蔓延的丛林，我在寂寞的空气中轮回枯\\"
	say = say .. "荣，只盼望有朝一日你投射来惊艳的目光把我静静欣赏……\\"
	say = say .. "<祝福2/@bless&love2>:你在偷偷想我吗？你真的在偷偷想我吗？如果是,你就\\"
	say = say .. "告诉我啊,我不会不让你想我的,大家讲道理嘛,我也想你啊！\\"
	say = say .. "<祝福3/@bless&love3>:众人皆醒我独醉，心有灵犀最珍贵；邂逅真情爱不悔，\\"
	say = say .. "今生只为你相随！（请看每一句的第五个字……）\\"
	say = say .. "<祝福4/@bless&love4>:天气预报：明晨有点想你，午后持续想你,受此低情绪\\"
	say = say .. "影响,傍晚转为大到暴想,心情降低五度,将持续到见你为止！\\"
	say = say .. "第一页 １ <2/@love2> <3/@love3> <4/@love4> <5/@love5> <6/@love6> <下一页/@love2>　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.love2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福5/@bless&love5>:我有眼睛却不能随时看见你身影，有耳朵却不能随时听\\"
	say = say .. "到你声音,有手却不能随时抱着你,但我有颗心能随时想念你!\\"
	say = say .. "<祝福6/@bless&love6>:遇见你是偶然的，喜欢你是自然的，爱上你是毅然的，\\"
	say = say .. "得到你是欣然的，伴你一生是必然的！\\"
	say = say .. "<祝福7/@bless&love7>:爱你是我一天最重要的事，想你是我一天最快乐的事，\\"
	say = say .. "看你是我一天最享受的事,爱你想你看你是我一辈子要做的事！\\"
	say = say .. "<祝福8/@bless&love8>:送你一块点心：第一层，体贴！第二层，关怀！第三\\"
	say = say .. "层，浪漫！第四层,温馨！夹层,甜蜜！祝你天天都有好心情！\\"
	say = say .. "<上一页/@love1> <1/@love1> ２ <3/@love3> <4/@love4> <5/@love5> <6/@love6> <下一页/@love3>　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.love3(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福9/@bless&love9>:不是因为寂寞才想你，而是因为想你才寂寞，孤独的感\\"
	say = say .. "觉之所以如此之重，只是因为想你想得太深……\\"
	say = say .. "<祝福10/@bless&love10>:你可要好好地照顾自己，不要感冒了流鼻涕，偶尔也\\"
	say = say .. "可以打几个喷嚏，那是代表我在想你……\\"
	say = say .. "<祝福11/@bless&love11>:有一种默契叫做心有灵犀，有一种感觉叫做妙不可言，\\"
	say = say .. "有一种幸福叫做有你相伴，有一种思念叫做度日如年！\\"
	say = say .. "<祝福12/@bless&love12>:你知道吗？想你已成为我生活中的一种习惯，不可或\\"
	say = say .. "缺的习惯。每天，可以不吃饭、不睡觉、却不能不想你……\\"
	say = say .. "<上一页/@love2> <1/@love1> <2/@love2> ３ <4/@love4> <5/@love5> <6/@love6> <下一页/@love4>　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.love4(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福13/@bless&love13>:我羡慕太阳，他能看见你灿烂的笑容；我羡慕月亮，\\"
	say = say .. "她能注视你安祥的入睡；我羡慕自己，至少能时刻想念你……\\"
	say = say .. "<祝福14/@bless&love14>:我今生最大的幸福莫过于认识你、喜欢你、爱上你！\\"
	say = say .. "我已经很满足了！好喜欢这种爱你的感觉，很爱很爱你！\\"
	say = say .. "<祝福15/@bless&love15>:希望睡前可以轻吻你，希望睡时可以抱著你，希望醒\\"
	say = say .. "来可以看见你！一直都这样希望，直到永远。\\"
	say = say .. "<祝福16/@bless&love16>:在漫漫人生的旅途上，我们差点擦肩而过，是你轻轻\\"
	say = say .. "拉住了我的手，真希望这双温暖的手永远牵着我！\\"
	say = say .. "<上一页/@love3> <1/@love1> <2/@love2> <3/@love3> ４ <5/@love5> <6/@love6> <下一页/@love5>　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.love5(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福17/@bless&love17>:遇到你，是缘分；喜欢你，是命中注定；爱上你，是\\"
	say = say .. "情非得已；想念你，是身不由己；我会用心去爱你！\\"
	say = say .. "<祝福18/@bless&love18>:亲爱的，告诉你：等级不是问题，职业不是距离，负\\"
	say = say .. "重不是压力，金砖不是能力，关键在于我是真心爱你！\\"
	say = say .. "<祝福19/@bless&love19>:如果有一天我迷失风雨中，我知道你会为我疗伤止痛；\\"
	say = say .. "也许我们的世界会不同，但我知道你会陪我在风雨中，谢谢你！\\"
	say = say .. "<祝福20/@bless&love20>:如果有来世，就让我们做一对小小的老鼠吧，笨笨地\\"
	say = say .. "相爱,呆地过日子，拙拙地依偎，傻傻地一起！\\"
	say = say .. "<上一页/@love4> <1/@love1> <2/@love2> <3/@love3> <4/@love4> ５ <6/@love6> <下一页/@love6>　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.love6(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福21/@bless&love21>:最让人感到幸福的事是，当我在想着你的时候而你也\\"
	say = say .. "在想着我。只想跟你说声：我爱你，我在这里等你！\\"
	say = say .. "<祝福22/@bless&love22>:油盐酱醋茶里有我们平淡的真情，锅碗瓢盘里有我们\\"
	say = say .. "简单的幸福，除却虚无的浪漫，只有爱你在心底！\\"
	say = say .. "<祝福23/@bless&love23>:遇到你之前，世界是一片荒原，遇到你之后，世界是\\"
	say = say .. "一个乐园，未来的无限生涯，因你而幸福无边！\\"
	say = say .. "<祝福24/@bless&love24>:不经意的瞬间，你走进我的视线，拨动着我那尘封已\\"
	say = say .. "久的心弦，我知道：你的身影已成为我今生注目的焦点!\\"
	say = say .. "<上一页/@love5> <1/@love1> <2/@love2> <3/@love3> <4/@love4> <5/@love5> ６ 最后页　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.court1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福1/@bless&court1>:结婚要去哪？当然是“龙凤阁”！亲爱的，我已经邀请\\"
	say = say .. "了我所有的朋友来参加我们的婚礼，怎么样？够有面子了吧！\\"
	say = say .. "<祝福2/@bless&court2>:无论贫穷与富贵，健康或疾病，即使经历再多磨难，承\\"
	say = say .. "受再大压力，我都愿意与你相依相伴直到永远！我爱你！\\"
	say = say .. "<祝福3/@bless&court3>:我的未来老婆,你想要什么样的婚礼？有玫瑰雨、有焰\\"
	say = say .. "火、有红烛、有喜糖、有……你还想有什么？尽管跟我说吧！\\"
	say = say .. "<祝福4/@bless&court4>:一定是前世的缘，才注定了今生的情。不然，为什么人\\"
	say = say .. "海茫茫我就偏偏落进了你的网？你知道吗？我爱你！\\"
	say = say .. "第一页 １ <2/@court2> <3/@court3> <4/@court4> <下一页/@court2>　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.court2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福5/@bless&court5>:天变、地变、海变、人变，唯一永恒的是我对你的情、\\"
	say = say .. "我对你的爱、还有一颗早已为你沉醉的心！我爱你！\\"
	say = say .. "<祝福6/@bless&court6>:喜欢我的手被你握在掌心的那种感觉，想和你深爱到\\"
	say = say .. "老，牵手一生，原谅我曾经的任性和刁蛮，亲爱的，我爱你！\\"
	say = say .. "<祝福7/@bless&court7>:如果这份爱要用我的生命来交换的话，我愿意；如果\\"
	say = say .. "这份爱让我只能再活一天，我还是愿意！亲爱的，我爱你！\\"
	say = say .. "<祝福8/@bless&court8>:如果你是风，我愿意做你的风筝，飞的再高再远，你\\"
	say = say .. "手里的那根丝线都是我们爱的见证！我爱你！\\"
	say = say .. "<上一页/@court1> <1/@court1> ２ <3/@court3> <4/@court4> <下一页/@court3>　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.court3(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福9/@bless&court9>:都说流星有求必应，我愿意守在星空下等到一颗星星被\\"
	say = say .. "我感动划破长空，载着我的祝福落在你枕边！我爱你！\\"
	say = say .. "<祝福10/@bless&court10>:远方的你是否无恙？在遥远的思念里，改变的是我的\\"
	say = say .. "容颜，不变的是永远爱你的心！亲爱的，我爱你！\\"
	say = say .. "<祝福11/@bless&court11>:尽管没有浪漫倾城的风花雪月,也没有意乱情迷的海誓\\"
	say = say .. "山盟，但我们却能感觉到彼此相偎时的心跳！因为，我爱你！\\"
	say = say .. "<祝福12/@bless&court12>:你心我心，爱上了你,一生痴心；你心他心,旁若无人，\\"
	say = say .. "请你放心；以心换心，即便万箭穿心，也不变心！我爱你！ \\"
	say = say .. "<上一页/@court2> <1/@court1> <2/@court2> ３ <4/@court4> <下一页/@court4>　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.court4(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福13/@bless&court13>:我一直梦想着有那么一天，你骑着高头白马，在漫天的\\"
	say = say .. "玫瑰雨中来迎娶凤冠霞帔的我。为了这个梦，我会一直等你！\\"
	say = say .. "<祝福14/@bless&court14>:我的未来老公，你能为我办一场梦幻婚礼吗？我要你骑\\"
	say = say .. "着白马，带着玫瑰花，在万众瞩目中来迎娶我，我愿爱你一生！\\"
	say = say .. "<祝福15/@bless&court15>:我唯一的爱人，我的世界里只有你，我的眼里只有你，\\"
	say = say .. "与我相伴吧！我的未来需要你。\\"
	say = say .. "<祝福16/@bless&court16>:只有为你，我愿变成影子跟随着你，寸步不离；只有为\\"
	say = say .. "你，我要永远和你在一起！\\"
	say = say .. "<上一页/@court3> <1/@court1> <2/@court2> <3/@court3> ４ 最后页　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.marry1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福1/@bless&marry1>:新婚快乐！祝愿你们白头偕老、永结同心、百年好合、恩\\"
	say = say .. "恩爱爱、比翼双飞……祝愿你们每天都过得像蜜一样甜！\\"
	say = say .. "<祝福2/@bless&marry2>:今天是你和爱人大喜的日子，我代表我们所有朋友祝愿你\\"
	say = say .. "们：天长地久、百年好合，让你们的爱在传世里永远延续！\\"
	say = say .. "<祝福3/@bless&marry3>:恭喜恭喜！新婚大喜！我和行会里所有的兄弟姐妹们一起\\"
	say = say .. "祝愿你们：相伴到永远，相守到天长，相爱一万年！\\"
	say = say .. "<祝福4/@bless&marry4>:红烛摇曳，灯火通明，此刻的“龙凤阁”高朋满座，今天\\"
	say = say .. "是你成亲的大好日子，我祝愿你们：相爱一生，百年好合！\\"
	say = say .. "第一页 １ <2/@marry2> <3/@marry3> <下一页/@marry2>　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.marry2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福5/@bless&marry5>:带着你们美丽的爱情去钟爱一生吧！我会祝福你们：天长\\"
	say = say .. "地久、百年好合！\\"
	say = say .. "<祝福6/@bless&marry6>:我好羡慕你们这对金童玉女啊，愿你们长相思守，相伴到\\"
	say = say .. "永远！也愿我能早日找到我的伴侣。\\"
	say = say .. "<祝福7/@bless&marry7>:愿你们成为《传奇世界》里的“金婚”夫妻，怎么样？还\\"
	say = say .. "不快努力！\\"
	say = say .. "<祝福8/@bless&marry8>:“钻石恒久远，一颗永留传”，愿你们的爱情如钻石般璀\\"
	say = say .. "璨，如钻石般永恒！\\"
	say = say .. "<上一页/@marry1> <1/@marry1> ２ <3/@marry3> <下一页/@marry3>　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.marry3(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福9/@bless&marry9>:我感觉到这浪漫的气氛，希望你们生生世世都沉浸在这样\\"
	say = say .. "的氛围中，新婚快乐！\\"
	say = say .. "<祝福10/@bless&marry10>:爱一个人需要理由吗？不需要；祝福你们需要言语吗？\\"
	say = say .. "……当然也不需要啦！\\\\"
	say = say .. "\\"
	say = say .. "\\"
	say = say .. "\\"
	say = say .. "<上一页/@marry2> <1/@marry1> <2/@marry2> ３ 最后页　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.friend1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福1/@bless&friend1>:吵架也好，斗嘴也好，开心也好，出气也好，但是无论如\\"
	say = say .. "何，你永远都是我心中最好的死党！\\"
	say = say .. "<祝福2/@bless&friend2>:星星落下要3秒，月亮升起要1天，地球公转要1年，爱一个\\"
	say = say .. "人要1辈子，但一句祝福话只要1秒，祝福你，朋友！\\"
	say = say .. "<祝福3/@bless&friend3>:千里试问平安否？且把思念遥相寄。绵绵爱意与关怀，浓\\"
	say = say .. "浓情意与祝福！\\"
	say = say .. "<祝福4/@bless&friend4>:用浪漫做皮，用温馨做馅，为你做幸福的饺子，懂得品尝\\"
	say = say .. "的人不需要多，最好只有你一个！\\"
	say = say .. "第一页 １ <2/@friend2> <3/@friend3> <4/@friend4> <5/@friend5> <下一页/@friend2>　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.friend2(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福5/@bless&friend5>:祝福是份真心意，不是千言万语的表白；一首心曲，愿你\\"
	say = say .. "岁岁平安，事事如意！\\"
	say = say .. "<祝福6/@bless&friend6>:轻轻的一声问候，不想惊扰你，只愿你好工作，好心情，\\"
	say = say .. "每天都能拥有阳光般的生活！\\"
	say = say .. "<祝福7/@bless&friend7>:愿你抱着平安、拥着健康、揣着幸福、携着快乐、搂着温\\"
	say = say .. "馨、带着甜蜜、牵着财运、拽着吉祥，快乐度过每一天！\\"
	say = say .. "<祝福8/@bless&friend8>:真拿你没办法：你闯进我的心，关上门又扭上锁，却把钥\\"
	say = say .. "匙弄丢了……\\"
	say = say .. "<上一页/@friend1> <1/@friend1> ２ <3/@friend3> <4/@friend4> <5/@friend5> <下一页/@friend3>　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.friend3(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福9/@bless&friend9>:送你一杯茶，以芬芳的祝福为叶，沸腾的热情为水，宽\\"
	say = say .. "容当杯，喝出你一天好心情和一生的祝福！\\"
	say = say .. "<祝福10/@bless&friend10>:清风带去我的祝福，明月捎走我的问候，送你一丝风儿，\\"
	say = say .. "赠你一缕月儿，风月无边，人间有情，天天快乐！\\"
	say = say .. "<祝福11/@bless&friend11>：谢谢你！总是在我最失落的时候出现，有你这样的好\\"
	say = say .. "朋友在我身边，我真的感到很幸福！能够认识你，真好！\\"
	say = say .. "<祝福12/@bless&friend12>：春风洋溢你；家人关心你；爱情滋润你；财神系着你；\\"
	say = say .. "朋友忠于你；我在这里祝福你：幸运之星永远照着你！\\"
	say = say .. "<上一页/@friend2> <1/@friend1> <2/@friend2> ３ <4/@friend4> <5/@friend5> <下一页/@friend4>　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.friend4(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福13/@bless&friend13>:有人牵挂的漂泊不叫流浪；有人陪伴的哭泣不叫悲伤；\\"
	say = say .. "人分担的忧愁不叫痛苦；有人分享的快乐叫做幸福，谢谢你！\\"
	say = say .. "<祝福14/@bless&friend14>:送你一份100％纯情奶糖，成份＝真心＋思念＋快乐，\\"
	say = say .. "有效期＝一生，营养＝温馨＋幸福＋感动，制造商：真心朋友\\"
	say = say .. "<祝福15/@bless&friend15>:感谢你的关怀，感谢你的帮助，感谢你为我所做的一\\"
	say = say .. "切，请接受徒弟美好的祝愿，祝师傅您天天快乐！\\"
	say = say .. "<祝福16/@bless&friend16>:春雨，染绿了世界，而自己却无声地消失在泥土之中。\\"
	say = say .. "师傅，你就是我心田的春雨，我将永远感谢你！\\"
	say = say .. "<上一页/@friend3> <1/@friend1> <2/@friend2> <3/@friend3> ４ <5/@friend5> <下一页/@friend5>　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.friend5(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福17/@bless&friend17>：送你100公斤的平安；1000公斤的幸福；10000公斤的\\"
	say = say .. "快乐；还有我称不出重量的……珍贵友谊 \\"
	say = say .. "<祝福18/@bless&friend18>：在你发工资的时候，勿忘我；在你坐“奔驰”的时候，\\"
	say = say .. "勿忘我；还有一点要补充，在你伤心的时候，也应该记得我！\\\\"
	say = say .. "\\"
	say = say .. "\\"
	say = say .. "\\"
	say = say .. "<上一页/@friend4> <1/@friend1> <2/@friend2> <3/@friend3> <4/@friend4> ５ 最后页　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.holiday1(player)
	local say = ""
	local goto_page = nil
	local close = false
	say = say .. "<祝福1/@bless&holiday1>:送你的礼物实在太重，鹿车拉不动，只好亲自送。记得等\\"
	say = say .. "着我，等着我说：圣诞快乐！\\"
	say = say .. "<祝福2/@bless&holiday2>:新的1年开始，祝好事接2连3，心情4季如春，生活5颜6色\\"
	say = say .. "7彩缤纷，偶尔8点小财，烦恼抛到9霄云外！\\"
	say = say .. "<祝福3/@bless&holiday3>:又是一年春来到，祝福满天飘，飘到你也飘到我，恭贺新\\"
	say = say .. "禧！祝天下玩友新春快乐！\\"
	say = say .. "<祝福4/@bless&holiday4>:花开花落，云卷云舒，又一年了！愿新年的钟声能捎去我\\"
	say = say .. "的所有祝福：愿一切如愿，快乐常伴！\\"
	say = say .. "第一页 １ <2/@holiday2> <3/@holiday3> <4/@holiday4> <下一页/@friend3>　<返回/@main>\\"
	return { say = say, page = goto_page, close = close }
end

function M.bless(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((player:get_var("gold") >= 100000 and 1 or 0)) ~= 0 then
		player:set_var("words", ScriptEngine.param(0))
		player:input_text("请输入人名:", 16, "@showbless")
		close = true
	else
		say = say .. "你的金币不够\\\\"
		say = say .. "<返回/@main>\\"
	end
	return { say = say, page = goto_page, close = close }
end

function M.showbless(player)
	local say = ""
	local goto_page = nil
	local close = false
	if ((ScriptEngine.is_online(player:get_var_str("inputtext")) and 1 or 0)) ~= 0 then
		ScriptEngine.system_10_msg("<$username>对<$inputtext>说：<$$words>")
		player:take_gold(100000)
		say = say .. "祝福已经送出!\\"
		say = say .. "<返回/@main>\\"
	else
		say = say .. "<$inputtext>不在线!\\"
		say = say .. "<返回/@main>\\\\"
	end
	return { say = say, page = goto_page, close = close }
end

return M
