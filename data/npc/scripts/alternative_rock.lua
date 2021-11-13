	local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)
	npcHandler:onCreatureAppear(cid)
end
function onCreatureDisappear(cid)
	npcHandler:onCreatureDisappear(cid)
end
function onCreatureSay(cid, type, msg)
	npcHandler:onCreatureSay(cid, type, msg)
end
function onThink()
	npcHandler:onThink()
end

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	local player = Player(cid)

	if msgcontains(msg, "help") then
		npcHandler:say("Yeah yeah, you can help me actually. You know, I feel some bad vibes coming out of the earth, recently. I think there's something wrong with the creatures of the deep. Care to join me?", cid)
		npcHandler.topic[cid] = 1;
	elseif msgcontains(msg, "yes") then
		if npcHandler.topic[cid] == 1 then
			npcHandler:say({
				"Great, great. There is something going on, you know? I can feel it in my bones. There really are some bad spirits down there. ...",
				"What I know is they vibrate when evil is near. Yeah, vibration man. ...",
				"They also let evil glow in a deep red. Glowing red stuff. So next time you go down there, just take one with you and when you find evil spirits - Catch them with the net. ...",
				"They will vanish in an instant. But - you will have to take care that all bad spirits in the near vicinity vanish almost instantaneously or they will regenerate. ...",
				"So you might need some help down there, my friend. Ready to do this?",
			}, cid)
			npcHandler.topic[cid] = 2
		elseif npcHandler.topic[cid] == 2 then
			player:addItem(15433, 1)
			npcHandler:say("Good, I hope this will help you keeping the spirits away.", cid)
			npcHandler.topic[cid] = 0
		end
	end


	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
