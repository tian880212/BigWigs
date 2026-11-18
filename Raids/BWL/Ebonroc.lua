local module, L = BigWigs:ModuleDeclaration("Ebonroc", "Blackwing Lair")

module.revision = 30146
module.enabletrigger = module.translatedName
module.toggleoptions = {"wingbuffet", "shadowflame", "curse", "sparks", "sparksyou", "sparkscall", "sparksmark", "bosskill"}

L:RegisterTranslations("enUS", function() return {
	cmd = "Ebonroc",

	wingbuffet_cmd = "wingbuffet",
	wingbuffet_name = "Wing Buffet Alert",
	wingbuffet_desc = "Warn for Wing Buffet",

	shadowflame_cmd = "shadowflame",
	shadowflame_name = "Shadow Flame Alert",
	shadowflame_desc = "Warn for Shadow Flame",

	curse_cmd = "curse",
	curse_name = "Shadow of Ebonroc Alert",
	curse_desc = "Warn for Shadow of Ebonroc",

	sparks_cmd = "sparks",
	sparks_name = "Shadowflame Sparks Bar",
	sparks_desc = "Warn for recurring Shadowflame Spark waves (every 8s) with wave numbered countdown bars",

	sparksyou_cmd = "sparksyou",
	sparksyou_name = "Shadowflame Spark Aggro Alert",
	sparksyou_desc = "Warn with sound alarm and warning icon when a Shadowflame Spark attacks or casts on YOU",

	sparkscall_cmd = "sparkscall",
	sparkscall_name = "Spark Target /say Call",
	sparkscall_desc = "Automatically /say \"Spark on me!\" when a Shadowflame Spark is on you, so the raid knows who to run from",

	sparksmark_cmd = "sparksmark",
	sparksmark_name = "Spark Target Raid Mark",
	sparksmark_desc = "Put a raid icon on players targeted by a Shadowflame Spark, restored after 15s (raid leader / assistant only, or when BigWigs.markUnitsWhenNotRaidLeader is on)",

	say_sparksYou = "Spark on me!",
	msg_sparksYouOther = "Spark on %s!",
	
	
	trigger_wingBuffet = "Ebonroc begins to cast Wing Buffet.", --CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE
	bar_wingBuffetCast = "Casting Wing Buffet!",
	bar_wingBuffetCd = "Wing Buffet CD",
	msg_wingBuffetCast = "Casting Wing Buffet!",
	msg_wingBuffetSoon = "Wing Buffet in 2 seconds - Taunt now!",
	
	trigger_shadowFlameCast = "Ebonroc begins to cast Shadow Flame.", -- 修改：原 trigger_shadowFlame 改为 trigger_shadowFlameCast
	bar_shadowFlameCast = "Casting Shadow Flame!",
	msg_shadowFlameCast = "Casting Shadow Flame!",
	trigger_shadowFlameHit = "Ebonroc's Shadow Flame hits", --CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE
	bar_shadowFlameCd = "Shadow Flame CD",
	
	trigger_shadowOfEbonrocYou = "You are afflicted by Shadow of Ebonroc.", --CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE
	trigger_shadowOfEbonrocOther = "(.+) is afflicted by Shadow of Ebonroc.", --CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE // CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE
	trigger_shadowOfEbonrocFade = "Shadow of Ebonroc fades from (.+).", --CHAT_MSG_SPELL_AURA_GONE_SELF // CHAT_MSG_SPELL_AURA_GONE_PARTY // CHAT_MSG_SPELL_AURA_GONE_OTHER
	msg_shadowOfEbonroc = " has Shadow of Ebonroc - Taunt!",
	bar_shadowOfEbonrocDur = " Shadow of Ebonroc",
	bar_shadowOfEbonrocCd = "Shadow of Ebonroc CD",
	
	msg_sparks = "Healers outrange Sparks until they despawn!",
	trigger_sparkHit = "Shadowflame Spark", --CHAT_MSG_COMBAT_CREATURE_VS_PARTY_HITS // CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE
	bar_sparksCd = "Sparks",
	bar_sparksCdCount = "Sparks (%d)",
	msg_sparksSoon = "Sparks in 2s",
	msg_sparksSoonCount = "Sparks (%d) in 2s",
	msg_sparksSpawn = "Sparks!",
	msg_sparksSpawnCount = "Sparks (%d)!",
	msg_sparksYou = "SPARK ON YOU!",
    you = "you",
} end)

