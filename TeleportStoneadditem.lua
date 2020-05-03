function OnLogin(event, player)

player:AddItem(100003, 1) 
end

RegisterPlayerEvent(30, OnLogin)