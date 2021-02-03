-- Lottery System
local config = {
    lottery_hour = "30 minutos", -- Tempo ate a proxima loteria (Esse tempo vai aparecer somente como broadcast message)
    rewards_id = {9693, 7424, 7417, 2157}, -- ID dos Itens Sorteados na Loteria
	crystal_counts = 5,
    website = "yes" -- Only if you have php scripts and table `lottery` in your database!
    }
function onThink(interval, lastExecution)
        if(getWorldCreatures(0) == 0)then
                return true
        end
 
    local list = {}
    for i, tid in ipairs(getPlayersOnline()) do
                list[i] = tid
        end

        local winner = list[math.random(1, #list)]
        local random_item = config.rewards_id[math.random(1, #config.rewards_id)]
        
        if(random_item == 2157) then
                doPlayerAddItem(winner, random_item, config.crystal_counts)
                doBroadcastMessage("[LOTTERY SYSTEM] Winner: " .. getCreatureName(winner) .. ", Reward: " .. config.crystal_counts .. " " .. getItemNameById(random_item) .. "s! Congratulations! (Proxima Loteria em " .. config.lottery_hour .. ")")
        else
                doBroadcastMessage("[LOTTERY SYSTEM] Winner: " .. getCreatureName(winner) .. ", Reward: " .. getItemNameById(random_item) .. "! Congratulations! (Proxima Loteria em " .. config.lottery_hour .. ")")
                doPlayerAddItem(winner, random_item, 1)
        end
       
        if(config.website == "yes") then
                db.query("INSERT INTO `lottery` (`name`, `item`) VALUES ('".. getCreatureName(winner) .."', '".. getItemNameById(random_item) .."');")
        end
        return true
end