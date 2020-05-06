function duel_winner (event, winner, loser, type)
playerguid = winner:GetGUIDLow()
local J = CharDBQuery("SELECT duel_win_reward FROM characters where `guid`='"..playerguid.."'");
local duel = J:GetUInt32(0)
accountId = winner:GetAccountId()
local Q = AuthDBQuery("SELECT locale FROM account where `id`='"..accountId.."'");
local localization = Q:GetUInt32(0)	
	if (localization == 8) then
		if winner and ((loser:GetMaxHealth() and winner:GetMaxHealth()) >= 10000000) then
			CharDBQuery("update `characters` set `duel_win_reward`='"..duel.."' + 1 where `guid`='"..playerguid.."'");
			winner:SendBroadcastMessage("|ccc33FFFF[Duel Counter]: У вас выиграно: "..duel.." duels. Remember to receive a reward for them at [Teleport Stone].")
			else
			winner:SendBroadcastMessage("|ccc33FFFF[Duel abuse cheсk]: У вас меньше чем 100М HP")
			loser:SendBroadcastMessage("|ccc33FFFF[Duel abuse cheсk]: У вас меньше чем 100М HP")
		end
		else
		if winner and ((loser:GetMaxHealth() and winner:GetMaxHealth()) >= 10000000) then
			CharDBQuery("update `characters` set `duel_win_reward`='"..duel.."' + 1 where `guid`='"..playerguid.."'");
			winner:SendBroadcastMessage("|ccc33FFFF[Duel Counter]: You won: "..duel.." duels. Do not forget to receive a reward for them. .")
			else
			winner:SendBroadcastMessage("|ccc33FFFF[Duel abuse cheсk]: You have less than 100M HP")
			loser:SendBroadcastMessage("|ccc33FFFF[Duel abuse cheсk]: You have less than 100M HP")
		end
	end
end
RegisterPlayerEvent( 11, duel_winner )