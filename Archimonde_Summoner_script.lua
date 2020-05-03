local UnitEntry = 100094; -- сам моб который начинает ивент
local Helper_Unit_Entry = 100095; -- мобы которых призывает main unit
local Target_for_beam = 21987; -- таргет для луча в портал
local Boss_Entry = 100096; -- id самого босса

local emoteRU = {
	[1] = "Я хочу убить Архимонда",
	[2] = "Начать бой ?",
	[3] = "Не сейчас",
	[4] = "Глупец! Ты действительно думаешь что ты сможешь победить самого Архимонда?",
	[5] = "Архимонд разрушит ваш жалкий мир!",
	[6] = "Мой повелитель я призываю вас из бездны! Архимонд, прийди и уничтож все живое.",
	[7] = "Эти чужаки осмелелись убить вас.",
	[8] = "Ритуал почти завершен.";
	
};

local emoteEN = {
	[1] = "I want to kill Archimonde",
	[2] = "Start a fight?",
	[3] = "Not now",
	[4] = "Fool! Do you really think that you can defeat Archimonde himself?",
	[5] = "Archimonde will destroy your miserable world!",
	[6] = "My lord, I challenge you from the abyss! Archimonde, come and destroy all life.",
	[7] = "These strangers dare to kill you.",
	[8] = "The ritual is almost complete.";

};



-- ability
local laser_beam_visual = 43591; -- каст луча в портал (визуалка)



-- 41232 - телепортация
-- 38007 - розовый луч
-- 35766 - суммон





-- функция открытия диалога
function OnGossipHello(event, player, unit)
--[[totaltime = os.time()  -- нужно сделать кд на меню
D = AuthDBQuery("SELECT MAX(starttime) FROM uptime");
local uptime = D:GetUInt32(0)
local c = (totaltime - uptime)
local seconds = c]]

accountId = player:GetAccountId()
local Q = AuthDBQuery("SELECT locale FROM account where `id`='"..accountId.."'");
local localization = Q:GetUInt32(0)
  
			if (localization == 8) then 
				player:GossipMenuAddItem(7, emoteRU[1] , 0, 1,nil, emoteRU[2])
				player:GossipMenuAddItem(7, emoteRU[3], 0, 2)
				player:GossipSendMenu(1, unit)
				else
				player:GossipMenuAddItem(7, emoteEN[1] , 0, 1,nil, emoteEN[2])
				player:GossipMenuAddItem(7, emoteEN[3], 0, 2)
				player:GossipSendMenu(1, unit)
			end	
end

 -- функция при нажатии на пункты в диалоге
function OnGossipSelect(event, player, unit, sender, intid, code)
     if (intid == 1)then
        unit:RegisterEvent(Duthorian_Dialogue01, 1000, 1)
		player:GossipComplete()
	 end
	 if (intid == 2)then
	    player:GossipComplete()
	 end
end

-- фаза 1
function Duthorian_Dialogue01(event, delay, pCall, unit)
local Q = AuthDBQuery("SELECT locale FROM account where `id`='"..accountId.."'");
local localization = Q:GetUInt32(0)
       if (localization == 8) then
			unit:MoveTo(200000, -3384.038086, 1530.856079, 50.210461)
			unit:SendUnitSay(emoteRU[4], 0)
			
			unit:RegisterEvent(Duthorian_Dialogue02, 5000, 1)
	        else
			unit:MoveTo(200000, -3363.798096, 1527.353149, 50.534603)
			unit:SendUnitSay(emoteEN[4], 0)
			unit:RegisterEvent(Duthorian_Dialogue02, 5000, 1)
	   end
end
 
-- фаза 2
function Duthorian_Dialogue02(event, delay, pCall, creature)
local Q = AuthDBQuery("SELECT locale FROM account where `id`='"..accountId.."'");
local localization = Q:GetUInt32(0)
		if (localization == 8) then
			--creature:MoveTo(200000, 1687.99, -5823.16, 116.125)
			creature:MoveTo(200000, -3363.798096, 1527.353149, 50.534603)
			creature:SendUnitSay(emoteRU[5], 0)
			creature:RegisterEvent(Duthorian_Dialogue03, 5000, 1)
		    else
			creature:MoveTo(200000, -3363.798096, 1527.353149, 50.534603)
			creature:SendUnitSay(emoteEN[5], 0)
			creature:RegisterEvent(Duthorian_Dialogue03, 5000, 1)
		end
end

--фаза 3
function Duthorian_Dialogue03(event, delay, pCall, creature, target)
local Q = AuthDBQuery("SELECT locale FROM account where `id`='"..accountId.."'");
local localization = Q:GetUInt32(0)
		if (localization == 8) then
		
			 creature:SendUnitSay(emoteRU[6], 0)
			 creature:RegisterEvent(SpawnHounds, 15000, 1) -- 1 количество раз вызывания функции --5000 через сколько сек появится босс
		     creature:RegisterEvent(spawn_1, 1, 1)
			 creature:RegisterEvent(spawn_2, 1, 1)
			 creature:RegisterEvent(beam, 1, 140)
			 creature:RegisterEvent(SummonGameObject, 2000, 1)
			 creature:RegisterEvent(talk, 10000, 1)
			 creature:RegisterEvent(talk2, 16000, 1)
			 creature:RegisterEvent(ReturnToSpawnPoint, 18000, 1)
		     else
			 creature:SendUnitSay(emoteEN[6], 0)
			 creature:RegisterEvent(SpawnHounds, 15000, 1) -- 1 количество раз вызывания функции --5000 через сколько сек появится босс
			 creature:RegisterEvent(beam, 1, 140)
			 creature:RegisterEvent(SummonGameObject, 2000, 1)
			 creature:RegisterEvent(talk, 10000, 1)
			 creature:RegisterEvent(talk2, 16000, 1)
			 creature:RegisterEvent(ReturnToSpawnPoint, 18000, 1)
		 end
		 
