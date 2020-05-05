local Boss_Entry = 100091

-- emote
local emote= {
    [1] = "Come and die mortals...",
    [2] = "It's your power? hahaha",
	[3] = "Oohh NOoOOOoo ...",
};

-- ability

local Shroud_Of_Sorrow = 70986; --аура
local Sinful_Beam = 40827; --Sinful Beam
local Lightning_Wrath = 33665; --Lightning Wrath
local frenzy = 53361; --frenzy
local Barkskin = 65860; -- дубовая кожа
local frenzy_2 = 58841 --frenzy


function OnEnterCombat(event, creature, target)        
    creature:SendUnitYell(emote[1], 0)                   
    creature:RegisterEvent(Shroud_Of_Sorrow, 1000, 0)
	creature:RegisterEvent(Sinful_Beam, 2500, 0)
	creature:RegisterEvent(Lightning_Wrath, 2000, 0)
    creature:RegisterEvent(Phase_2, 3000, 0)            
end

function Shroud_Of_Sorrow(event, delay, pCall, creature)
    creature:CastSpell(creature:GetVictim(), Shroud_Of_Sorrow, 10000, 0) 
end

function Sinful_Beam(event, delay, pCall, creature)
creature:CastSpell(creature:GetVictim(), Sinful_Beam, 30000, 0)
end

function Lightning_Wrath(event, delay, pCall, creature)
creature:CastSpell(creature:GetVictim(), Lightning_Wrath, 30000, 0)
end

function Phase_2(event, delay, pCall, creature)
    if (creature:GetHealthPct() <= 50) then                       
        creature:RemoveEvents()
        creature:SendUnitYell(emote[2], 0)                 
        creature:RegisterEvent(frenzy, 2000, 1)
		creature:RegisterEvent(Barkskin, 2000, 1)
		creature:RegisterEvent(frenzy_2, 2000, 1)
	    creature:RegisterEvent(Sinful_Beam, 2500, 0)
	    creature:RegisterEvent(Lightning_Wrath, 3000, 0)
    end
end

function frenzy(event, delay, pCall, creature)
      creature:CastSpell(creature:GetVictim(), frenzy) 
	  creature:RegisterEvent(frenzy, 20000, 1)
      end


function Barkskin(event, delay, pCall, creature)
      creature:CastSpell(creature:GetVictim(), Barkskin) 
	  creature:RegisterEvent(Barkskin, 20000, 1)
      end

function frenzy_2(event, delay, pCall, creature)
      creature:CastSpell(creature:GetVictim(), frenzy_2)  
	  creature:RegisterEvent(frenzy_2, 7000, 1)
      end



function OnLeaveCombat(event, creature)

    creature:RemoveEvents()
end

function OnTargetDied(event, creature, victim)

end

function OnDied(event, creature, killer)
    creature:SendUnitYell(emote[3], 0)                   
    creature:RemoveEvents()
end

RegisterCreatureEvent(Boss_Entry, 1, OnEnterCombat)
RegisterCreatureEvent(Boss_Entry, 2, OnLeaveCombat)
RegisterCreatureEvent(Boss_Entry, 3, OnTargetDied)
RegisterCreatureEvent(Boss_Entry, 4, OnDied)