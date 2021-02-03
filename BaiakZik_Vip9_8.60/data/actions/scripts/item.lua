local config = {
animationColor = TEXTCOLOR_LIGHTBLUE, --[[Cor da anima��o | Padr�o = Azul Claro]]
textType = TALKTYPE_ORANGE_1, --[[Cor do Texto | Padr�o = Verde]]
expGain = 20000 -- quanto vai ganhar de exp
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
doPlayerAddExp(cid, config.expGain)
doSendAnimatedText(getThingPosition(cid), config.expGain, config.animationColor)
doPlayerSendTextMessage(cid, config.textType, "Voce recebeu ".. config.expGain .." experience")
doRemoveItem(item.uid, 1)
return TRUE
end