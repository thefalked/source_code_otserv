local config = {
    positions = {
        ["VIP9 24H"] = { x = 155, y = 52, z = 7 },
        ["VIP4"] = { x = 167, y = 44, z = 7 },
        ["Quest VIP9"] = { x = 349, y = 201, z = 7 },
        ["VIP7"] = { x = 167, y = 54, z = 7 },
        ["VIP8"] = { x = 167, y = 52, z = 7 },
        ["VIP9"] = { x = 167, y = 50, z = 7 },
        ["VIP3"] = { x = 165, y = 44, z = 7 },
        ["Castle!"] = { x = 224, y = 380, z = 7 },
        ["Castle"] = { x = 224, y = 381, z = 7 },
        ["VIP1"] = { x = 161, y = 44, z = 7 },
        ["NovasHunt"] = { x = 282, y = 531, z = 7 },
        ["Teleports"] = { x = 148, y = 49, z = 7 },
        ["QuestVip"] = { x = 148, y = 45, z = 7 },
        ["Depot"] = { x = 148, y = 53, z = 7 },
        ["Especiais"] = { x = 177, y = 62, z = 7 },
        ["Treiners"] = { x = 148, y = 55, z = 7 },
        ["Druid"] = { x = 1436, y = 1219, z = 7 },
        ["Sorcerer"] = { x = 1429, y = 1224, z = 7 },
        ["Knight"] = { x = 1436, y = 1229, z = 7 },
        ["Paladin"] = { x = 1442, y = 1224, z = 7 },
        ["Quest"] = { x = 1158, y = 1277, z = 7 },
        ["Eventos"] = { x = 159, y = 50, z = 7 },
        ["Rotworns"] = { x = 148, y = 51, z = 7 },
        ["Bp"] = { x = 214, y = 370, z = 7 },
        ["Bp!"] = { x = 213, y = 370, z = 7 },
        ["PVP"] = { x = 203, y = 380, z = 7 },
        ["Templo"] = { x = 213, y = 391, z = 7 },
        ["Templo!"] = { x = 214, y = 391, z = 7 },
        ["VIP5"] = { x = 169, y = 44, z = 7 },
        ["VIP2"] = { x = 163, y = 44, z = 7 },
        ["PVP!"] = { x = 203, y = 381, z = 7 },
        ["Time 1"] = { x = 1404, y = 1320, z = 7 },
        ["VIP6"] = { x = 171, y = 44, z = 7 },
        ["Inqui"] = { x = 149, y = 43, z = 7 },
        ["Cassino"] = { x = 148, y = 47, z = 7 },
		["Set Vip9"] = { x = 162, y = 50, z = 7 },
		["Arms Vip9"] = { x = 162, y = 47, z = 7 },
   }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end  
