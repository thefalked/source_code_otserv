--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==13541 then
queststatus = getPlayerStorageValue(cid,13540)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"Voc� jah pegou sua recompensa.")
 
else
doPlayerSendTextMessage(cid,22,"Voce agora � Baiak Vip. System Vip By {ADM}~Th3uz1k~.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2160,100)
coins_uid = doPlayerAddItem(cid,2322,1)
setPlayerStorageValue(cid,13540,1)
end
return 0
end
return 1
end
