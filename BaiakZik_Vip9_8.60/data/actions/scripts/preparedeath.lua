local function sendLetter(p)
local pos = p.pos
local letter = p.letter
doSendAnimatedText(pos, letter, TEXTCOLOR_RED)
end

function onPrepareDeath(cid, lastHitKiller, mostDamageKiller)
local letters = {"ONWNED!"}
for i = 1, #letters do
addEvent(sendLetter, i * 150, {pos = getCreaturePosition(cid), letter = letters[i]})
end
return trueend