L:RegisterTranslations("zhCN", function() return {
	-- Sunelegy，Wind汉化修复Turtle-WOW中文数据
	-- Last update: 2024-06-22 (修复键名错误)
    cmd = "Ebonroc",

    wingbuffet_cmd = "wingbuffet",
    wingbuffet_name = "龙翼打击警报",
    wingbuffet_desc = "龙翼打击出现时进行警告",

    shadowflame_cmd = "shadowflame",
    shadowflame_name = "暗影烈焰警报",
    shadowflame_desc = "暗影烈焰出现时进行警告",

    curse_cmd = "curse",
    curse_name = "埃博诺克之影警报",
    curse_desc = "埃博诺克之影出现时进行警告",

    sparks_cmd = "sparks",
    sparks_name = "影焰火花提醒",
    sparks_desc = "每8秒一波影焰火花，用带编号的倒计时条进行提醒",

    sparksyou_cmd = "sparksyou",
    sparksyou_name = "火花盯人警报",
    sparksyou_desc = "暗影烈焰火花攻击你或对你施法时，用音效和警告图标提醒",

    sparkscall_cmd = "sparkscall",
    sparkscall_name = "火花盯人喊话",
    sparkscall_desc = "被火花盯住时自动在 /说 频道喊「我被火花盯住了！」，让全团知道谁要跑开",

    sparksmark_cmd = "sparksmark",
    sparksmark_name = "火花盯人标记",
    sparksmark_desc = "给被火花盯住的玩家上团队标记，15秒后恢复原标记（需团长/助理权限，或开启 BigWigs.markUnitsWhenNotRaidLeader）",

    say_sparksYou = "我被火花盯住了！",
    msg_sparksYouOther = "火花盯上了 %s！",

    trigger_wingBuffet = "埃博诺克开始施放龙翼打击",
    bar_wingBuffetCast = "正在施放龙翼打击！",
    bar_wingBuffetCd = "龙翼打击冷却",
    msg_wingBuffetCast = "正在施放龙翼打击！",
    msg_wingBuffetSoon = "2秒后龙翼打击 - 现在嘲讽！",

    -- 修复：原 trigger_shadowFlame 改为 trigger_shadowFlameCast
    trigger_shadowFlameCast = "埃博诺克开始施放暗影烈焰",
    bar_shadowFlameCast = "正在施放暗影烈焰！",
    bar_shadowFlameCd = "暗影烈焰冷却",
    msg_shadowFlameCast = "正在施放暗影烈焰！",
    -- 新增缺失的 trigger_shadowFlameHit
    trigger_shadowFlameHit = "埃博诺克的暗影烈焰击中",

    trigger_shadowOfEbonrocYou = "你受到了埃博诺克之影效果的影响",
    trigger_shadowOfEbonrocOther = "(.+)受到了埃博诺克之影效果的影响",
    trigger_shadowOfEbonrocFade = "埃博诺克之影效果从(.+)身上消失了",
    msg_shadowOfEbonroc = " 受到了埃博诺克之影 - 嘲讽！",
    bar_shadowOfEbonrocDur = " 埃博诺克之影",
    bar_shadowOfEbonrocCd = "埃博诺克之影冷却",

    msg_sparks = "治疗者远离小火直接跑开，等到它们消失！",
    trigger_sparkHit = "焰火花", -- 同时匹配「影焰火花」与本服旧译「暗影烈焰火花」
    bar_sparksCd = "火花",
    bar_sparksCdCount = "火花 (%d)",
    msg_sparksSoon = "2秒后出现火花",
    msg_sparksSoonCount = "2秒后出现火花 (%d)",
    msg_sparksSpawn = "火花！",
    msg_sparksSpawnCount = "火花 (%d)！",
    msg_sparksYou = "火花点你！",
    you = "你",
} end)

