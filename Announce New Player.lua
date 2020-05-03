--[[
Create by Nekotinchik
Copyright © 2019
--]]

-- CODE STUFFS! DO NOT EDIT BELOW
-- UNLESS YOU KNOW WHAT YOU'RE DOING!

function OnLogin(event, player)
        --###########################
		--######---WARRIOR---########
		--###########################
	    
		
		-- Tauren Warrior woman
        if (player:GetClass() == 1) then
		  if (player:GetRace() == 6) then
		     if (player:GetGender() == 1) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_tauren_female:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		  end
		end
		-- Tauren Warrior man
		        if (player:GetClass() == 1) then
		  if (player:GetRace() == 6) then
		     if (player:GetGender() == 0) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_tauren_male:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		  end
		end
        -- Human Warrior woman
		        if (player:GetClass() == 1) then
		  if (player:GetRace() == 1) then
		     if (player:GetGender() == 1) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_human_female:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		  end
		end
		-- Human Warrior man
				        if (player:GetClass() == 1) then
		  if (player:GetRace() == 1) then
		     if (player:GetGender() == 0) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_human_male:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		  end
		end
		-- Dwarf Warrior woman
		if (player:GetClass() == 1) then
		  if (player:GetRace() == 3) then
		     if (player:GetGender() == 1) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_dwarf_female:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		  end
		end
		-- Dwarf Warrior man
        if (player:GetClass() == 1) then
		   if (player:GetRace() == 3) then
		     if (player:GetGender() == 0) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_dwarf_male:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- nightelf Warrior woman
        if (player:GetClass() == 1) then
		   if (player:GetRace() == 4) then
		     if (player:GetGender() == 1) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_nightelf_female:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- nightelf Warrior man
        if (player:GetClass() == 1) then
		   if (player:GetRace() == 4) then
		     if (player:GetGender() == 0) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_nightelf_male:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- gnome Warrior woman
        if (player:GetClass() == 1) then
		   if (player:GetRace() == 7) then
		     if (player:GetGender() == 1) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_gnome_female:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- gmome Warrior man
        if (player:GetClass() == 1) then
		   if (player:GetRace() == 7) then
		     if (player:GetGender() == 0) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_gnome_male:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- draenei Warrior woman
        if (player:GetClass() == 1) then
		   if (player:GetRace() == 11) then
		     if (player:GetGender() == 1) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_draenei_female:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		   end
		end		
		-- draenei Warrior man
        if (player:GetClass() == 1) then
		   if (player:GetRace() == 11) then
		     if (player:GetGender() == 0) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_draenei_male:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		   end
	    end
		-- orc Warrior woman
        if (player:GetClass() == 1) then
		   if (player:GetRace() == 2) then
		     if (player:GetGender() == 1) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_orc_female:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- orc Warrior man
        if (player:GetClass() == 1) then
		   if (player:GetRace() == 2) then
		     if (player:GetGender() == 0) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_orc_female:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- undead Warrior woman
        if (player:GetClass() == 1) then
		   if (player:GetRace() == 5) then
		     if (player:GetGender() == 1) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_undead_female:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- undead Warrior man
        if (player:GetClass() == 1) then
		   if (player:GetRace() == 5) then
		     if (player:GetGender() == 0) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_undead_male:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- troll Warrior woman
        if (player:GetClass() == 1) then
		   if (player:GetRace() == 8) then
		     if (player:GetGender() == 1) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_troll_female:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- troll Warrior man
        if (player:GetClass() == 1) then
		   if (player:GetRace() == 8) then
		     if (player:GetGender() == 0) then
               name1 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_sword_27:15|t|TInterface\\icons\\Achievement_character_troll_male:15|t]".."["..name1.."]".." joined to our server".."!|r")
             end
		   end
		end

        --###########################
		--######---HUNTER---#########
		--###########################
	    
		
		-- dwarf Hunter woman
        if (player:GetClass() == 3) then
		   if (player:GetRace() == 3) then
		     if (player:GetGender() == 1) then
		        name2 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_weapon_bow_07:15|t|TInterface\\icons\\Achievement_character_dwarf_female:15|t]".."["..name2.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- dwarf Hunter man
        if (player:GetClass() == 3) then
		   if (player:GetRace() == 3) then
		     if (player:GetGender() == 0) then
		        name2 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_weapon_bow_07:15|t|TInterface\\icons\\Achievement_character_dwarf_male:15|t]".."["..name2.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- nightelf Hunter woman
		if (player:GetClass() == 3) then
		   if (player:GetRace() == 4) then
		     if (player:GetGender() == 1) then
		        name2 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_weapon_bow_07:15|t|TInterface\\icons\\Achievement_character_nightelf_female:15|t]".."["..name2.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- nightelf Hunter man
		if (player:GetClass() == 3) then
		   if (player:GetRace() == 4) then
		     if (player:GetGender() == 0) then
		        name2 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_weapon_bow_07:15|t|TInterface\\icons\\Achievement_character_nightelf_male:15|t]".."["..name2.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- draenei Hunter woman
		if (player:GetClass() == 3) then
		   if (player:GetRace() == 11) then
		     if (player:GetGender() == 1) then
		        name2 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_weapon_bow_07:15|t|TInterface\\icons\\Achievement_character_draenei_female:15|t]".."["..name2.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- draenei Hunter man
		if (player:GetClass() == 3) then
		   if (player:GetRace() == 11) then
		     if (player:GetGender() == 0) then
		        name2 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_weapon_bow_07:15|t|TInterface\\icons\\Achievement_character_draenei_male:15|t]".."["..name2.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- orc Hunter woman
		if (player:GetClass() == 3) then
		   if (player:GetRace() == 2) then
		     if (player:GetGender() == 1) then
		        name2 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_weapon_bow_07:15|t|TInterface\\icons\\Achievement_character_orc_female:15|t]".."["..name2.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- orc Hunter man
		if (player:GetClass() == 3) then
		   if (player:GetRace() == 2) then
		     if (player:GetGender() == 0) then
		        name2 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_weapon_bow_07:15|t|TInterface\\icons\\Achievement_character_orc_male:15|t]".."["..name2.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- tauren Hunter woman
		if (player:GetClass() == 3) then
		   if (player:GetRace() == 6) then
		     if (player:GetGender() == 1) then
		        name2 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_weapon_bow_07:15|t|TInterface\\icons\\Achievement_character_tauren_female:15|t]".."["..name2.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- tauren Hunter man
		if (player:GetClass() == 3) then
		   if (player:GetRace() == 6) then
		     if (player:GetGender() == 0) then
		        name2 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_weapon_bow_07:15|t|TInterface\\icons\\Achievement_character_tauren_male:15|t]".."["..name2.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- troll Hunter woman
		if (player:GetClass() == 3) then
		   if (player:GetRace() == 8) then
		     if (player:GetGender() == 1) then
		        name2 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_weapon_bow_07:15|t|TInterface\\icons\\Achievement_character_troll_female:15|t]".."["..name2.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- troll Hunter man
		if (player:GetClass() == 3) then
		   if (player:GetRace() == 8) then
		     if (player:GetGender() == 0) then
		        name2 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_weapon_bow_07:15|t|TInterface\\icons\\Achievement_character_troll_male:15|t]".."["..name2.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- bloodelf Hunter woman
		if (player:GetClass() == 3) then
		   if (player:GetRace() == 10) then
		     if (player:GetGender() == 1) then
		        name2 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_weapon_bow_07:15|t|TInterface\\icons\\Achievement_character_bloodelf_female:15|t]".."["..name2.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- bloodelf Hunter man
		if (player:GetClass() == 3) then
		   if (player:GetRace() == 10) then
		     if (player:GetGender() == 0) then
		        name2 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_weapon_bow_07:15|t|TInterface\\icons\\Achievement_character_bloodelf_male:15|t]".."["..name2.."]".." joined to our server".."!|r")
             end
		   end
		end
        --###########################
		--######---MAGE---###########
		--###########################
		
		
		-- Human MAGE woman
		if (player:GetClass() == 8) then
		   if (player:GetRace() == 1) then
		     if (player:GetGender() == 1) then
                name3 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_staff_13:15|t|TInterface\\icons\\Achievement_character_human_female:15|t]".."["..name3.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Human MAGE man
		if (player:GetClass() == 8) then
		   if (player:GetRace() == 1) then
		     if (player:GetGender() == 0) then
                name3 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_staff_13:15|t|TInterface\\icons\\Achievement_character_human_male:15|t]".."["..name3.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- gnome MAGE woman
		if (player:GetClass() == 8) then
		   if (player:GetRace() == 7) then
		     if (player:GetGender() == 1) then
                name3 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_staff_13:15|t|TInterface\\icons\\Achievement_character_gnome_female:15|t]".."["..name3.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- gnome MAGE man
		if (player:GetClass() == 8) then
		   if (player:GetRace() == 7) then
		     if (player:GetGender() == 0) then
                name3 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_staff_13:15|t|TInterface\\icons\\Achievement_character_gnome_male:15|t]".."["..name3.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- draenei MAGE woman
		if (player:GetClass() == 8) then
		   if (player:GetRace() == 11) then
		     if (player:GetGender() == 1) then
                name3 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_staff_13:15|t|TInterface\\icons\\Achievement_character_draenei_female:15|t]".."["..name3.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- draenei MAGE man
		if (player:GetClass() == 8) then
		   if (player:GetRace() == 11) then
		     if (player:GetGender() == 0) then
                name3 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_staff_13:15|t|TInterface\\icons\\Achievement_character_draenei_male:15|t]".."["..name3.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- undead MAGE woman
		if (player:GetClass() == 8) then
		   if (player:GetRace() == 5) then
		     if (player:GetGender() == 1) then
                name3 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_staff_13:15|t|TInterface\\icons\\Achievement_character_undead_female:15|t]".."["..name3.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- undead MAGE man
		if (player:GetClass() == 8) then
		   if (player:GetRace() == 5) then
		     if (player:GetGender() == 0) then
                name3 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_staff_13:15|t|TInterface\\icons\\Achievement_character_undead_male:15|t]".."["..name3.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- troll MAGE woman
		if (player:GetClass() == 8) then
		   if (player:GetRace() == 8) then
		     if (player:GetGender() == 1) then
                name3 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_staff_13:15|t|TInterface\\icons\\Achievement_character_troll_female:15|t]".."["..name3.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- troll MAGE man
		if (player:GetClass() == 8) then
		   if (player:GetRace() == 8) then
		     if (player:GetGender() == 0) then
                name3 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_staff_13:15|t|TInterface\\icons\\Achievement_character_troll_male:15|t]".."["..name3.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- bloodelf MAGE woman
		if (player:GetClass() == 8) then
		   if (player:GetRace() == 10) then
		     if (player:GetGender() == 1) then
                name3 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_staff_13:15|t|TInterface\\icons\\Achievement_character_bloodelf_female:15|t]".."["..name3.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- bloodelf MAGE man
		if (player:GetClass() == 8) then
		   if (player:GetRace() == 10) then
		     if (player:GetGender() == 0) then
                name3 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_staff_13:15|t|TInterface\\icons\\Achievement_character_bloodelf_male:15|t]".."["..name3.."]".." joined to our server".."!|r")
             end
		   end
		end
        --###########################
		--######---Priest---#########
		--###########################
		
		-- human Priest woman
		if (player:GetClass() == 5) then
		   if (player:GetRace() == 1) then
		     if (player:GetGender() == 1) then
                 name4 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_staff_30:15|t|TInterface\\icons\\Achievement_character_human_female:15|t]".."["..name4.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- human Priest man
		if (player:GetClass() == 5) then
		   if (player:GetRace() == 1) then
		     if (player:GetGender() == 0) then
                 name4 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_staff_30:15|t|TInterface\\icons\\Achievement_character_human_male:15|t]".."["..name4.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- dwarf Priest woman
		if (player:GetClass() == 5) then
		   if (player:GetRace() == 3) then
		     if (player:GetGender() == 1) then
                 name4 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_staff_30:15|t|TInterface\\icons\\Achievement_character_dwarf_female:15|t]".."["..name4.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- dwarf Priest man
		if (player:GetClass() == 5) then
		   if (player:GetRace() == 3) then
		     if (player:GetGender() == 0) then
                 name4 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_staff_30:15|t|TInterface\\icons\\Achievement_character_dwarf_male:15|t]".."["..name4.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- nightelf Priest woman
		if (player:GetClass() == 5) then
		   if (player:GetRace() == 4) then
		     if (player:GetGender() == 1) then
                 name4 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_staff_30:15|t|TInterface\\icons\\Achievement_character_nightelf_female:15|t]".."["..name4.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- nightelf Priest man
		if (player:GetClass() == 5) then
		   if (player:GetRace() == 4) then
		     if (player:GetGender() == 0) then
                 name4 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_staff_30:15|t|TInterface\\icons\\Achievement_character_nightelf_male:15|t]".."["..name4.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- draenei Priest woman
		if (player:GetClass() == 5) then
		   if (player:GetRace() == 11) then
		     if (player:GetGender() == 1) then
                 name4 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_staff_30:15|t|TInterface\\icons\\Achievement_character_draenei_female:15|t]".."["..name4.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- draenei Priest man
		if (player:GetClass() == 5) then
		   if (player:GetRace() == 11) then
		     if (player:GetGender() == 0) then
                 name4 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_staff_30:15|t|TInterface\\icons\\Achievement_character_draenei_male:15|t]".."["..name4.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- undead Priest woman
		if (player:GetClass() == 5) then
		   if (player:GetRace() == 5) then
		     if (player:GetGender() == 1) then
                 name4 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_staff_30:15|t|TInterface\\icons\\Achievement_character_undead_female:15|t]".."["..name4.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- undead Priest man
		if (player:GetClass() == 5) then
		   if (player:GetRace() == 5) then
		     if (player:GetGender() == 0) then
                 name4 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_staff_30:15|t|TInterface\\icons\\Achievement_character_undead_male:15|t]".."["..name4.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- troll Priest woman
		if (player:GetClass() == 5) then
		   if (player:GetRace() == 8) then
		     if (player:GetGender() == 1) then
                 name4 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_staff_30:15|t|TInterface\\icons\\Achievement_character_troll_female:15|t]".."["..name4.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- troll Priest man
		if (player:GetClass() == 5) then
		   if (player:GetRace() == 8) then
		     if (player:GetGender() == 0) then
                 name4 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_staff_30:15|t|TInterface\\icons\\Achievement_character_troll_male:15|t]".."["..name4.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- bloodelf Priest woman
		if (player:GetClass() == 5) then
		   if (player:GetRace() == 10) then
		     if (player:GetGender() == 1) then
                 name4 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_staff_30:15|t|TInterface\\icons\\Achievement_character_bloodelf_female:15|t]".."["..name4.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- bloodelf Priest man
		if (player:GetClass() == 5) then
		   if (player:GetRace() == 10) then
		     if (player:GetGender() == 0) then
                 name4 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_staff_30:15|t|TInterface\\icons\\Achievement_character_bloodelf_male:15|t]".."["..name4.."]".." joined to our server".."!|r")
             end
		   end
		end
		--###########################
		--######---warlock---########
		--###########################


		-- human warlock woman
        if (player:GetClass() == 9) then
		   if (player:GetRace() == 1) then
		     if (player:GetGender() == 1) then		   
                 name5 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\spell_nature_faeriefire:15|t|TInterface\\icons\\Achievement_character_human_female:15|t]".."["..name5.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- human warlock man
        if (player:GetClass() == 9) then
		   if (player:GetRace() == 1) then
		     if (player:GetGender() == 0) then		   
                 name5 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\spell_nature_faeriefire:15|t|TInterface\\icons\\Achievement_character_human_male:15|t]".."["..name5.."]".." joined to our server".."!|r")
             end
		   end
		end
 		-- gnome warlock woman
        if (player:GetClass() == 9) then
		   if (player:GetRace() == 7) then
		     if (player:GetGender() == 1) then		   
                 name5 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\spell_nature_faeriefire:15|t|TInterface\\icons\\Achievement_character_gnome_female:15|t]".."["..name5.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- gnome warlock man  
        if (player:GetClass() == 9) then
		   if (player:GetRace() == 7) then
		     if (player:GetGender() == 0) then		   
                 name5 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\spell_nature_faeriefire:15|t|TInterface\\icons\\Achievement_character_gnome_male:15|t]".."["..name5.."]".." joined to our server".."!|r")
             end
		   end
		end		
		-- orc warlock woman
        if (player:GetClass() == 9) then
		   if (player:GetRace() == 2) then
		     if (player:GetGender() == 1) then		   
                 name5 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_nature_faeriefire:15|t|TInterface\\icons\\Achievement_character_orc_female:15|t]".."["..name5.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- orc warlock man
        if (player:GetClass() == 9) then
		   if (player:GetRace() == 2) then
		     if (player:GetGender() == 0) then		   
                 name5 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_nature_faeriefire:15|t|TInterface\\icons\\Achievement_character_orc_male:15|t]".."["..name5.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- undead warlock woman
        if (player:GetClass() == 9) then
		   if (player:GetRace() == 5) then
		     if (player:GetGender() == 1) then		   
                 name5 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_nature_faeriefire:15|t|TInterface\\icons\\Achievement_character_undead_female:15|t]".."["..name5.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- undead warlock man
        if (player:GetClass() == 9) then
		   if (player:GetRace() == 5) then
		     if (player:GetGender() == 0) then		   
                 name5 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_nature_faeriefire:15|t|TInterface\\icons\\Achievement_character_undead_male:15|t]".."["..name5.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- bloodelf warlock woman
        if (player:GetClass() == 9) then
		   if (player:GetRace() == 10) then
		     if (player:GetGender() == 1) then		   
                 name5 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_nature_faeriefire:15|t|TInterface\\icons\\Achievement_character_bloodelf_female:15|t]".."["..name5.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- bloodelf warlock man
        if (player:GetClass() == 9) then
		   if (player:GetRace() == 10) then
		     if (player:GetGender() == 0) then		   
                 name5 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_nature_faeriefire:15|t|TInterface\\icons\\Achievement_character_bloodelf_male:15|t]".."["..name5.."]".." joined to our server".."!|r")
             end
		   end
		end
		--###########################
		--######---shaman---#########
		--###########################


		-- draenei shaman woman
        if (player:GetClass() == 7) then
		   if (player:GetRace() == 11) then
		     if (player:GetGender() == 1) then	
                 name6 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_jewelry_talisman_04:15|t|TInterface\\icons\\Achievement_character_draenei_female:15|t]".."["..name6.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- draenei shaman man
        if (player:GetClass() == 7) then
		   if (player:GetRace() == 11) then
		     if (player:GetGender() == 0) then	
                 name6 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_jewelry_talisman_04:15|t|TInterface\\icons\\Achievement_character_draenei_male:15|t]".."["..name6.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- orc shaman woman
        if (player:GetClass() == 7) then
		   if (player:GetRace() == 2) then
		     if (player:GetGender() == 1) then	
                 name6 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_jewelry_talisman_04:15|t|TInterface\\icons\\Achievement_character_orc_female:15|t]".."["..name6.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- orc shaman man
        if (player:GetClass() == 7) then
		   if (player:GetRace() == 2) then
		     if (player:GetGender() == 0) then	
                 name6 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_jewelry_talisman_04:15|t|TInterface\\icons\\Achievement_character_orc_male:15|t]".."["..name6.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- tauren shaman woman
        if (player:GetClass() == 7) then
		   if (player:GetRace() == 6) then
		     if (player:GetGender() == 1) then	
                 name6 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_jewelry_talisman_04:15|t|TInterface\\icons\\Achievement_character_tauren_female:15|t]".."["..name6.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- tauren shaman man
        if (player:GetClass() == 7) then
		   if (player:GetRace() == 6) then
		     if (player:GetGender() == 0) then	
                 name6 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_jewelry_talisman_04:15|t|TInterface\\icons\\Achievement_character_tauren_male:15|t]".."["..name6.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- troll shaman woman
        if (player:GetClass() == 7) then
		   if (player:GetRace() == 8) then
		     if (player:GetGender() == 1) then	
                 name6 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_jewelry_talisman_04:15|t|TInterface\\icons\\Achievement_character_troll_female:15|t]".."["..name6.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- troll shaman man
        if (player:GetClass() == 7) then
		   if (player:GetRace() == 8) then
		     if (player:GetGender() == 0) then	
                 name6 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_jewelry_talisman_04:15|t|TInterface\\icons\\Achievement_character_troll_male:15|t]".."["..name6.."]".." joined to our server".."!|r")
             end
		   end
		end	
		--###########################
		--######---druid---##########
		--###########################

		-- nightelf druid woman
        if (player:GetClass() == 11) then
		   if (player:GetRace() == 4) then
		     if (player:GetGender() == 1) then	              
			     name7 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_misc_monsterclaw_04:15|t|TInterface\\icons\\Achievement_character_nightelf_female:15|t]".."["..name7.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- nightelf druid man
        if (player:GetClass() == 11) then
		   if (player:GetRace() == 4) then
		     if (player:GetGender() == 0) then	              
			     name7 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_misc_monsterclaw_04:15|t|TInterface\\icons\\Achievement_character_nightelf_male:15|t]".."["..name7.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- troll druid woman
        if (player:GetClass() == 11) then
		   if (player:GetRace() == 6) then
		     if (player:GetGender() == 1) then	              
			     name7 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_misc_monsterclaw_04:15|t|TInterface\\icons\\Achievement_character_tauren_female:15|t]".."["..name7.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- troll druid man
        if (player:GetClass() == 11) then
		   if (player:GetRace() == 6) then
		     if (player:GetGender() == 0) then	              
			     name7 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_misc_monsterclaw_04:15|t|TInterface\\icons\\Achievement_character_tauren_male:15|t]".."["..name7.."]".." joined to our server".."!|r")
             end
		   end
		end	
		--###########################
		--######---paladin---########
		--###########################

		-- human paladin woman
        if (player:GetClass() == 2) then
		   if (player:GetRace() == 1) then
		     if (player:GetGender() == 1) then	     
                    name8 = player:GetName()
                 SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\ability_thunderbolt:15|t|TInterface\\icons\\Achievement_character_human_female:15|t]".."["..name8.."]".." joined to our server".."!|r")
             end
		   end
		end	       
		-- human paladin man
        if (player:GetClass() == 2) then
		   if (player:GetRace() == 1) then
		     if (player:GetGender() == 0) then	     
                    name8 = player:GetName()
                 SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\ability_thunderbolt:15|t|TInterface\\icons\\Achievement_character_human_male:15|t]".."["..name8.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- dwarf paladin woman
        if (player:GetClass() == 2) then
		   if (player:GetRace() == 3) then
		     if (player:GetGender() == 1) then	     
                    name8 = player:GetName()
                 SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\ability_thunderbolt:15|t|TInterface\\icons\\Achievement_character_dwarf_female:15|t]".."["..name8.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- dwarf paladin man
        if (player:GetClass() == 2) then
		   if (player:GetRace() == 3) then
		     if (player:GetGender() == 0) then	     
                    name8 = player:GetName()
                 SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\ability_thunderbolt:15|t|TInterface\\icons\\Achievement_character_dwarf_male:15|t]".."["..name8.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- Draenei paladin woman
        if (player:GetClass() == 2) then
		   if (player:GetRace() == 11) then
		     if (player:GetGender() == 1) then	     
                    name8 = player:GetName()
                 SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\ability_thunderbolt:15|t|TInterface\\icons\\Achievement_character_draenei_female:15|t]".."["..name8.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Draenei paladin man
        if (player:GetClass() == 2) then
		   if (player:GetRace() == 11) then
		     if (player:GetGender() == 0) then	     
                    name8 = player:GetName()
                 SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\ability_thunderbolt:15|t|TInterface\\icons\\Achievement_character_draenei_male:15|t]".."["..name8.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- bloodelf paladin woman
        if (player:GetClass() == 2) then
		   if (player:GetRace() == 10) then
		     if (player:GetGender() == 1) then	     
                    name8 = player:GetName()
                 SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\ability_thunderbolt:15|t|TInterface\\icons\\Achievement_character_bloodelf_female:15|t]".."["..name8.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- bloodelf paladin man
        if (player:GetClass() == 2) then
		   if (player:GetRace() == 10) then
		     if (player:GetGender() == 0) then	     
                    name8 = player:GetName()
                 SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\ability_thunderbolt:15|t|TInterface\\icons\\Achievement_character_bloodelf_male:15|t]".."["..name8.."]".." joined to our server".."!|r")
             end
		   end
		end
		--###########################
		--######---rogue---##########
		--###########################
		-- Human rogue woman
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 1) then
		     if (player:GetGender() == 1) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_human_female:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Human rogue man
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 1) then
		     if (player:GetGender() == 0) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_human_male:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Dwarf rogue woman
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 3) then
		     if (player:GetGender() == 1) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_dwarf_female:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Dwarf rogue man
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 3) then
		     if (player:GetGender() == 0) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_dwarf_male:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- nightelf rogue woman
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 4) then
		     if (player:GetGender() == 1) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_nightelf_female:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- nightelf rogue man
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 4) then
		     if (player:GetGender() == 0) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_nightelf_male:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Gnome rogue woman
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 7) then
		     if (player:GetGender() == 1) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_gnome_female:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Gnome rogue man
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 7) then
		     if (player:GetGender() == 0) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_gnome_male:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Orc rogue woman
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 2) then
		     if (player:GetGender() == 1) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_orc_female:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Orc rogue man
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 2) then
		     if (player:GetGender() == 0) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_orc_male:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Undead rogue woman
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 5) then
		     if (player:GetGender() == 1) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_undead_female:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Undead rogue man
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 5) then
		     if (player:GetGender() == 0) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_undead_male:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Troll rogue woman
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 8) then
		     if (player:GetGender() == 1) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_troll_female:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Troll rogue man
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 8) then
		     if (player:GetGender() == 0) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_troll_male:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- bloodelf rogue woman
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 10) then
		     if (player:GetGender() == 1) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_bloodelf_female:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- bloodelf rogue man
        if (player:GetClass() == 4) then
		   if (player:GetRace() == 10) then
		     if (player:GetGender() == 0) then
                     name9 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\inv_throwingknife_04:15|t|TInterface\\icons\\Achievement_character_bloodelf_male:15|t]".."["..name9.."]".." joined to our server".."!|r")
             end
		   end
		end
		--###########################
		--####---Death Knight---#####
		--###########################

		-- Human Death Knight woman
        if (player:GetClass() == 6) then
		   if (player:GetRace() == 1) then
		     if (player:GetGender() == 1) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_human_female:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Human Death Knight man
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 1) then
		     if (player:GetGender() == 0) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_human_male:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Dwarf Death Knight woman
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 3) then
		     if (player:GetGender() == 1) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_dwarf_female:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Dwarf Death Knight man
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 3) then
		     if (player:GetGender() == 0) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_dwarf_male:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Night Elf Death Knight woman
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 4) then
		     if (player:GetGender() == 1) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_nightelf_female:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Night Elf Death Knight man
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 4) then
		     if (player:GetGender() == 0) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_nightelf_male:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Gnome Death Knight woman
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 7) then
		     if (player:GetGender() == 1) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_gnome_female:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Gnome Death Knight man
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 7) then
		     if (player:GetGender() == 0) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_gnome_male:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Draenei Death Knight woman
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 11) then
		     if (player:GetGender() == 1) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_draenei_female:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end
		-- Draenei Death Knight man	
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 11) then
		     if (player:GetGender() == 0) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_02:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_draenei_male:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end		
		-- Orc Death Knight woman
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 2) then
		     if (player:GetGender() == 1) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_orc_female:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- Orc Death Knight man
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 2) then
		     if (player:GetGender() == 0) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_orc_male:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- Undead Death Knight woman
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 5) then
		     if (player:GetGender() == 1) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_undead_female:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- Undead Death Knight man
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 5) then
		     if (player:GetGender() == 0) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_undead_male:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- Tauren Death Knight woman
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 6) then
		     if (player:GetGender() == 1) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_tauren_female:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- Tauren Death Knight man
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 6) then
		     if (player:GetGender() == 0) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_tauren_male:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- Troll Death Knight woman
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 8) then
		     if (player:GetGender() == 1) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_troll_female:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- Troll Death Knight man
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 8) then
		     if (player:GetGender() == 0) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_troll_male:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- bloodelf Death Knight woman
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 10) then
		     if (player:GetGender() == 1) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_bloodelf_female:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end	
		-- bloodelf Death Knight man
       if (player:GetClass() == 6) then
		   if (player:GetRace() == 10) then
		     if (player:GetGender() == 0) then
                 name10 = player:GetName()
                SendWorldMessage("|CFFff00ea".."New Player ".."[|TInterface\\icons\\inv_bannerpvp_01:15|t|TInterface\\icons\\spell_deathknight_classicon:15|t|TInterface\\icons\\Achievement_character_bloodelf_male:15|t]".."["..name10.."]".." joined to our server".."!|r")
             end
		   end
		end	


end
 
RegisterPlayerEvent(30, OnLogin)