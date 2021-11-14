local grayIslandBosses = GlobalEvent("gray island bosses")

function grayIslandBosses.onStartup()
	local chance = math.random(1, 3);

	if chance == 3 then
		Game.createMonster('Tanjis', Position(33642, 31237, 11), true, true)
	elseif chance == 2 then
		Game.createMonster('Obujos', Position(33421, 31263, 11), true, true)
	elseif chance == 1 then
		Game.createMonster('Jaul', Position(33543, 31263, 11), true, true)
	end

	return true
end

grayIslandBosses:register()
