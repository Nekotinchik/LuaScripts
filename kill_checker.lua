function kill_checker( event, killer, killed )














playerguid = killer:GetGUIDLow()
local J = CharDBQuery("SELECT pvp_kills FROM characters where `guid`='"..playerguid.."'");
local kill = J:GetUInt32(0)
accountId = killer:GetAccountId()
local Q = AuthDBQuery("SELECT locale FROM account where `id`='"..accountId.."'");
local localization = Q:GetUInt32(0)
	if (localization == 8) then
		if killer and ((killed:GetMaxHealth() and killer:GetMaxHealth()) >= 10000000) then
			CharDBQuery("update `characters` set `pvp_kills`='"..kill.."' + 1 where `guid`='"..playerguid.."'");
			killer:SendBroadcastMessage("|ccc33FFFF[Duel Counter]: У вас PvP киллов: "..kill..". Не забудьте получить награду в [Teleport Stone].")
			else
			killer:SendBroadcastMessage("|ccc33FFFF[Duel abuse cheсk]: У вас меньше чем 100М HP")
			killed:SendBroadcastMessage("|ccc33FFFF[Duel abuse cheсk]: У вас меньше чем 100М HP")
		end
		else
		if killer and ((killed:GetMaxHealth() and killer:GetMaxHealth()) >= 10000000) then
			CharDBQuery("update `characters` set `pvp_kills`='"..kill.."' + 1 where `guid`='"..playerguid.."'");
			killer:SendBroadcastMessage("|ccc33FFFF[Duel Counter]: You won: "..kill..". Remember to receive a reward for them at [Teleport Stone].")
			else
			killer:SendBroadcastMessage("|ccc33FFFF[Duel abuse cheсk]: You have less than 100M HP")
			killed:SendBroadcastMessage("|ccc33FFFF[Duel abuse cheсk]: You have less than 100M HP")
		end
	end
end
RegisterPlayerEvent( 6, kill_checker )