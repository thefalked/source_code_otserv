local message =
{
"Server will shut down in 5 minutes. Dont ask me why, I'm only script",
"Server will shutdown in 2 minutes, please log off",
"Server is going down..."
}
local class = 21
function shutDown()
doBroadcastMessage(message[3], class)
doSetGameState(GAMESTATE_SHUTDOWN)
return TRUE
end
function broadcast()
doBroadcastMessage(message[2], class)
return TRUE
end

function onThink(interval, lastExecution)
	local result_plr = db.getResult("SELECT * FROM z_shut WHERE `id` = 1;")
	if(result_plr:getID() ~= -1) then
while(true) do
if(tonumber(result_plr:getDataInt("shutdown"))==1) then
db.query("UPDATE z_shut SET shutdown = '0' WHERE id = '1';")
if(tonumber(result_plr:getDataInt("long"))==0) then
doBroadcastMessage(message[3], class)
doSetGameState(GAMESTATE_SHUTDOWN)
else
doBroadcastMessage(message[1], class)
addEvent(broadcast, 3*60*1000, {})
addEvent(shutDown, 5*60*1000, {})
end
end
if not(result_plr:next()) then break end
end
end
result_plr:free()
return TRUE
end