local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(0, 2544, 80, CONST_ME_MAGIC_BLUE)
end

spell:name("Conjure Arrow")
spell:words("exevo con")
spell:group("support")
spell:vocation("paladin;true", "royal paladin;true")
spell:id(51)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(13)
spell:mana(150)
spell:soul(2)
spell:isSelfTarget(true)
spell:isAggressive(false)
spell:needLearn(false)
spell:register()