local timer = {
	wingBuffetFirstCd = 30,
	wingBuffetCd = 29, --30sec - 1sec cast
	wingBuffetCast = 1,
	
	shadowFlameFirstCd = 16,
	shadowFlameCd = 14, --16 - 2sec cast
	shadowFlameCast = 2,
	
	shadowOfEbonrocCd = 8,
	shadowOfEbonrocDur = 8,

	sparksFirst = 16,
	sparksCd = 8,
	sparkCallCd = 10, -- 同一玩家再次喊话/标记的最小间隔
	sparkMark = 15, -- 盯人标记保留时长
}
local icon = {
	wingBuffet = "INV_Misc_MonsterScales_14",
	shadowFlame = "Spell_Fire_Incinerate",
	shadowOfEbonroc = "Spell_Shadow_GatherShadows",
	sparks = "Spell_Fire_SelfDestruct",
}
local color = {
	wingBuffetCd = "Cyan",
	wingBuffetCast = "Blue",
	
	shadowFlameCd = "Orange",
	shadowFlameCast = "Red",
	
	shadowOfEbonrocCd = "Black",
	shadowOfEbonrocDur = "Magenta",

	sparks = "Orange",
}
local syncName = {
	wingBuffet = "EbonrocWingBuffet"..module.revision,
	shadowFlameCast = "EbonrocShadowflame"..module.revision,
	shadowFlameHit = "EbonrocShadowflameHit"..module.revision,
	shadowOfEbonroc = "EbonrocShadow"..module.revision,
	shadowOfEbonrocFade = "EbonrocShadowFade"..module.revision,
	sparks = "EbonrocSparks"..module.revision,
	sparksYou = "EbonrocSparkYou"..module.revision,
}
local spellId = {
	shadowFlame = 22539,
	sparkSpell = 30207,
}

function module:OnEnable()
	--self:RegisterEvent("CHAT_MSG_SAY", "Event") --Debug
	
	self:RegisterEvent("CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE", "SelfEvent") --trigger_shadowFlameHit, trigger_sparkHit
	self:RegisterEvent("CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE", "Event") --trigger_shadowFlameHit
	self:RegisterEvent("CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE", "Event") --trigger_wingBuffet, trigger_shadowFlameCast, trigger_shadowFlameHit
	
	-- 打中/没打中「本机玩家」的事件单独走 SelfEvent：AceEvent 回调签名不带事件名，
	-- 若在通用 Event 里靠文本猜「击中你/攻击你/你受到」，一旦客户端换了写法（攻击 你、没有击中你、
	-- 抵抗了…）就整段失效且静默无声。*_SELF_* 事件的目标必然是本人，判定 100% 可靠。
	self:RegisterEvent("CHAT_MSG_COMBAT_CREATURE_VS_SELF_HITS", "SelfEvent") --trigger_sparkHit
	self:RegisterEvent("CHAT_MSG_COMBAT_CREATURE_VS_SELF_MISSES", "SelfEvent") --trigger_sparkHit (闪避/招架/格挡/未命中)
	self:RegisterEvent("CHAT_MSG_COMBAT_CREATURE_VS_PARTY_HITS", "Event") --trigger_sparkHit（队友被火花打，只做提示）

	self:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE", "Event") --trigger_shadowOfEbonrocYou
	self:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE", "Event") --trigger_shadowOfEbonrocOther
	self:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE", "Event") --trigger_shadowOfEbonrocOther
	
	self:RegisterEvent("CHAT_MSG_SPELL_AURA_GONE_SELF", "Event") --trigger_shadowOfEbonrocFade
	self:RegisterEvent("CHAT_MSG_SPELL_AURA_GONE_PARTY", "Event") --trigger_shadowOfEbonrocFade
	self:RegisterEvent("CHAT_MSG_SPELL_AURA_GONE_OTHER", "Event") --trigger_shadowOfEbonrocFade
	
	if SUPERWOW_VERSION or SetAutoloot then
		self:RegisterEvent("UNIT_CASTEVENT")
	end
	
	self:ThrottleSync(3, syncName.wingBuffet)
	self:ThrottleSync(3, syncName.shadowFlameCast)
	self:ThrottleSync(3, syncName.shadowFlameHit)
	self:ThrottleSync(3, syncName.shadowOfEbonroc)
	self:ThrottleSync(3, syncName.shadowOfEbonrocFade)
	self:ThrottleSync(5, syncName.sparks)
	self:ThrottleSync(3, syncName.sparksYou)
