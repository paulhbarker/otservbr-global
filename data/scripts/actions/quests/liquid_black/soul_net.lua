local bookshelves = {15469,15470,15471,15472,15473,15474}

local soulNet = Action()

function soulNet.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if target.itemid == 15570 then
		player:addItem(15432, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You spread the net over the spawn and the darkness surrounding the hatch seemes to dissolve.")
		toPosition:sendMagicEffect(CONST_ME_THUNDER)
	else
		player:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
	end
	
	return true
end

soulNet:id(15433)
soulNet:register()
