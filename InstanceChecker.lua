local function InstanceChecker(event, instance_data, map, player)


   -- Tempest Keep 

   if (player:GetMapId() == 550 and player:GetHealth() < 150000 ) then
          player:SendBroadcastMessage("|cccFF0000[Instance Cheker EN]: You must have more than 150M HP to enter this Instance.")
		  player:SendBroadcastMessage("|cccFF0000[Instance Cheker RU]: У вас должно быть больше 150М HP что бы войти в это подземелье.")
		  player:Teleport(530, -248.403, 939.289, 84.3798, 1.55782)
          player:CastSpell(player, 9175)
          player:GossipComplete()
    end

	--[[
	   -- Tempest Keep 
	local  QuestComplete = player:GetQuestStatus(100000)
		   
   if (player:GetMapId() == 550 and (QuestComplete == 6) )  then 

   
   

          		player:CastSpell(player, 73824)
			player:SendBroadcastMessage("|cccFF0000[Instance Cheker]: квест выполнен.")
         
		  
		  player:CastSpell(player, 73824)
		else
		player:SendBroadcastMessage("|cccFF0000[Instance Cheker]: КВЕСТ НЕ СДЕЛАН!!!")
   
	
	end
	--]]
	--[[
    QUEST_STATUS_NONE           = 0,	Не взят квест
    QUEST_STATUS_COMPLETE       = 1,	Квест выпонен но не сдан	
    QUEST_STATUS_UNAVAILABLE    = 2,
    QUEST_STATUS_INCOMPLETE     = 3,	квест взят но не выпонен
    QUEST_STATUS_AVAILABLE      = 4,
    QUEST_STATUS_FAILED         = 5,	квест провален
    QUEST_STATUS_REWARDED       = 6,	квест завершен и сдан
	]]
    
   -- Mini Zulaman

   if (player:GetMapId() == 568 and player:GetHealth() < 150000 ) then 

          player:SendBroadcastMessage("|cccFF0000[Instance Cheker]: You must have more than 150M HP to enter this Instance.")
		  player:SendBroadcastMessage("|cccFF0000[Instance Cheker RU]: У вас должно быть больше 150М HP что бы войти в это подземелье.")
		  player:Teleport(530, -248.403, 939.289, 84.3798, 1.55782)
          player:CastSpell(player, 9175)
          player:GossipComplete()
    end

   -- Help the Trolls
--[[
   if (player:GetMapId() == 568 ) then -- изменить mapid!!!!

          player:SendBroadcastMessage("|cccFF0000[Instance Cheker]: You must have more than 150M HP to enter this Instance.")
		  player:Teleport(530, -248.403, 939.289, 84.3798, 1.55782)
          player:CastSpell(player, 9175)
          player:GossipComplete()
    end
 --]]   


end
RegisterMapEvent(550, 4, InstanceChecker)  