-- Sebasbe and Nicekid(Xtibia) --
function onPrepareDeath(cid, lastHitKiller, mostDamageKiller)
if isPlayer(cid) == TRUE then
if (getPlayerSlotItem(cid, 2).itemid == 7890) and getPlayerSkullType(cid) >= 0 then
doPlayerRemoveItem(cid, 7890, 1)
doCreatureSetDropLoot(cid, false)
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_HOLYAREA)
return TRUE
end
end
return TRUE
end