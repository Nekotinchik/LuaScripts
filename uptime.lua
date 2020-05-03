
	
--[[
function delay_s(delay)
  delay = delay or 1
  local time_to = os.time() + delay
  while os.time() < time_to do end
end
delay_s(10)

sec = 2
 
function os.sleep(sec)
  local now = os.time() + sec
  repeat until os.time() >= now
end
--]]

function OnLogin(event, player)
totaltime = os.time()
D = AuthDBQuery("SELECT MAX(starttime) FROM uptime");
local uptime = D:GetUInt32(0)
local c = (totaltime - uptime)
local seconds = c

    hours = string.format("%2.f", math.floor(seconds/3600));
    mins = string.format("%2.f", math.floor(seconds/60 - (hours*60)));
    secs = string.format("%2.f", math.floor(seconds - hours*3600 - mins *60));
    time = hours..":"..mins..":"..secs
--player:SendBroadcastMessage("|ccc006400[Server Uptime]|ccc00FF00 "..time..".")
player:SendBroadcastMessage("|ccc006400[Server Uptime]|ccc00FF00 "..hours.." Hour(s) "..mins.." Minute(s) "..secs.." Second(s).")
end

RegisterPlayerEvent(3, OnLogin)