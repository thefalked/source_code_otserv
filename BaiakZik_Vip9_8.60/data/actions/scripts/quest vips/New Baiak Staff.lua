function onUse(cid, item, frompos, item2, topos)
if item.uid == 9050 then
queststatus = getPlayerStorageValue(cid,90060)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Voc� Ganhou Uma New baiak staff!.")
doPlayerAddItem(cid,7754,1 )
setPlayerStorageValue(cid,90060,1)
else
doPlayerSendTextMessage(cid,22,"Voc� ja fez essa quest!")
end
else
return 0
end
return 1
end 