end

function module:OnSetup()
	self.started = nil
	self.sparksWaveCount = 0
	self.sparkCallTime = {}
	self.sparkOtherTime = {}
	self.sparkMarks = {}
end

function module:OnDisengage()
	self:CancelScheduledEvent("EbonrocSparks")
	self:CancelDelayedMessage(L["msg_sparksSoon"])
	if self.sparksWaveCount and self.sparksWaveCount > 0 then
		self:CancelDelayedMessage(string.format(L["msg_sparksSoonCount"], self.sparksWaveCount + 1))
		self:RemoveBar(string.format(L["bar_sparksCdCount"], self.sparksWaveCount + 1))
		self:RemoveBar(string.format(L["bar_sparksCdCount"], self.sparksWaveCount))
	end
	self:RemoveBar(string.format(L["bar_sparksCdCount"], 1))
	self:RemoveBar(L["bar_sparksCd"])
	self:RemoveWarningSign(icon.sparks)
	self.sparksWaveCount = 0

	-- 收条时把盯人标记还原，避免标记残留到全场结束
	if self.sparkMarks then
		local players = {}
		for player in pairs(self.sparkMarks) do
			table.insert(players, player)
		end
		for i = 1, table.getn(players) do
			self:CancelScheduledEvent("EbonrocSparkMark" .. players[i])
			self:ClearSparkMark(players[i])
		end
	end
	self.sparkCallTime = {}
	self.sparkOtherTime = {}
end

function module:OnEngage()	
	if self.db.profile.wingbuffet then
		self:Bar(L["bar_wingBuffetCd"], timer.wingBuffetFirstCd, icon.wingBuffet, true, color.wingBuffetCd)
		self:DelayedMessage(timer.wingBuffetFirstCd - 2, L["msg_wingBuffetSoon"], "Attention", false, nil, false)
	end
	
	if self.db.profile.shadowflame then
		self:Bar(L["bar_shadowFlameCd"], timer.shadowFlameFirstCd, icon.shadowFlame, true, color.shadowFlameCd)
	end
	
	if self.db.profile.curse then
		self:Bar(L["bar_shadowOfEbonrocCd"], timer.shadowOfEbonrocCd, icon.shadowOfEbonroc, true, color.shadowOfEbonrocCd)
	end
	
	self.sparksWaveCount = 0
	if self.db.profile.sparks then
		self:Message(L["msg_sparks"], "Attention")
		self:Bar(string.format(L["bar_sparksCdCount"], 1), timer.sparksFirst, icon.sparks, true, color.sparks)
		self:ScheduleEvent("EbonrocSparks", self.SparksSpawn, timer.sparksFirst, self)
	end
end

