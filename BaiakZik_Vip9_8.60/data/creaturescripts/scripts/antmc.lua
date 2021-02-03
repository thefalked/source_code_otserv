local config = {
   max = 4,
   text = "Script Ant Multi-Client or Magebomb",
   group_id = 1  -- it will only kick player whit that id (1=Players, 2=tutor, 3=seniortutors, 4=Gm's, 5=Cm's and 6=God's
}
 
local accepted_ip_list = {"127.0.0.1", "255.255.255.255"}  -- here put the Ip you whant to be allowed to use Mc/Magebomb..
 
local function antiMC(p)
   if #getPlayersByIp(getPlayerIp(p.pid)) >= p.max then
      doRemoveCreature(p.pid)
   end
end
 
function onLogin(cid)
   if getPlayerGroupId(cid) <= config.group_id then
      if isInArray(accepted_ip_list, doConvertIntegerToIp(getPlayerIp(cid))) == FALSE then
         addEvent(antiMC, 1000, {pid = cid, max = config.max+1})
         doPlayerPopupFYI(cid, config.text)
      end
   end
   return TRUE
end