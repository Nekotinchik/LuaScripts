--[[
Create by Nekotinchik
Copyright © 2019
--]]

-- CODE STUFFS! DO NOT EDIT BELOW
-- UNLESS YOU KNOW WHAT YOU'RE DOING!


function OnLogin(event, player)


        if (player:GetGMRank() >= 1) then
		   
               name1 = player:GetName()
                SendWorldMessage("|CFFff0000".."[Server]".."|TInterface\\CHATFRAME\\UI-CHATICON-BLIZZ:15|t".."["..name1.."]".." has gone online".."!|r")
        end     
		  
		        
end
 
RegisterPlayerEvent(3, OnLogin)