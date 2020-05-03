local npcId = 400000


--[[ local function GossipHello(event, player, unit)
	
	 if (player:GetMapId() == 550 and (player:GetQuestStatus(400000) == 6) )  then 
    player:GossipMenuAddItem(0, "Телепортация к ласту", 0, 1, false, "Вас точно телепортировать?") -- icon, text, sender, intid, use code (true/false), prompt text, how much gold (amount)
    player:GossipAddQuests(400000)
    player:GossipSendMenu(1, unit)
	if (player:GetMapId() == 550 and (player:GetQuestStatus(400000) == 1) )  then 
	player:CompleteQuest(400000)
	else
	player:AddQuest(400000)
end
end
end
]]


 local function GossipHello(event, player, unit)
	local qs = player:GetQuestStatus(400000)
    if (player:GetMapId() == 550 and (player:GetQuestStatus(400000) == 6) )  then 
    player:GossipMenuAddItem(0, "Телепортация к ласту", 0, 1, false, "Вас точно телепортировать?") -- icon, text, sender, intid, use code (true/false), prompt text, how much gold (amount)
	player:GossipSendMenu(1, unit)
	end
	if(player:GetQuestStatus(400000) == 0) then -- квест вообще не взят
	player:SendBroadcastMessage("|ccc33FFFF[Teleporter]: Выполните задание что бы открыть телепортер.")
	player:GossipAddQuests(unit)
    player:GossipSendMenu(1, unit)
	end
	if
	(player:GetQuestStatus(400000) == 1) then -- Квест выпонен но не сдан	
	player:SendBroadcastMessage("|ccc33FFFF[Teleporter]: Закончите задание что бы открыть функцию телепортации.")
	player:GossipAddQuests(unit)
    player:GossipSendMenu(1, unit)
	end

	
end




local function GossipSelect(event, player, creature, sender, intid, code)
    if (intid == 1) then -- Телепортация
        player:Teleport(550, 276.392517, -0.683873, -2.389385, 3.056772)
    end
end

RegisterCreatureGossipEvent(npcId, 1, GossipHello)
RegisterCreatureGossipEvent(npcId, 2, GossipSelect)