end

-- призыв портала
function SummonGameObject(event, delay, pCall, creature, target)
    creature:SummonGameObject(178484, -3327.562744, 1522.266846, 68.679482, 3.061593)
	 
end



-- каст луча в портал
function beam(event, delay, pCall, creature, target)
local target = creature:GetNearestCreature(533, Target_for_beam, 0, 1);
    if target  then
			creature:CastSpell(target, laser_beam_visual)
    end 
end

-- диалог
function talk2(event, delay, pCall, creature)
local Q = AuthDBQuery("SELECT locale FROM account where `id`='"..accountId.."'");
local localization = Q:GetUInt32(0)
	if (localization == 8) then
		creature:SendUnitSay(emoteRU[7], 0)
		else
		creature:SendUnitSay(emoteEN[7], 0)
	end
end

-- диалог
function talk(event, delay, pCall, creature)
local Q = AuthDBQuery("SELECT locale FROM account where `id`='"..accountId.."'");
local localization = Q:GetUInt32(0)
	if (localization == 8) then
		creature:SendUnitSay(emoteRU[8], 0)
		else
		creature:SendUnitSay(emoteRU[8], 0)
	end
end




-- возврат на свое место NPC
function ReturnToSpawnPoint(event, delay, pCall, creature)
   creature:MoveTo(200000, -3377.647461, 1565.167969, 49.701183)
end

-- функция позиции босса
function SummonHounds(creature, target)
    local x, y, z = creature:GetRelativePoint(math.random()*9, math.random()*math.pi*2)
    local hound = creature:SpawnCreature(Boss_Entry, -3332.907471, 1522.713501, 54.666561, 3.034100, 2, 10000) -- количество секунд через сколько пропадет босс после выхода из комбата
	
    if (hound) then
		hound:MoveTo(200000, -3345.038818, 1524.312622, 52.958382)
        hound:AttackStart(player:IsRange())
    end
end

-- функция призыва босса
function SpawnHounds(event, delay, pCall, creature)
    SummonHounds(creature, creature:GetVictim())
   
    
end

-- появление моба
function Boss_Spawn(creature, event)

end
 
-- комбат 
function Boss_BeginCombat(event, creature, target)
        
end

-- смерть моба
function Boss_Death(creature, event, player)
    creature:RemoveEvents()	
end

-- эвейд моба
function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
	creature:SetFaction(35)
	--creature:DespawnOrUnsummon(3000) -- Деспавн моб пропадает через 3 сек
end


-- helper summ 1
function summ_1(creature, target)
    local x, y, z = creature:GetRelativePoint(math.random()*9, math.random()*math.pi*2)
    local hound = creature:SpawnCreature(100095, -3382.687012, 1522.269165, 52.202652, 6.196133, 2, 15500) -- количество секунд через сколько пропадет босс после выхода из комбата
	
    if (hound) then
		hound:MoveTo(200000, -3370.8884228, 1521.412598, 51.465778)
		hound:SendUnitSay("Я помогу", 0) 
		hound:RegisterEvent(beam_summoner_wait, 2000, 1)
    end
end

-- helper spawn 1
function spawn_1(event, delay, pCall, creature)
    summ_1(creature, creature:GetVictim())
    
end

-- helper summ 2
function summ_2(creature, target)
    local x, y, z = creature:GetRelativePoint(math.random()*9, math.random()*math.pi*2)
    local hound = creature:SpawnCreature(100095, -3379.526855, 1537.938232, 48.790123, 6.156855, 2, 15500) -- количество секунд через сколько пропадет босс после выхода из комбата
	
    if (hound) then
		hound:MoveTo(200000, -3368.538330, 1536.892944, 48.871216)
		hound:SendUnitSay("Я помогу", 0)
		hound:RegisterEvent(beam_summoner_wait, 2000, 1)
    end
end

-- helper spawn 2
function spawn_2(event, delay, pCall, creature)
    summ_2(creature, creature:GetVictim())
end

function beam_summoner_wait(event, delay, pCall, creature)
    creature:RegisterEvent(beam_summoner, 1, 120)
end

function beam_summoner(event, delay, pCall, creature, target)
local target = creature:GetNearestCreature(533, Target_for_beam, 0, 1);
    if target  then
			creature:CastSpell(target, laser_beam_visual)
    end 
	
end

RegisterCreatureGossipEvent(UnitEntry, 1, OnGossipHello)
RegisterCreatureGossipEvent(UnitEntry, 2, OnGossipSelect)
RegisterCreatureEvent(UnitEntry, 1, Boss_BeginCombat) -- on combat
RegisterCreatureEvent(UnitEntry, 2, OnLeaveCombat) -- on leave combat
RegisterCreatureEvent(UnitEntry, 4, Boss_Death) -- on death
RegisterCreatureEvent(UnitEntry, 18, Boss_Spawn) -- on spawn