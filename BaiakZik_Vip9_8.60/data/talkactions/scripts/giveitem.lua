function onSay(cid, words, param)
local param = param.explode(param, ',')
if param then
if isPlayer(getCreatureByName(param[1])) == TRUE then
doPlayerSendTextMessage(getCreatureByName(param[1]), 22, "Voc� acabou de receber um item do ADM!")
doPlayerAddItem(getCreatureByName(param[1]), param[2], param[3])
end
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
end
return TRUE
end