function module:SparksSpawn(wave)
	if not self.db.profile.sparks then return end
	if wave and tonumber(wave) then
		self.sparksWaveCount = tonumber(wave)
	else
		self.sparksWaveCount = (self.sparksWaveCount or 0) + 1
	end

	self:CancelScheduledEvent("EbonrocSparks")
	self:CancelDelayedMessage(L["msg_sparksSoon"])
	self:CancelDelayedMessage(string.format(L["msg_sparksSoonCount"], self.sparksWaveCount))
	self:RemoveBar(string.format(L["bar_sparksCdCount"], self.sparksWaveCount))
	self:RemoveBar(L["bar_sparksCd"])
	
	self:Message(string.format(L["msg_sparksSpawnCount"], self.sparksWaveCount), "Attention", false, nil, false)
	self:Bar(string.format(L["bar_sparksCdCount"], self.sparksWaveCount + 1), timer.sparksCd, icon.sparks, true, color.sparks)
	self:ScheduleEvent("EbonrocSparks", self.SparksSpawn, timer.sparksCd, self)
end

function module:Event(msg)
	if not msg then return end

	if string.find(msg, L["trigger_wingBuffet"]) then
		self:Sync(syncName.wingBuffet)
	
	elseif string.find(msg, L["trigger_shadowFlameCast"]) then
		self:Sync(syncName.shadowFlameCast)
	
	elseif string.find(msg, L["trigger_shadowFlameHit"]) then
		self:Sync(syncName.shadowFlameHit)
	
	elseif string.find(msg, L["trigger_shadowOfEbonrocYou"]) then
		self:Sync(syncName.shadowOfEbonroc .. " " .. UnitName("Player"))
	
	elseif string.find(msg, L["trigger_shadowOfEbonrocOther"]) then
		local _,_,shadowOfEbonrocPlayer,_ = string.find(msg, L["trigger_shadowOfEbonrocOther"])
		self:Sync(syncName.shadowOfEbonroc .. " " .. shadowOfEbonrocPlayer)
		
	elseif string.find(msg, L["trigger_shadowOfEbonrocFade"]) then
		local _,_,shadowOfEbonrocFadePlayer,_ = string.find(msg, L["trigger_shadowOfEbonrocFade"])
		if shadowOfEbonrocFadePlayer == "你" then shadowOfEbonrocFadePlayer = UnitName("Player") end
		self:Sync(syncName.shadowOfEbonrocFade .. " " .. shadowOfEbonrocFadePlayer)

	elseif string.find(msg, L["trigger_sparkHit"]) then
		self:SparkOnOther(msg)
	end
end

-- 只处理「打到本机玩家」的事件（CHAT_MSG_*_SELF_*）。
-- 事件类型本身已经保证目标是自己，不再靠文本猜「你」，中文/英文客户端通吃。
function module:SelfEvent(msg)
	if not msg then return end

	if string.find(msg, L["trigger_sparkHit"]) then
		self:DebugMessage("SPARK SELF: " .. msg)
		self:SparkOnYou(UnitName("player"))
		return
	end

	if string.find(msg, L["trigger_shadowFlameHit"]) then
		self:Sync(syncName.shadowFlameHit)
	end
end

function module:UNIT_CASTEVENT(caster,target,action,spell,castTime)
	if not spell then return end

	if spell == spellId.shadowFlame and action == "START" then
		self:Sync(syncName.shadowFlameCast)
		self:DelayedSync(castTime/1000, syncName.shadowFlameHit)
		return
	elseif spell == spellId.sparkSpell then
		-- 火花对我们读条/选目标 = 被盯上，直接走统一入口
		local exists, playerGuid = UnitExists("player")
		if target and ((playerGuid and target == playerGuid) or target == UnitName("player") or UnitIsUnit(target, "player")) then
			self:SparkOnYou(UnitName("player"))
		end
		return
	end
end

