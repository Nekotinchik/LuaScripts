


local Buff_Message1 = "#buffup"
 
function OnChat_Buffzor(event, player, msg, Type, lang)
        if (msg == Buff_Message1) then
                
                player:GetAura(48161)
                player:GetAura(20217)
                player:GetAura(48161)
                player:GetAura(20217)
                player:GetAura(48469)
                player:GetAura(42995)
                player:GetAura(48073)
			return
        
        
        end
end
 
RegisterPlayerEvent(18, OnChat_Buffzor)