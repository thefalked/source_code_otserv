function executeClean()
	doCleanMap()
	doBroadcastMessage("Clear")
	return true
end

function onThink(interval, lastExecution, thinkInterval)
	doBroadcastMessage("Retirando Lixo Do Ot, Retire Seus Itens Do Ch�o")
	addEvent(executeClean, 50000)
	return true
end
