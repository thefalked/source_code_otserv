--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==7519 then
queststatus = getPlayerStorageValue(cid,7520)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Voc� jah pegou sua recompensa.")
 
else
doPlayerSendTextMessage(cid,22,"Voce agora � um Super Vip. System Vip By {ADM}~Th3uz1k~.")
doSendMagicEffect(topos,35)
coins_uid = doPlayerAddItem(cid,2160,100)
coins_uid = doPlayerAddItem(cid,9693,1)
setPlayerStorageValue(cid,7520,1)
end
return 0
end
return 1
end