-- 被火花盯上的统一入口（本地检测与团队同步共用）
-- noSync = true 表示这条是收到的同步，不能再往回同步，否则会无限循环
function module:SparkOnYou(player, noSync)
	if not player then return end
	player = tostring(player)

	local isMe = (player == UnitName("player"))
	local warnYou = self.db.profile.sparksyou
	if warnYou == nil then warnYou = self.db.profile.sparks end

	-- 新选项在老 profile 里可能读到 nil（AceDB 补默认值并不可靠），这里显式兜底为开
	local doCall = self.db.profile.sparkscall
	if doCall == nil then doCall = true end
	local doMark = self.db.profile.sparksmark
	if doMark == nil then doMark = true end

	-- 自身警告：每次被打都提示，保持原有「火花点你」行为
	if isMe and warnYou then
		self:Message(L["msg_sparksYou"], "Personal", true, "Alarm")
		self:WarningSign(icon.sparks, 2)
	end

	-- 节流：火花会持续追着同一个人打，10 秒内只喊一次 / 标一次，避免刷屏
	if not self.sparkCallTime then self.sparkCallTime = {} end
	local now = GetTime()
	if self.sparkCallTime[player] and (now - self.sparkCallTime[player]) < timer.sparkCallCd then
		return
	end
	self.sparkCallTime[player] = now

	if isMe then
		-- 被盯的人自己喊话，全团都能看到是谁
		if doCall then
			SendChatMessage(L["say_sparksYou"], "SAY")
		end
		-- 同步出去，让有标记权限的团长/助理也能补标记
		if not noSync then
			self:Sync(syncName.sparksYou .. " " .. player)
		end
	else
		self:NotifySparkOnOther(player)
	end

	if doMark then
		self:MarkSparkPlayer(player)
	end
end

-- 提醒「火花盯上了别人」——本地日志与收到的同步都走这里，共用一个节流表，避免重复刷屏
function module:NotifySparkOnOther(player)
	if not player or player == UnitName("player") then return end

	if not self.sparkOtherTime then self.sparkOtherTime = {} end
	local now = GetTime()
	if self.sparkOtherTime[player] and (now - self.sparkOtherTime[player]) < 6 then
		return
	end
	self.sparkOtherTime[player] = now

	local warn = self.db.profile.sparksyou
	if warn == nil then warn = self.db.profile.sparks end
	if warn then
		self:Message(string.format(L["msg_sparksYouOther"], player), "Important", false, nil, false)
	end
end

-- 从「火花打了别人」的日志里抠出被打的人名；抠不出来就静默放弃，绝不乱标
function module:SparkOnOther(msg)
	local name
	local _, _, n = string.find(msg, "击中%s*([^%s]+)%s*造成")
	name = n
	if not name then
		_, _, name = string.find(msg, "击中%s*([^%s]+)")
	end
	if not name then
		_, _, name = string.find(msg, "hits%s+([^%s]+)%s+for")
	end
	if not name then
		_, _, name = string.find(msg, "crits%s+([^%s]+)%s+for")
	end
	if not name or name == "" then return end
	-- 「你」必须归一成本机角色名，否则会把字面量「你」当成人名广播出去
	if name == "你" or name == "You" or name == "you" then name = UnitName("player") end

	self:NotifySparkOnOther(name)

	-- 团长/助理在本机看到队友被盯也补一个标记：被盯的人没装本插件时也能标上
	local doMark = self.db.profile.sparksmark
	if doMark == nil then doMark = true end
	if doMark then self:MarkSparkPlayer(name) end
end

-- 给被盯的人上团队标记，并记录原标记以便还原
function module:MarkSparkPlayer(player)
	if not (IsRaidLeader() or IsRaidOfficer()) and not BigWigs.markUnitsWhenNotRaidLeader then
		return
	end
	if not self.sparkMarks then self.sparkMarks = {} end
	if self.sparkMarks[player] then return end -- 已在标记中，等它自然到期

	local unit
	if player == UnitName("player") then
		unit = "player"
	else
		for i = 1, GetNumRaidMembers() do
			if UnitName("raid" .. i) == player then
				unit = "raid" .. i
				break
			end
		end
	end
	if not unit then return end

	local mark = self:GetAvailableRaidMark()
	if not mark then return end

	self.sparkMarks[player] = { unit = unit, prev = GetRaidTargetIndex(unit) or 0 }
	SetRaidTarget(unit, mark)
	self:ScheduleEvent("EbonrocSparkMark" .. player, self.ClearSparkMark, timer.sparkMark, self, player)
