function onUse(cid, item, frompos, item2, topos)


local config = {
pz = "yes", -- players precisam estar em protection zone para usar? ("yes" or "no").
battle = "yes", -- players deve estar sem battle ("yes" or "no")
pos = {x=2384, y=1328, z=7}
}


if(config.pz == "yes") and (getTilePzInfo(getCreaturePosition(cid)) == FALSE) then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"voc� precisa estar em protection zone pra poder teleportar.")
return TRUE
end

if(config.battle == "yes") and (getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE) then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Voc� precisa estar sem battler pra poder teleportar.")
return TRUE
end

if item.itemid == 8982 then
doPlayerSendTextMessage(cid,22,"Nao espalha diabo!")
doTeleportThing(cid,config.pos)
doSendMagicEffect(getCreaturePosition(cid), 10)
doSendMagicEffect(frompos,6)
end
return 1
end