end

function module:ClearSparkMark(player)
	if not self.sparkMarks or not self.sparkMarks[player] then return end
	local info = self.sparkMarks[player]
	self.sparkMarks[player] = nil
	if info.unit and GetRaidTargetIndex(info.unit) then
		SetRaidTarget(info.unit, info.prev or 0)
	end
end


function module:BigWigs_RecvSync(sync, rest, nick)
	if sync == syncName.wingBuffet and self.db.profile.wingbuffet then
		self:WingBuffet()
	elseif sync == syncName.shadowFlameCast and self.db.profile.shadowflame then
		self:RemoveBar(L["bar_shadowFlameCd"])
		self:Bar(L["bar_shadowFlameCast"], timer.shadowFlameCast, icon.shadowFlame, true, color.shadowFlameCast)
		self:Message(L["msg_shadowFlameCast"], "Urgent", false, nil, false)
	elseif sync == syncName.shadowFlameHit and self.db.profile.shadowflame then
		self:RemoveBar(L["bar_shadowFlameCd"])
		self:Bar(L["bar_shadowFlameCd"], timer.shadowFlameCd, icon.shadowFlame, true, color.shadowFlameCd)
	elseif sync == syncName.shadowOfEbonroc and rest and self.db.profile.curse then
		self:ShadowOfEbonroc(rest)
	elseif sync == syncName.shadowOfEbonrocFade and rest and self.db.profile.curse then
		self:ShadowOfEbonrocFade(rest)
	elseif sync == syncName.sparks and self.db.profile.sparks then
		self:SparksSpawn(rest)
	elseif sync == syncName.sparksYou and rest then
		self:SparkOnYou(rest, true)
	end
end


function module:WingBuffet()
	self:CancelDelayedMessage(L["msg_wingBuffetSoon"])
	self:RemoveBar(L["bar_wingBuffetCd"])
	
	self:Bar(L["bar_wingBuffetCast"], timer.wingBuffetCast, icon.wingBuffet, true, color.wingBuffetCast)
	
	-- 冷却条同步开出，不用 DelayedBar：延迟 1 秒再开条的定时器一旦没落地，
	-- 冷却条就整次缺失且无法自愈（表现为第二次之后再也看不到龙翼打击）。
	-- 与暗影烈焰一致：Firemaw 的 ShadowFlameHit 也是 RemoveBar + Bar 直接开，不走延迟。
	-- 30 秒 = 1 秒读条 + 29 秒冷却，周期与原来完全相同，只是读数从施放瞬间起算。
	self:Bar(L["bar_wingBuffetCd"], timer.wingBuffetFirstCd, icon.wingBuffet, true, color.wingBuffetCd)
	self:DelayedMessage(timer.wingBuffetFirstCd - 2, L["msg_wingBuffetSoon"], "Attention", false, nil, false)
end

function module:ShadowOfEbonroc(rest)
	self:RemoveBar(L["bar_shadowOfEbonrocCd"])
	
	self:Bar(rest..L["bar_shadowOfEbonrocDur"], timer.shadowOfEbonrocDur, icon.shadowOfEbonroc, true, color.shadowOfEbonrocDur)
	self:Message(rest..L["msg_shadowOfEbonroc"], "Important", false, nil, false)
	
	if rest == UnitName("Player") then
		self:WarningSign(icon.shadowOfEbonroc, timer.shadowOfEbonrocDur)
	end
end

function module:ShadowOfEbonrocFade(rest)
	self:RemoveBar(rest..L["bar_shadowOfEbonrocDur"])
	
	if rest == UnitName("Player") then
		self:RemoveWarningSign(icon.shadowOfEbonroc)
	end
end