
function OnLogin(event, player)
accountId = player:GetAccountId()
local Q = AuthDBQuery("SELECT locale FROM account where `id`='"..accountId.."'");
local localization = Q:GetUInt32(0)

    player:LearnSpell(71571) -- Heal
	  -- Warrior
	if (player:GetClass() == 1) then
	player:LearnSpell(750) -- Mail
	player:LearnSpell(3127) -- Parry
	player:LearnSpell(674) -- DualWeild
	player:LearnSpell(6673) -- Battle Shout  1
	player:LearnSpell(5242) -- Battle Shout  2
	player:LearnSpell(6192) -- Battle Shout  3
	player:LearnSpell(11549) -- Battle Shout  4
	player:LearnSpell(11550) -- Battle Shout  5
	player:LearnSpell(11551) -- Battle Shout  6
	player:LearnSpell(25289) -- Battle Shout  7
	player:LearnSpell(2048) -- Battle Shout  8
	player:LearnSpell(47436) -- Battle Shout   9
	player:LearnSpell(18499) -- Beserker Rage
	player:LearnSpell(2458) -- Beserker Stance
	player:LearnSpell(2687) -- Bloodrage
	player:LearnSpell(1161) -- Challenging Shout
	player:LearnSpell(100) -- Charge  1
	player:LearnSpell(6178) -- Charge  2
	player:LearnSpell(11578) -- Charge  3
	player:LearnSpell(845) -- Cleave  1
	player:LearnSpell(7369) -- Cleave  2
	player:LearnSpell(11608) -- Cleave  3
	player:LearnSpell(11609) -- Cleave  4
	player:LearnSpell(20569) -- Cleave  5
	player:LearnSpell(25231) -- Cleave  6
	player:LearnSpell(47519) -- Cleave  7
	player:LearnSpell(47520) -- Cleave  8
	player:LearnSpell(469) -- Commanding Shout  1
	player:LearnSpell(47439) -- Commanding Shout  2
	player:LearnSpell(47440) -- Commanding Shout   3
	player:LearnSpell(71) -- Defensive Stance
	player:LearnSpell(1160) -- Demoralizing Shout  1
	player:LearnSpell(6190) -- Demoralizing Shout  2
	player:LearnSpell(11554) -- Demoralizing Shout  3
	player:LearnSpell(11555) -- Demoralizing Shout  4
	player:LearnSpell(11556) -- Demoralizing Shout  5
	player:LearnSpell(25202) -- Demoralizing Shout  6
	player:LearnSpell(25203) -- Demoralizing Shout  7
	player:LearnSpell(47437) -- Demoralizing Shout  8
	player:LearnSpell(676) -- Disarm
	player:LearnSpell(55694) -- Enraged Regeneration
	player:LearnSpell(5308) -- Execute  1
	player:LearnSpell(20658) -- Execute  2
	player:LearnSpell(20660) -- Execute  3
	player:LearnSpell(20661) -- Execute  4
	player:LearnSpell(20662) -- Execute  5
	player:LearnSpell(25234) -- Execute  6
	player:LearnSpell(25236) -- Execute  7
	player:LearnSpell(47470) -- Execute  8
	player:LearnSpell(47471) -- Execute  9
	player:LearnSpell(1715) -- Hamstring
	player:LearnSpell(284) -- Heroic Strike  2
	player:LearnSpell(1608) -- Heroic Strike  4
	player:LearnSpell(11564) -- Heroic Strike  5
	player:LearnSpell(11565) -- Heroic Strike  6
	player:LearnSpell(11566) -- Heroic Strike  7
	player:LearnSpell(11567) -- Heroic Strike  8
	player:LearnSpell(25286) -- Heroic Strike  9
	player:LearnSpell(29707) -- Heroic Strike  10
	player:LearnSpell(30324) -- Heroic Strike  11
	player:LearnSpell(47449) -- Heroic STrike  12
	player:LearnSpell(47450) -- Heroic Strike  13
	player:LearnSpell(57755) -- Heroic Throw
	player:LearnSpell(20252) -- Intercept
	player:LearnSpell(3411) -- Intervene
	player:LearnSpell(5246) -- Intimidating Shout
	player:LearnSpell(694) -- Mocking Blow
	player:LearnSpell(7384) -- Overpower
	player:LearnSpell(6552) -- Pummel
	player:LearnSpell(1719) -- Recklessness
	player:LearnSpell(772) -- Rend  1
	player:LearnSpell(6546) -- Rend  2
	player:LearnSpell(6547) -- Rend  3
	player:LearnSpell(6548) -- Rend  4
	player:LearnSpell(11572) -- Rend  5
	player:LearnSpell(11573) -- Rend  6
	player:LearnSpell(11574) -- Rend  7
	player:LearnSpell(25208) -- Rend  8
	player:LearnSpell(46845) -- Rend  9
	player:LearnSpell(47465) -- Rend  10
	player:LearnSpell(20230) -- Retaliation
	player:LearnSpell(6572) -- Revenge  1
	player:LearnSpell(6574) -- Revenge  2
	player:LearnSpell(7379) -- Revenge  3
	player:LearnSpell(11600) -- Revenge  4
	player:LearnSpell(11601) -- Revenge  5
	player:LearnSpell(25288) -- Revenge  6
	player:LearnSpell(25269) -- Revenge  7
	player:LearnSpell(30357) -- Revenge  8
	player:LearnSpell(57823) -- Revenge   9
	player:LearnSpell(64382) -- Shattering Throw
	player:LearnSpell(72) -- Shield Bash
	player:LearnSpell(2565) -- Shield Block
	player:LearnSpell(23922) -- Shield Slam  1
	player:LearnSpell(23923) -- Shield Slam  2
	player:LearnSpell(23924) -- Shield Slam  3
	player:LearnSpell(23925) -- Shield Slam  4
	player:LearnSpell(25258) -- Shield Slam  5
	player:LearnSpell(30356) -- Shield Slam  6
	player:LearnSpell(47487) -- Shield Slam  7
	player:LearnSpell(47488) -- Shield Slam  8
	player:LearnSpell(871) -- Shield Wall
	player:LearnSpell(1464) -- Slam  1
	player:LearnSpell(8820) -- Slam  2
	player:LearnSpell(11604) -- Slam  3
	player:LearnSpell(11605) -- Slam  4
	player:LearnSpell(25241) -- Slam  5
	player:LearnSpell(25242) -- Slam  6
	player:LearnSpell(47474) -- Slam  7
	player:LearnSpell(47475) -- Slam  8
	player:LearnSpell(23920) -- Spell Reflection
	player:LearnSpell(12678) -- Stance Mastery
	player:LearnSpell(7386) -- Sunder Armor
	player:LearnSpell(355) -- Taunt
	player:LearnSpell(6343) -- Thunder Clap  1
	player:LearnSpell(8198) -- Thunder Clap  2
	player:LearnSpell(8204) -- Thunder Clap  3
	player:LearnSpell(8205) -- Thunder Clap  4
	player:LearnSpell(11580) -- Thunder Clap  5
	player:LearnSpell(11581) -- Thunder Clap  6
	player:LearnSpell(25264) -- Thunder Clap  7
	player:LearnSpell(47501) -- Thunder Clap  8
	player:LearnSpell(47502) -- Thunder Clap  9
	player:LearnSpell(34428) -- Victory Rush
	player:LearnSpell(1680) -- Whirlwind 
	end
		-- Paladin
	if (player:GetClass() == 2) then
	player:LearnSpell(31884) -- Avenging Wrath
	player:LearnSpell(750) -- Mail
	player:LearnSpell(3127) -- parry
	player:LearnSpell(20217) -- Blessing of Kings
	player:LearnSpell(19740) -- Blessing of Might  1
	player:LearnSpell(19834) -- Blessing of Might  2
	player:LearnSpell(19835) -- Blessing of Might  3
	player:LearnSpell(19836) -- Blessing of Might  4
	player:LearnSpell(10937) -- Blessing of Might  5
	player:LearnSpell(19838) -- Blessing of Might  6
	player:LearnSpell(25291) -- Blessing of Might  7
	player:LearnSpell(27140) -- Blessing of Might  8
	player:LearnSpell(48931) -- Blessing of Might  9
	player:LearnSpell(48932) -- Blessing of Might  10
	player:LearnSpell(19742) -- Blessing of Wisdom  1
	player:LearnSpell(19850) -- Blessing of Wisdom  2
	player:LearnSpell(19852) -- Blessing of Wisdom  3
	player:LearnSpell(19853) -- Blessing of Wisdom  4
	player:LearnSpell(19854) -- Blessing of Wisdom  5
	player:LearnSpell(25290) -- Blessing of Wisdom  6
	player:LearnSpell(48935) -- Blessing of Wisdom  8
	player:LearnSpell(48936) -- Blessing of Wisdom  9
		local race = player:GetRace()
		if race == 10 or race == 8 or race == 6 or race == 5 or race == 2 then
			player:LearnSpell(34767) -- Summon Charger Horde
		elseif race == 1 or race == 3 or race == 11 or race == 4 or race == 7 then
			player:LearnSpell(23214) -- Summon Charger Alliance
		end
	player:LearnSpell(4987) -- Cleanse
	player:LearnSpell(19746) -- Concentration Aura
	player:LearnSpell(26573) -- Consecration  1
	player:LearnSpell(20116) -- Consecration  2
	player:LearnSpell(20922) -- Consecration  3
	player:LearnSpell(20923) -- Consecration  4
	player:LearnSpell(20924) -- Consecration  5
	player:LearnSpell(27173) -- Consecration  6
	player:LearnSpell(48818) -- Consecration  7
	player:LearnSpell(48819) -- Consecration  8
	player:LearnSpell(32223) -- Crusader Aura
	player:LearnSpell(48942) -- Devotion Aura  10
	player:LearnSpell(19752) -- Divine Intervention
	player:LearnSpell(54428) -- Divine Plea
	player:LearnSpell(498) -- Divine Protection
	player:LearnSpell(642) -- Divine Shield
	player:LearnSpell(879) -- Exorcism  1
	player:LearnSpell(5614) -- Exorcism  2
	player:LearnSpell(5615) -- Exorcism  3
	player:LearnSpell(10312) -- Exorcism  4
	player:LearnSpell(10313) -- Exorcism  5
	player:LearnSpell(10314) -- Exorcism  6
	player:LearnSpell(27138) -- Exorcism  7
	player:LearnSpell(48800) -- Exorcism  8
	player:LearnSpell(48801) -- Exorcism  9
	player:LearnSpell(48947) -- Fire Resistance Aura  5
	player:LearnSpell(19750) -- Flash of Light  1
	player:LearnSpell(19939) -- Flash of Light  2
	player:LearnSpell(19940) -- Flash of Light  3
	player:LearnSpell(19941) -- Flash of Light  4
	player:LearnSpell(19942) -- Flash of Light  5
	player:LearnSpell(19943) -- Flash of Light  6
	player:LearnSpell(27137) -- Flash of Light  7
	player:LearnSpell(48784) -- Flash of Light  8
	player:LearnSpell(48785) -- Flash of Light  9
	player:LearnSpell(48945) -- Frost Resistance Aura  5
	player:LearnSpell(25898) -- Greater Blessing of Kings
	player:LearnSpell(25782) -- Greater Blessing of Might  1
	player:LearnSpell(25916) -- Greater Blessing of Might  2
	player:LearnSpell(27141) -- Greater Blessing of Might  3
	player:LearnSpell(48933) -- Greater Blessing of Might  4
	player:LearnSpell(48934) -- Greater Blessing of Might  5
	player:LearnSpell(25899) -- Greater Blessing of Sanctuary
	player:LearnSpell(25894) -- Greater Blessing of Wisdom  1
	player:LearnSpell(25918) -- Greater Blessing of Wisdom  2
	player:LearnSpell(27143) -- Greater Blessing of Wisdom  3
	player:LearnSpell(48937) -- Greater Blessing of Wisdom  4
	player:LearnSpell(48938) -- Greater Blessing of Wisdom  5
	player:LearnSpell(853) -- Hammer of Justice  1
	player:LearnSpell(5588) -- Hammer of Justice  2
	player:LearnSpell(5589) -- Hammer of Justice  3
	player:LearnSpell(10308) -- Hammer of Justice  4
	player:LearnSpell(24275) -- Hammer of Wrath  1
	player:LearnSpell(24274) -- Hammer of Wrath  2
	player:LearnSpell(24239) -- Hammer of Wrath  3
	player:LearnSpell(27180) -- Hammer of Wrath  4
	player:LearnSpell(48805) -- Hammer of Wrath  5
	player:LearnSpell(48806) -- Hammer of Wrath  6
	player:LearnSpell(1044) -- Hand of Freedom
	player:LearnSpell(1022) -- Hand of Protection  1
	player:LearnSpell(5599) -- Hand of Protection  2
	player:LearnSpell(10278) -- Hand of Protection  3
	player:LearnSpell(62124) -- Hand of Reckoning
	player:LearnSpell(6940) -- Hand of Sacrifice
	player:LearnSpell(1038) -- Hand of Salvation
	player:LearnSpell(639) -- Holy Light  2
	player:LearnSpell(647) -- Holy Light  3
	player:LearnSpell(1026) -- Holy Light  4
	player:LearnSpell(1042) -- Holy Light  5
	player:LearnSpell(3472) -- Holy Light  6
	player:LearnSpell(10328) -- Holy Light  7
	player:LearnSpell(10329) -- Holy Light  8
	player:LearnSpell(25292) -- Holy Light  9
	player:LearnSpell(27135) -- Holy Light  10
	player:LearnSpell(27136) -- Holy Light  11
	player:LearnSpell(48781) -- Holy Light  12
	player:LearnSpell(48782) -- Holy Light  13
	player:LearnSpell(2812) -- Holy Wrath  1
	player:LearnSpell(10318) -- Holy Wrath  2
	player:LearnSpell(27139) -- Holy Wrath  3
	player:LearnSpell(48816) -- Holy Wrath  4
	player:LearnSpell(48817) -- Holy Wrath  5
	player:LearnSpell(53407) -- Judgement of Justice
	player:LearnSpell(20271) -- Judgement of Light
	player:LearnSpell(53408) -- Judgement of Wisdom
	player:LearnSpell(633) -- Lay on Hands  1
	player:LearnSpell(2800) -- Lay on Hands  2	
	player:LearnSpell(10310) -- Lay on Hands  3
	player:LearnSpell(27154) -- Lay on Hands  4
	player:LearnSpell(48788) -- Lay on Hands  5
	player:LearnSpell(1152) -- Purify
	player:LearnSpell(7328) -- Redemption  1
	player:LearnSpell(10322) -- Redemption  2
	player:LearnSpell(10324) -- Redemption  3
	player:LearnSpell(20772) -- Redemption  4
	player:LearnSpell(20773) -- Redemption  5
	player:LearnSpell(48949) -- Redemption  6
	player:LearnSpell(48950) -- Redemption  7
	player:LearnSpell(54043) -- Retribution Aura  7
	player:LearnSpell(31789) -- Righteous Defense
	player:LearnSpell(25780) -- Righteous Fury
	player:LearnSpell(53601) -- Sacred Shield  1
		local race = player:GetRace()
		if race == 10 or race == 8 or race == 6 or race == 5 or race == 2 then
			player:LearnSpell(2825) -- Seal of Corruption
		elseif race == 1 or race == 3 or race == 11 or race == 4 or race == 7 then
			player:LearnSpell(32182) -- Seal of Vengeance
		end
	player:LearnSpell(20164) -- Seal of Justice
	player:LearnSpell(20165) -- Seal of Light
	player:LearnSpell(21084) -- Seal of Righteousness
	player:LearnSpell(20166) -- Seal of Wisdom
	player:LearnSpell(48943) -- Shadow Resistance Aura  5
	player:LearnSpell(5502) -- Sense Undead
	player:LearnSpell(53600) -- Shield of Righteousness  1
	player:LearnSpell(61411) -- Shield of Righteousness  2
	player:LearnSpell(10326) -- Turn Evil
		local race = player:GetRace()
		if race == 10 or race == 8 or race == 6 or race == 5 or race == 2 then
			player:LearnSpell(34769) -- Summon Warhorse Horde
		elseif race == 1 or race == 3 or race == 11 or race == 4 or race == 7 then
			player:LearnSpell(13819) -- Summon Warhorse Alliance
		end
	end
		-- Hunter
	if (player:GetClass() == 3) then
	player:LearnSpell(674) -- DualWeild
	player:LearnSpell(3127) -- Parry
	player:LearnSpell(8737) -- Mail
	player:LearnSpell(3044) -- Arcane Shot  1
	player:LearnSpell(14281) -- Arcane Shot  2
	player:LearnSpell(14281) -- Arcane Shot  2
	player:LearnSpell(14282) -- Arcane Shot  3
	player:LearnSpell(14283) -- Arcane Shot  4
	player:LearnSpell(14284) -- Arcane Shot  5
	player:LearnSpell(14285) -- Arcane Shot  6
	player:LearnSpell(14286) -- Arcane Shot  7
	player:LearnSpell(14287) -- Arcane Shot  8
	player:LearnSpell(27019) -- Arcane Shot  9
	player:LearnSpell(49044) -- Arcane Shot  10
	player:LearnSpell(49045) -- Arcane Shot  11
	player:LearnSpell(13161) -- Aspect of the Beast
	player:LearnSpell(5118) -- Aspect of the Cheetah
	player:LearnSpell(61846) -- Aspect of the Dragonhawk  1
	player:LearnSpell(61847) -- Aspect of the Dragonhawk  2
	player:LearnSpell(13165) -- Aspect of the Hawk  1
	player:LearnSpell(14318) -- Aspect of the Hawk  2
	player:LearnSpell(14319) -- Aspect of the Hawk  3
	player:LearnSpell(14320) -- Aspect of the Hawk  4
	player:LearnSpell(14321) -- Aspect of the Hawk  5
	player:LearnSpell(14322) -- Aspect of the Hawk  6
	player:LearnSpell(25296) -- Aspect of the Hawk  7
	player:LearnSpell(27044) -- Aspect of the Hawk  8
	player:LearnSpell(13163) -- Aspect of the Monkey
	player:LearnSpell(13159) -- Aspect of the Pack
	player:LearnSpell(34074) -- Aspect of the Viper
	player:LearnSpell(20043) -- Aspect of the Wild  1
	player:LearnSpell(20190) -- Aspect of the Wild  2
	player:LearnSpell(27045) -- Aspect of the Wild  3
	player:LearnSpell(49071) -- Aspect of the Wild  4
	player:LearnSpell(1462) -- Beast Lore
	player:LearnSpell(883) -- Call Pet
	player:LearnSpell(62757) -- Call Stabled Pet
	player:LearnSpell(5116) -- Concussive Shot
	player:LearnSpell(19263) -- Deterrence
	player:LearnSpell(781) -- Disengage
	player:LearnSpell(2641) -- Dismiss Pet
	player:LearnSpell(20736) -- Distracting Shot  1
	player:LearnSpell(6197) -- Eagle Eye
	player:LearnSpell(13813) -- Explosive Trap  1
	player:LearnSpell(14316) -- Explosive Trap  2
	player:LearnSpell(14317) -- Explosive Trap  3
	player:LearnSpell(27025) -- Explosive Trap  4
	player:LearnSpell(49066) -- Explosive Trap  5
	player:LearnSpell(49067) -- Explosive Trap  6
	player:LearnSpell(1002) -- Eyes of the Beast
	player:LearnSpell(6991) -- Feed Pet
	player:LearnSpell(5384) -- Feign Death
	player:LearnSpell(1543) -- Flare
	player:LearnSpell(60192) -- Freezing Arrow  1
	player:LearnSpell(1499) -- Freezing Trap  1
	player:LearnSpell(14310) -- Freezing Trap  2
	player:LearnSpell(14311) -- Freezing Trap  3
	player:LearnSpell(13809) -- Frost Trap
	player:LearnSpell(1130) -- Hunter's Mark  1
	player:LearnSpell(14323) -- Hunter's Mark  2
	player:LearnSpell(14324) -- Hunter's Mark  3
	player:LearnSpell(14325) -- Hunter's Mark  4
	player:LearnSpell(53338) -- Hunter's Mark  5
	player:LearnSpell(13795) -- Immolation Trap  1
	player:LearnSpell(14302) -- Immolation Trap  2
	player:LearnSpell(14303) -- Immolation Trap  3
	player:LearnSpell(14304) -- Immolation Trap  4
	player:LearnSpell(14305) -- Immolation Trap  5
	player:LearnSpell(27023) -- Immolation Trap  6
	player:LearnSpell(49055) -- Immolation Trap  7
	player:LearnSpell(49056) -- Immolation Trap  8
	player:LearnSpell(34026) -- Kill Command
	player:LearnSpell(53351) -- Kill Shot  1
	player:LearnSpell(61005) -- Kill Shot  2
	player:LearnSpell(61006) -- Kill Shot  3
	player:LearnSpell(53271) -- Master's Call
	player:LearnSpell(136) -- Mend Pet  1
	player:LearnSpell(3111) -- Mend Pet  2
	player:LearnSpell(3661) -- Mend Pet  3
	player:LearnSpell(3662) -- Mend Pet  4
	player:LearnSpell(13542) -- Mend Pet  5
	player:LearnSpell(13543) -- Mend Pet  6
	player:LearnSpell(13544) -- Mend Pet  7
	player:LearnSpell(27046) -- Mend Pet  8
	player:LearnSpell(48989) -- Mend Pet  9
	player:LearnSpell(48990) -- Mend Pet  10
	player:LearnSpell(34477) -- Misdirection
	player:LearnSpell(1495) -- Mongoose Bite  1
	player:LearnSpell(14269) -- Mongoose Bite  2
	player:LearnSpell(14270) -- Mongoose Bite  3
	player:LearnSpell(14271) -- Mongoose Bite  4
	player:LearnSpell(36916) -- Mongoose Bite  5
	player:LearnSpell(53339) -- Mongoose Bite  6
	player:LearnSpell(2643) -- Multi-Shot  1
	player:LearnSpell(14288) -- Multi-Shot  2
	player:LearnSpell(14289) -- Multi Shot  3
	player:LearnSpell(14290) -- Multi-Shot  4
	player:LearnSpell(25204) -- Multi-Shot  5
	player:LearnSpell(27021) -- Multi-Shot  6
	player:LearnSpell(49047) -- Multi-Shot  7
	player:LearnSpell(49048) -- Multi-Shot  8
	player:LearnSpell(3045) -- Rapid Fire
	player:LearnSpell(14260) -- Raptor Strike  2
	player:LearnSpell(14261) -- Raptor Strike  3
	player:LearnSpell(14262) -- Raptor Strike  4
	player:LearnSpell(14263) -- Raptor Strike  5
	player:LearnSpell(14264) -- Raptor Strike  6
	player:LearnSpell(14265) -- Raptor Strike  7
	player:LearnSpell(14266) -- Raptor Strike  8
	player:LearnSpell(27014) -- Raptor Strike  9
	player:LearnSpell(48995) -- Raptor Strike  10
	player:LearnSpell(48996) -- Raptor Strike  11
	player:LearnSpell(982) -- Revive Pet
	player:LearnSpell(1513) -- Scare Beast  1
	player:LearnSpell(14326) -- Scare Beast  2
	player:LearnSpell(14327) -- Scare Beast  3
	player:LearnSpell(3043) -- Scorpid Sting
	player:LearnSpell(1978) -- Serpent Sting  1
	player:LearnSpell(13549) -- Serpent Sting  2
	player:LearnSpell(13550) -- Serpent Sting  3
	player:LearnSpell(13551) -- Serpent Sting  4
	player:LearnSpell(13552) -- Serpent Sting  5
	player:LearnSpell(13553) -- Serpent Sting  6
	player:LearnSpell(13554) -- Serpent Sting  7
	player:LearnSpell(13555) -- Serpent Sting  8
	player:LearnSpell(25295) -- Serpent Sting  9
	player:LearnSpell(27016) -- Serpent Sting  10
	player:LearnSpell(49000) -- Serpent Sting  11
	player:LearnSpell(49001) -- Serpent Sting  12
	player:LearnSpell(34600) -- Snake Trap
	player:LearnSpell(56641) -- Steady Shot  1
	player:LearnSpell(34120) -- Steady Shot  2
	player:LearnSpell(49051) -- Steady Shot  3
	player:LearnSpell(49052) -- Steady Shot  4
	player:LearnSpell(1515) -- Tame Beast
	player:LearnSpell(1494) -- Track Beasts
	player:LearnSpell(19878) -- Track Demons
	player:LearnSpell(19879) -- Track Dragonkin
	player:LearnSpell(19880) -- Track Elementals
	player:LearnSpell(19882) -- Track Giants
	player:LearnSpell(19885) -- Track Hidden
	player:LearnSpell(19883) -- Track Humanoids
	player:LearnSpell(19884) -- Track Undead
	player:LearnSpell(19801) -- Tranquilizing Shot
	player:LearnSpell(3034) -- Viper Sting
	player:LearnSpell(1510) -- Volley  1
	player:LearnSpell(14294) -- Volley  2
	player:LearnSpell(14295) -- Volley  3
	player:LearnSpell(27022) -- Volley  4
	player:LearnSpell(58431) -- Volley  5
	player:LearnSpell(58434) -- Volley  6
	player:LearnSpell(2974) -- Wing Clip
	end
		-- Rogue
	if (player:GetClass() == 4) then
	player:LearnSpell(3127) -- Parry
	player:LearnSpell(1784) -- Stealth
	player:LearnSpell(8676) -- Ambush  1
	player:LearnSpell(8724) -- Ambush  2
	player:LearnSpell(8725) -- Ambush  3
	player:LearnSpell(11267) -- Ambush  4
	player:LearnSpell(11268) -- Ambush  5
	player:LearnSpell(11269) -- Ambush  6
	player:LearnSpell(27441) -- Ambush  7
	player:LearnSpell(48689) -- Ambush  8
	player:LearnSpell(48690) -- Ambush  9
	player:LearnSpell(48691) -- Ambush  10
	player:LearnSpell(53) -- Backstab  1
	player:LearnSpell(2589) -- Backstab  2
	player:LearnSpell(2590) -- Backstab  3
	player:LearnSpell(2591) -- Backstab  4
	player:LearnSpell(8721) -- Backstab  5
	player:LearnSpell(11279) -- Backstab  6
	player:LearnSpell(11280) -- Backstab  7
	player:LearnSpell(11281) -- Backstab  8
	player:LearnSpell(25300) -- Backstab  9
	player:LearnSpell(26863) -- Backstab  10
	player:LearnSpell(48656) -- Backstab  11
	player:LearnSpell(48657) -- Backstab  12
	player:LearnSpell(2094) -- Blind
	player:LearnSpell(1833) -- Cheap Shot
	player:LearnSpell(31224) -- Cloak of Shadows
	player:LearnSpell(26679) -- Deadly Throw  1
	player:LearnSpell(48673) -- Deadly Throw  2
	player:LearnSpell(48674) -- Deadly Throw  3
	player:LearnSpell(2836) -- Detect Traps
	player:LearnSpell(1842) -- Disarm Trap
	player:LearnSpell(51722) -- Dismantle
	player:LearnSpell(1725) -- Distract
	player:LearnSpell(32645) -- Envenom  1
	player:LearnSpell(32684) -- Envenom  2
	player:LearnSpell(57992) -- Envenom  3
	player:LearnSpell(57993) -- Envenom  4
	player:LearnSpell(5277) -- Evasion  1
	player:LearnSpell(26669) -- Evasion  2
	player:LearnSpell(6760) -- Eviscerate  2
	player:LearnSpell(6761) -- Eviscerate  3
	player:LearnSpell(6762) -- Eviscerate  4
	player:LearnSpell(8623) -- Eviscerate  5
	player:LearnSpell(8624) -- Eviscerate  6
	player:LearnSpell(11299) -- Eviscerate  7
	player:LearnSpell(11300) -- Eviscerate  8
	player:LearnSpell(31016) -- Eviscerate  9
	player:LearnSpell(26865) -- Eviscerate  10
	player:LearnSpell(48667) -- Eviscerate  11
	player:LearnSpell(48668) -- Eviscerate  12
	player:LearnSpell(8647) -- Expose Armor
	player:LearnSpell(51723) -- Fan of Knives
	player:LearnSpell(1966) -- Feint  1
	player:LearnSpell(6768) -- Feint  2
	player:LearnSpell(8637) -- Feint  3
	player:LearnSpell(11303) -- Feint  4
	player:LearnSpell(25302) -- Feint  5
	player:LearnSpell(27448) -- Feint  6
	player:LearnSpell(48658) -- Feint  7
	player:LearnSpell(48659) -- Feint  8
	player:LearnSpell(703) -- Garrote  1
	player:LearnSpell(8631) -- Garrote  2
	player:LearnSpell(8632) -- Garrote  3
	player:LearnSpell(8633) -- Garrote  4
	player:LearnSpell(11289) -- Garrote  5
	player:LearnSpell(11290) -- Garrote  6
	player:LearnSpell(26839) -- Garrote  7
	player:LearnSpell(26884) -- Garrote  8
	player:LearnSpell(48675) -- Garrote  9
	player:LearnSpell(48676) -- Garrote  10
	player:LearnSpell(1776) -- Gouge
	player:LearnSpell(1766) -- Kick
	player:LearnSpell(408) -- Kidney Shot  1
	player:LearnSpell(8643) -- Kidney Shot  2
	player:LearnSpell(1804) -- Pick Lock
	player:LearnSpell(921) -- Pick Pocket
	player:LearnSpell(1943) -- Rupture  1
	player:LearnSpell(8639) -- Rupture  2
	player:LearnSpell(8640) -- Rupture  3
	player:LearnSpell(11273) -- Rupture  4
	player:LearnSpell(11274) -- Rupture  5
	player:LearnSpell(11275) -- Rupture  6
	player:LearnSpell(26867) -- Rupture  7
	player:LearnSpell(48671) -- Rupture  8
	player:LearnSpell(48672) -- Rupture  9
	player:LearnSpell(1860) -- Safe Fall
	player:LearnSpell(6770) -- Sap  1
	player:LearnSpell(2070) -- Sap  2
	player:LearnSpell(11297) -- Sap  3
	player:LearnSpell(51724) -- Sap  4
	player:LearnSpell(5938) -- Shiv
	player:LearnSpell(1757) -- Sinister Strike  2
	player:LearnSpell(1758) -- Sinister Strike  3
	player:LearnSpell(1759) -- Sinister Strike  4
	player:LearnSpell(1760) -- Sinister Strike  5
	player:LearnSpell(8621) -- Sinister Strike  6
	player:LearnSpell(11293) -- Sinister Strike  7
	player:LearnSpell(11294) -- Sinister Strike  8
	player:LearnSpell(26861) -- Sinister Strike  9
	player:LearnSpell(26862) -- Sinister Strike  10
	player:LearnSpell(48637) -- Sinister Strike  11
	player:LearnSpell(48638) -- Sinister Strike  12
	player:LearnSpell(5171) -- Slice and Dice  1
	player:LearnSpell(6774) -- Slice and Dice  2
	player:LearnSpell(2983) -- Sprint  1
	player:LearnSpell(8696) -- Sprint  2
	player:LearnSpell(11305) -- Sprint  3
	player:LearnSpell(57934) -- Tricks of the Trade
	player:LearnSpell(1856) -- Vanish  1
	player:LearnSpell(1857) -- Vanish  2
	player:LearnSpell(26889) -- Vanish  3
	end
		--Priest
	if (player:GetClass() == 5) then
	player:LearnSpell(552) -- Abolish Disease
	player:LearnSpell(32546) -- Binding Heal  1
	player:LearnSpell(48119) -- Binding Heal  2
	player:LearnSpell(48120) -- Binding Heal  2
	player:LearnSpell(528) -- Cure Disease
	player:LearnSpell(2944) -- Devouring Plague  1
	player:LearnSpell(19276) -- Devouring Plague  2
	player:LearnSpell(19277) -- Devouring Plague  3
	player:LearnSpell(19278) -- Devouring Plague  4
	player:LearnSpell(19279) -- Devouring Plague  5
	player:LearnSpell(19280) -- Devouring Plague  6
	player:LearnSpell(25467) -- Devouring Plague  7
	player:LearnSpell(48299) -- Devouring Plague  8
	player:LearnSpell(48300) -- Devouring Plague  9
	player:LearnSpell(527) -- Dispel Magic  1
	player:LearnSpell(988) -- Dispel Magic  2
	player:LearnSpell(64843) -- Divine Hymn
	player:LearnSpell(14752) -- Divine Spirit  1
	player:LearnSpell(14818) -- Divine Spirit  2
	player:LearnSpell(14819) -- Divine Spirit  3
	player:LearnSpell(27841) -- Divine Spirit  4
	player:LearnSpell(25312) -- Divine Spirit  5
	player:LearnSpell(48073) -- Divine Spirit  6
	player:LearnSpell(586) -- Fade
	player:LearnSpell(6346) -- Fear Ward
	player:LearnSpell(2061) -- Flash Heal  1
	player:LearnSpell(9472) -- Flash Heal  2
	player:LearnSpell(9473) -- Flash Heal  3
	player:LearnSpell(9474) -- Flash Heal  4
	player:LearnSpell(10915) -- Flash Heal  5
	player:LearnSpell(10916) -- Flash Heal  6
	player:LearnSpell(10917) -- Flash Heal  7
	player:LearnSpell(25233) -- Flash Heal  8
	player:LearnSpell(25235) -- Flash Heal  9
	player:LearnSpell(48070) -- Flash Heal  10
	player:LearnSpell(48071) -- Flash Heal  11
	player:LearnSpell(2060) -- Greater Heal  1
	player:LearnSpell(10963) -- Greater Heal  2
	player:LearnSpell(10964) -- Greater Heal  3
	player:LearnSpell(10965) -- Greater Heal  4
	player:LearnSpell(25314) -- Greater Heal  5
	player:LearnSpell(25210) -- Greater Heal  6
	player:LearnSpell(25213) -- Greater Heal  7
	player:LearnSpell(48062) -- Greater Heal  8
	player:LearnSpell(48063) -- Greater Heal  9
	player:LearnSpell(2054) -- Heal  1
	player:LearnSpell(2055) -- Heal  2
	player:LearnSpell(6063) -- Heal  3
	player:LearnSpell(6064) -- Heal  4
	player:LearnSpell(14914) -- Holy Fire  1
	player:LearnSpell(15262) -- Holy Fire  2
	player:LearnSpell(15263) -- Holy Fire  3
	player:LearnSpell(15264) -- Holy Fire  4
	player:LearnSpell(15265) -- Holy Fire  5
	player:LearnSpell(15266) -- Holy Fire  6
	player:LearnSpell(15267) -- Holy Fire  7
	player:LearnSpell(15261) -- Holy Fire  8
	player:LearnSpell(25384) -- Holy Fire  9
	player:LearnSpell(48134) -- Holy Fire  10
	player:LearnSpell(48135) -- Holy Fire  11
	player:LearnSpell(15237) -- Holy Nova  1
	player:LearnSpell(15430) -- Holy Nova  2
	player:LearnSpell(15431) -- Holy Nova  3
	player:LearnSpell(27799) -- Holy Nova  4
	player:LearnSpell(27800) -- Holy Nova  5
	player:LearnSpell(27801) -- Holy Nova  6
	player:LearnSpell(25331) -- Holy Nova  7
	player:LearnSpell(48077) -- Holy Nova  8
	player:LearnSpell(48078) -- Holy Nova  9
	player:LearnSpell(64901) -- Hymn of Hope
	player:LearnSpell(588) -- Inner Fire  1
	player:LearnSpell(7128) -- Inner Fire  2
	player:LearnSpell(602) -- Inner Fire  3
	player:LearnSpell(1006) -- Inner Fire  4
	player:LearnSpell(10951) -- Inner Fire  5
	player:LearnSpell(10952) -- Inner Fire  6
	player:LearnSpell(25431) -- Inner Fire  7
	player:LearnSpell(48040) -- Inner Fire  8
	player:LearnSpell(48168) -- Inner Fire  9
	player:LearnSpell(2052) -- Lesser Heal  2
	player:LearnSpell(2053) -- Lesser Heal  3
	player:LearnSpell(1706) -- Levitate
	player:LearnSpell(8129) -- Mana Burn
	player:LearnSpell(32375) -- Mass Dispel
	player:LearnSpell(8092) -- Mind Blast  1
	player:LearnSpell(8102) -- Mind Blast  2
	player:LearnSpell(8103) -- Mind Blast  3
	player:LearnSpell(8104) -- Mind Blast  4
	player:LearnSpell(8105) -- Mind Blast  5
	player:LearnSpell(8106) -- Mind Blast  6
	player:LearnSpell(10945) -- Mind Blast  7
	player:LearnSpell(10946) -- Mind Blast  8
	player:LearnSpell(10947) -- Mind Blast  9
	player:LearnSpell(25372) -- Mind Blast  10
	player:LearnSpell(25375) -- Mind Blast  11
	player:LearnSpell(48126) -- Mind Blast  12
	player:LearnSpell(48127) -- Mind Blast  13
	player:LearnSpell(605) -- Mind Control
	player:LearnSpell(48045) -- Mind Sear  1
	player:LearnSpell(53023) -- Mind Sear  2
	player:LearnSpell(453) -- Mind Soothe
	player:LearnSpell(2096) -- Mind Vision  1
	player:LearnSpell(10909) -- Mind Vision  2
	player:LearnSpell(1243) -- Power Word: Fortitude  1
	player:LearnSpell(1244) -- Power Word: Fortitude  2
	player:LearnSpell(1245) -- Power Word: Fortitude  3
	player:LearnSpell(2791) -- Power Word: Fortitude  4
	player:LearnSpell(10937) -- Power Word: Fortitude  5
	player:LearnSpell(10938) -- Power Word: Fortitude  6
	player:LearnSpell(25389) -- Power Word: Fortitude  7
	player:LearnSpell(48161) -- Power Word: Fortitude  8
	player:LearnSpell(17) -- Power Word: Shield  1
	player:LearnSpell(592) -- Power Word: Shield  2
	player:LearnSpell(600) -- Power Word: Shield  3
	player:LearnSpell(3747) -- Power Word: Shield  4
	player:LearnSpell(6065) -- Power Word: Shield  5
	player:LearnSpell(6066) -- Power Word: Shield  6
	player:LearnSpell(10898) -- Power Word: Shield  7
	player:LearnSpell(10899) -- Power Word: Shield  8
	player:LearnSpell(10900) -- Power Word: Shield  9
	player:LearnSpell(10901) -- Power Word: Shield  10
	player:LearnSpell(25217) -- Power Word: Shield  11
	player:LearnSpell(25218) -- Power Word: Shield  12
	player:LearnSpell(48065) -- Power Word: Shield  13
	player:LearnSpell(48066) -- Power Word: Shield  14
	player:LearnSpell(21562) -- Prayer of Fortitude  1
	player:LearnSpell(21564) -- Prayer of Fortitude  2
	player:LearnSpell(25392) -- Prayer of Fortitude  3
	player:LearnSpell(48162) -- Prayer of Fortitude  4
	player:LearnSpell(596) -- Prayer of Healing  1
	player:LearnSpell(996) -- Prayer of Healing  2
	player:LearnSpell(10960) -- Prayer of Healing  3
	player:LearnSpell(10961) -- Prayer of Healing  4
	player:LearnSpell(25316) -- Prayer of Healing  5
	player:LearnSpell(25308) -- Prayer of Healing  6
	player:LearnSpell(48072) -- Prayer of Healing  7
	player:LearnSpell(33076) -- Prayer of Mending  1
	player:LearnSpell(48112) -- Prayer of Mending  2
	player:LearnSpell(48113) -- Prayer of Mending  3
	player:LearnSpell(27683) -- Prayer of Shadow Protection  1
	player:LearnSpell(39374) -- Prayer of Shadow Protection  2
	player:LearnSpell(48170) -- Prayer of Shadow Protection  3
	player:LearnSpell(27681) -- Prayer of Spirit  1
	player:LearnSpell(32999) -- Prayer of Spirit  2
	player:LearnSpell(48074) -- Prayer of Spirit  3
	player:LearnSpell(8122) -- Psychic Scream  1
	player:LearnSpell(8124) -- Psychic Scream  2
	player:LearnSpell(10888) -- Psychic Scream  3
	player:LearnSpell(10890) -- Psychic Scream  4
	player:LearnSpell(139) -- Renew  1
	player:LearnSpell(6074) -- Renew  2
	player:LearnSpell(6075) -- Renew  3
	player:LearnSpell(6076) -- Renew  4
	player:LearnSpell(6077) -- Renew  5
	player:LearnSpell(6078) -- Renew  6
	player:LearnSpell(10927) -- Renew  7
	player:LearnSpell(10928) -- Renew  8
	player:LearnSpell(10929) -- Renew  9
	player:LearnSpell(25315) -- Renew  10
	player:LearnSpell(25221) -- Renew  11
	player:LearnSpell(25222) -- Renew  12
	player:LearnSpell(48067) -- Renew  13
	player:LearnSpell(48068) -- Renew  14
	player:LearnSpell(2006) -- Resurrection  1
	player:LearnSpell(2010) -- Resurrection  2
	player:LearnSpell(10880) -- Resurrection  3
	player:LearnSpell(10881) -- Resurrection  4
	player:LearnSpell(20770) -- Resurrection  5
	player:LearnSpell(25435) -- Resurrection  6
	player:LearnSpell(48171) -- Resurrection  7
	player:LearnSpell(9484) -- Shackle Undead  1
	player:LearnSpell(9485) -- Shackle Undead  2
	player:LearnSpell(10955) -- Shackle Undead  3
	player:LearnSpell(976) -- Shadow Protection  1
	player:LearnSpell(10957) -- Shadow Protection  2
	player:LearnSpell(10958) -- Shadow Protection  3
	player:LearnSpell(25433) -- Shadow Protection  4
	player:LearnSpell(48169) -- Shadow Protection  5
	player:LearnSpell(32379) -- Shadow Word: Death  1
	player:LearnSpell(32996) -- Shadow Word: Death  2
	player:LearnSpell(48157) -- Shadow Word: Death  3
	player:LearnSpell(48158) -- Shadow Word: Death  4
	player:LearnSpell(589) -- Shadow Word: Pain  1
	player:LearnSpell(594) -- Shadow Word: Pain  2
	player:LearnSpell(970) -- Shadow Word: Pain  3
	player:LearnSpell(992) -- Shadow Word: Pain  4
	player:LearnSpell(2767) -- Shadow Word: Pain  5
	player:LearnSpell(10892) -- Shadow Word: Pain  6
	player:LearnSpell(10893) -- Shadow Word: Pain  7
	player:LearnSpell(10894) -- Shadow Word: Pain  8
	player:LearnSpell(25367) -- Shadow Word: Pain  9
	player:LearnSpell(25368) -- Shadow Word: Pain  10
	player:LearnSpell(48124) -- Shadow Word: Pain  11
	player:LearnSpell(48125) -- Shadow Word: Pain  12
	player:LearnSpell(34433) -- Shadowfiend
	player:LearnSpell(591) -- Smite  2
	player:LearnSpell(598) -- Smite  3
	player:LearnSpell(984) -- Smite  4
	player:LearnSpell(1004) -- Smite  5
	player:LearnSpell(6060) -- Smite  6
	player:LearnSpell(10933) -- Smite  7
	player:LearnSpell(10934) -- Smite  8
	player:LearnSpell(25363) -- Smite  9
	player:LearnSpell(25364) -- Smite  10
	player:LearnSpell(48122) -- Smite  11
	player:LearnSpell(48123) -- Smite  12
	end
		-- DK
	if (player:GetClass() == 6) then
	player:LearnSpell(54447)
	player:LearnSpell(53342)
	player:LearnSpell(53331)
	player:LearnSpell(53323)
	player:LearnSpell(54446)
	player:LearnSpell(53344)
	player:LearnSpell(62158)
	player:LearnSpell(70164)
	player:LearnSpell(49894)
	player:LearnSpell(49895)
	player:LearnSpell(49921)
	player:LearnSpell(48778) -- Acherus Deathcharger
	player:LearnSpell(48707) -- Anti-Magic Shell
	player:LearnSpell(42650) -- Army of the Dead
	player:LearnSpell(48721) -- Blood Boil  1
	player:LearnSpell(49939) -- Blood Boil  2
	player:LearnSpell(49940) -- Blood Boil  3
	player:LearnSpell(49941) -- Blood Boil  4
	player:LearnSpell(49926) -- Blood Strike  2
	player:LearnSpell(49927) -- Blood Strike  3
	player:LearnSpell(49928) -- Blood Strike  4
	player:LearnSpell(49929) -- Blood Strike  5
	player:LearnSpell(49930) -- Blood Strike  6
	player:LearnSpell(45529) -- Blood Tap
	player:LearnSpell(45524) -- Chains of Ice
	player:LearnSpell(56222) -- Dark Command
	player:LearnSpell(43265) -- Death and Decay  1
	
	player:LearnSpell(49937) -- Death and Decay  3
	player:LearnSpell(49938) -- Death and Decay  4
	player:LearnSpell(49892) -- Death Coil  2
	player:LearnSpell(49893) -- Death Coil  3
	player:LearnSpell(62903) -- Death Coil  4
	player:LearnSpell(62904) -- Death Coil  5
	player:LearnSpell(50977) -- Death Gate
	player:LearnSpell(48743) -- Death Pact
	player:LearnSpell(49998) -- Death Strike  1
	player:LearnSpell(49999) -- Death Strike  2
	player:LearnSpell(45463) -- Death Strike  3
	player:LearnSpell(49923) -- Death Strike  4
	player:LearnSpell(49924) -- Death Strike  5
	player:LearnSpell(43265) -- Death and Decay  1
	player:LearnSpell(49936) -- Death and Decay  2
	player:LearnSpell(49937) -- Death and Decay  3
	player:LearnSpell(49938) -- Death and Decay  4
	player:LearnSpell(47568) -- Empower Rune Weapon
	player:LearnSpell(48263) -- Frost Presence
	player:LearnSpell(57330) -- Horn of Winter  1
	player:LearnSpell(57623) -- Horn of Winter  2
	player:LearnSpell(48792) -- Icebound Fortitude
	player:LearnSpell(49896) -- Icy Touch  2
	player:LearnSpell(49903) -- Icy Touch  3
	player:LearnSpell(49904) -- Icy Touch  4
	player:LearnSpell(49909) -- Icy Touch  5
	player:LearnSpell(47528) -- Mind Freeze
	player:LearnSpell(49020) -- Obliterate  1
	player:LearnSpell(51423) -- Obliterate  2
	player:LearnSpell(51424) -- Obliterate  3
	player:LearnSpell(51425) -- Obliterate  4
	player:LearnSpell(3714) -- Path of Frost
	player:LearnSpell(50842) -- Pestilence
	player:LearnSpell(49917) -- Plague Strike  2
	player:LearnSpell(49918) -- Plague Strike  3
	player:LearnSpell(49919) -- Plague Strike  4
	player:LearnSpell(49920) -- Plague Strike  5
	player:LearnSpell(49921) -- Plague Strike  6
	player:LearnSpell(61999) -- Raise Ally
	player:LearnSpell(46584) -- Raise Dead
	player:LearnSpell(56815) -- Rune Strike
	player:LearnSpell(53428) -- Runeforging
	player:LearnSpell(47476) -- Strangulate
	player:LearnSpell(48265) -- Unholy Presence
	end
		--Shaman
	if (player:GetClass() == 7) then
	player:LearnSpell(3738)
	player:LearnSpell(8737) -- mail
	player:LearnSpell(2008) -- Ancestral Spirit  1
	player:LearnSpell(20609) -- Ancestral Spirit  2
	player:LearnSpell(20610) -- Ancestral Spirit  3
	player:LearnSpell(20776) -- Ancestral Spirit  4
	player:LearnSpell(20777) -- Ancestral Spirit  5
	player:LearnSpell(25590) -- Ancestral Spirit  6
	player:LearnSpell(49277) -- Ancestral Spirit  7
	player:LearnSpell(556) -- Astral Recall
		local race = player:GetRace()
		if race == 10 or race == 8 or race == 6 or race == 5 or race == 2 then
			player:LearnSpell(2825) -- Bloodlust
		elseif race == 1 or race == 3 or race == 11 or race == 4 or race == 7 then
			player:LearnSpell(32182) -- Heroism
		end
	player:LearnSpell(66843) -- Call of the Ancestors
	player:LearnSpell(66842) -- Call of the Elements
	player:LearnSpell(66844) -- Call of the Spirits
	player:LearnSpell(1064) -- Chain Heal  1
	player:LearnSpell(10622) -- Chain Heal  2
	player:LearnSpell(10623) -- Chain Heal  3
	player:LearnSpell(25422) -- Chain Heal  4
	player:LearnSpell(25423) -- Chain Heal  5
	player:LearnSpell(55458) -- Chain Heal  6
	player:LearnSpell(55459) -- Chain Heal  7
	player:LearnSpell(421) -- Chain Lightning  1
	player:LearnSpell(930) -- Chain Lightning  2
	player:LearnSpell(2860) -- Chain Lightning  3
	player:LearnSpell(10605) -- Chain Lightning  4
	player:LearnSpell(25439) -- Chain Lightning  5
	player:LearnSpell(25442) -- Chain Lightning  6
	player:LearnSpell(49270) -- Chain Lightning  7
	player:LearnSpell(49271) -- Chain Lightning  8
	player:LearnSpell(8170) -- Cleansing Totem
	player:LearnSpell(526) -- Cure Toxins
	player:LearnSpell(2062) -- Earth Elemental Totem
	player:LearnSpell(8042) -- Earth Shock  1
	player:LearnSpell(8044) -- Earth Shock  2
	player:LearnSpell(8045) -- Earth Shock  3
	player:LearnSpell(8046) -- Earth Shock  4
	player:LearnSpell(10412) -- Earth Shock  5
	player:LearnSpell(10413) -- Earth Shock  6
	player:LearnSpell(10414) -- Earth Shock  7
	player:LearnSpell(25454) -- Earth Shock  8
	player:LearnSpell(49230) -- Earth Shock  9
	player:LearnSpell(49231) -- Earth Shock  10
	player:LearnSpell(2484) -- Earthbind Totem
	player:LearnSpell(51730) -- Earthliving Weapon  1
	player:LearnSpell(51988) -- Earthliving Weapon  2
	player:LearnSpell(51991) -- Earthliving Weapon  3
	player:LearnSpell(51992) -- Earthliving Weapon  4
	player:LearnSpell(51993) -- Earthliving Weapon  5
	player:LearnSpell(51994) -- Earthliving Weapon  6
	player:LearnSpell(6196) -- Far Sight
	player:LearnSpell(2894) -- Fire Elemental Totem
	player:LearnSpell(1535) -- Fire Nova Totem  1
	player:LearnSpell(8498) -- Fire Nova Totem  2
	player:LearnSpell(8499) -- Fire Nova Totem  3
	player:LearnSpell(11314) -- Fire Nova Totem  4
	player:LearnSpell(11315) -- Fire Nova Totem  5
	player:LearnSpell(25546) -- Fire Nova Totem  6
	player:LearnSpell(25547) -- Fire Nova Totem  7
	player:LearnSpell(61649) -- Fire Nova Totem  8
	player:LearnSpell(61657) -- Fire Nova Totem  9
	player:LearnSpell(8184) -- Fire Resistance Totem  1
	player:LearnSpell(10537) -- Fire Resistance Totem  2
	player:LearnSpell(10538) -- Fire Resistance Totem  3
	player:LearnSpell(25563) -- Fire Resistance Totem  4
	player:LearnSpell(58737) -- Fire Resistance Totem  5
	player:LearnSpell(58739) -- Fire Resistance Totem  6
	player:LearnSpell(8050) -- Flame Shock  1
	player:LearnSpell(8052) -- Flame Shock  2
	player:LearnSpell(8053) -- Flame Shock  3
	player:LearnSpell(10447) -- Flame Shock  4
	player:LearnSpell(10448) -- Flame Shock  5
	player:LearnSpell(29228) -- Flame Shock  6
	player:LearnSpell(25457) -- Flame Shock  7
	player:LearnSpell(49232) -- Flame Shock  8
	player:LearnSpell(49233) -- Flame Shock  9
	player:LearnSpell(8227) -- Flametongue Totem  1
	player:LearnSpell(8249) -- Flametongue Totem  2
	player:LearnSpell(10526) -- Flametongue Totem  3
	player:LearnSpell(16387) -- Flametongue Totem  4
	player:LearnSpell(25557) -- Flametongue Totem  5
	player:LearnSpell(58649) -- Flametongue Totem  6
	player:LearnSpell(58652) -- Flametongue Totem  7
	player:LearnSpell(58656) -- Flametongue Totem  8
	player:LearnSpell(8024) -- Flametongue Weapon  1
	player:LearnSpell(8027) -- Flametongue Weapon  2
	player:LearnSpell(8030) -- Flametongue Weapon  3
	player:LearnSpell(16339) -- Flametongue Weapon  4
	player:LearnSpell(16341) -- Flametongue Weapon  5
	player:LearnSpell(16342) -- Flametongue Weapon  6
	player:LearnSpell(25489) -- Flametongue Weapon  7
	player:LearnSpell(58785) -- Flametongue Weapon  8
	player:LearnSpell(58789) -- Flametongue Weapon  9
	player:LearnSpell(58790) -- Flametongue Weapon  10
	player:LearnSpell(8181) -- Frost Resistance Totem  1
	player:LearnSpell(10478) -- Frost Resistance Totem  2
	player:LearnSpell(10479) -- Frost Resistance Totem  3
	player:LearnSpell(25560) -- Frost Resistance Totem  4
	player:LearnSpell(58741) -- Frost Resistance Totem  5
	player:LearnSpell(58745) -- Frost Resistance Totem  6
	player:LearnSpell(8056) -- Frost Shock  1
	player:LearnSpell(8058) -- Frost Shock  2
	player:LearnSpell(10472) -- Frost Shock  3
	player:LearnSpell(10473) -- Frost Shock  4
	player:LearnSpell(25464) -- Frost Shock  5
	player:LearnSpell(49235) -- Frost Shock  6
	player:LearnSpell(49236) -- Frost Shock  7
	player:LearnSpell(8033) -- Frostbrand Weapon  1
	player:LearnSpell(8038) -- Frostbrand Weapon  2
	player:LearnSpell(10456) -- Frostbrand Weapon  3
	player:LearnSpell(16355) -- Frostbrand Weapon  4
	player:LearnSpell(16356) -- Frostbrand Weapon  5
	player:LearnSpell(25500) -- Frostbrand Weapon  6
	player:LearnSpell(58794) -- Frostbrand Weapon  7
	player:LearnSpell(58795) -- Frostbrand Weapon  8
	player:LearnSpell(58796) -- Frostbrand Weapon  9
	player:LearnSpell(2645) -- Ghost Wolf
	player:LearnSpell(8177) -- Grounding Totem
	player:LearnSpell(5394) -- Healing Stream Totem  1
	player:LearnSpell(6375) -- Healing Stream Totem  2
	player:LearnSpell(6377) -- Healing Stream Totem  3
	player:LearnSpell(10462) -- Healing Stream Totem  4
	player:LearnSpell(10463) -- Healing Stream Totem  5
	player:LearnSpell(25567) -- Healing Stream Totem  6
	player:LearnSpell(58755) -- Healing Stream Totem  7
	player:LearnSpell(58756) -- Healing Stream Totem  8
	player:LearnSpell(58757) -- Healing Stream Totem  9
	player:LearnSpell(332) -- Healing Wave  2
	player:LearnSpell(547) -- Healing Wave  3
	player:LearnSpell(913) -- Healing Wave  4
	player:LearnSpell(939) -- Healing Wave  5
	player:LearnSpell(959) -- Healing Wave  6
	player:LearnSpell(8005) -- Healing Wave  7
	player:LearnSpell(10395) -- Healing Wave  8
	player:LearnSpell(10396) -- Healing Wave  9
	player:LearnSpell(25357) -- Healing Wave  10
	player:LearnSpell(25391) -- Healing Wave  11
	player:LearnSpell(25396) -- Healing Wave  12
	player:LearnSpell(49272) -- Healing Wave  13
	player:LearnSpell(49273) -- Healing Wave  14
	player:LearnSpell(51514) -- Hex
	player:LearnSpell(51505) -- Lava Burst  1
	player:LearnSpell(60043) -- Lava Burst  2
	player:LearnSpell(8004) -- Lesser Healing Wave  1
	player:LearnSpell(8008) -- Lesser Healing Wave  2
	player:LearnSpell(8010) -- Lesser Healing Wave  3
	player:LearnSpell(10466) -- Lesser Healing Wave  4
	player:LearnSpell(10467) -- Lesser Healing Wave  5
	player:LearnSpell(10468) -- Lesser Healing Wave  6
	player:LearnSpell(25420) -- Lesser Healing Wave  7
	player:LearnSpell(49275) -- Lesser Healing Wave  8
	player:LearnSpell(49276) -- Lesser Healing Wave  9
	player:LearnSpell(529) -- Lightning Bolt  2
	player:LearnSpell(548) -- Lightning Bolt  3
	player:LearnSpell(915) -- Lightning Bolt  4
	player:LearnSpell(943) -- Lightning Bolt  5
	player:LearnSpell(6041) -- Lightning Bolt  6
	player:LearnSpell(10391) -- Lightning Bolt  7
	player:LearnSpell(10392) -- Lightning Bolt  8
	player:LearnSpell(15207) -- Lightning Bolt  9
	player:LearnSpell(15208) -- Lightning Bolt  10
	player:LearnSpell(25448) -- Lightning Bolt  11
	player:LearnSpell(25449) -- Lightning Bolt  12
	player:LearnSpell(49237) -- Lightning Bolt  13
	player:LearnSpell(49238) -- Lightning Bolt  14
	player:LearnSpell(324) -- Lightning Shield  1
	player:LearnSpell(325) -- Lightning Shield  2
	player:LearnSpell(905) -- Lightning Shield  3
	player:LearnSpell(945) -- Lightning Shield  4
	player:LearnSpell(8134) -- Lightning Shield  5
	player:LearnSpell(10431) -- Lightning Shield  6
	player:LearnSpell(10432) -- Lightning Shield  7
	player:LearnSpell(25469) -- Lightning Shield  8
	player:LearnSpell(25472) -- Lightning Shield  9
	player:LearnSpell(49280) -- Lightning Shield  10
	player:LearnSpell(49281) -- Lightning Shield  11
	player:LearnSpell(8190) -- Magma Totem  1
	player:LearnSpell(10585) -- Magma Totem  2
	player:LearnSpell(10586) -- Magma Totem  3
	player:LearnSpell(10587) -- Magma Totem  4
	player:LearnSpell(25552) -- Magma Totem  5
	player:LearnSpell(58731) -- Magma Totem  6
	player:LearnSpell(58734) -- Magma Totem  7
	player:LearnSpell(5675) -- Mana Spring Totem  1
	player:LearnSpell(10495) -- Mana Spring Totem  2
	player:LearnSpell(10496) -- Mana Spring Totem  3
	player:LearnSpell(10497) -- Mana Spring Totem  4
	player:LearnSpell(25570) -- Mana Spring Totem  5
	player:LearnSpell(58771) -- Mana Spring Totem  6
	player:LearnSpell(58773) -- Mana Spring Totem  7
	player:LearnSpell(58774) -- Mana Spring Totem  8
	player:LearnSpell(10595) -- Nature Resistance Totem  1
	player:LearnSpell(10600) -- Nature Resistance Totem  2
	player:LearnSpell(10601) -- Nature Resistance Totem  3
	player:LearnSpell(25574) -- Nature Resistance Totem  4
	player:LearnSpell(58746) -- Nature Resistance Totem  5
	player:LearnSpell(58749) -- Nature Resistance Totem  6
	player:LearnSpell(370) -- Purge  1
	player:LearnSpell(8012) -- Purge  2
	player:LearnSpell(20608) -- Reincarnation
	player:LearnSpell(8017) -- Rockbiter Weapon  1
	player:LearnSpell(8018) -- Rockbiter Weapon  2
	player:LearnSpell(8019) -- Rockbiter Weapon  3
	player:LearnSpell(10399) -- Rockbiter Weapon  4
	player:LearnSpell(3599) -- Searing Totem  1
	player:LearnSpell(6363) -- Searing Totem  2
	player:LearnSpell(6364) -- Searing Totem  3
	player:LearnSpell(6365) -- Searing Totem  4
	player:LearnSpell(10437) -- Searing Totem  5
	player:LearnSpell(10438) -- Searing Totem  6
	player:LearnSpell(25533) -- Searing Totem  7
	player:LearnSpell(58699) -- Searing Totem  8
	player:LearnSpell(58703) -- Searing Totem  9
	player:LearnSpell(58704) -- Searing Totem  10
	player:LearnSpell(6495) -- Sentry Totem
	player:LearnSpell(5730) -- Stoneclaw Totem  1
	player:LearnSpell(6390) -- Stoneclaw Totem  2
	player:LearnSpell(6391) -- Stoneclaw Totem  3
	player:LearnSpell(6392) -- Stoneclaw Totem  4
	player:LearnSpell(10427) -- Stoneclaw Totem  5
	player:LearnSpell(10428) -- Stoneclaw Totem  6
	player:LearnSpell(25525) -- Stoneclaw Totem  7
	player:LearnSpell(58580) -- Stoneclaw Totem  8
	player:LearnSpell(58581) -- Stoneclaw Totem  9
	player:LearnSpell(58582) -- Stoneclaw Totem  10
	player:LearnSpell(8071) -- Stoneskin Totem  1
	player:LearnSpell(8154) -- Stoneskin Totem  2
	player:LearnSpell(8155) -- Stoneskin Totem  3
	player:LearnSpell(10406) -- Stoneskin Totem  4
	player:LearnSpell(10407) -- Stoneskin Totem  5
	player:LearnSpell(10408) -- Stoneskin Totem  6
	player:LearnSpell(25508) -- Stoneskin Totem  7
	player:LearnSpell(25509) -- Stoneskin Totem  8
	player:LearnSpell(58751) -- Stoneskin Totem  9
	player:LearnSpell(58753) -- Stoneskin Totem  10
	player:LearnSpell(8075) -- Strength of Earth Totem  1
	player:LearnSpell(8160) -- Strength of Earth Totem  2
	player:LearnSpell(8161) -- Strength of Earth Totem  3
	player:LearnSpell(10442) -- Strength of Earth Totem  4
	player:LearnSpell(25361) -- Strength of Earth Totem  5
	player:LearnSpell(25528) -- Strength of Earth Totem  6
	player:LearnSpell(57622) -- Strength of Earth Totem  7
	player:LearnSpell(58643) -- Strength of Earth Totem  8
	player:LearnSpell(36936) -- Totemic Recall
	player:LearnSpell(8143) -- Tremor Totem
	player:LearnSpell(131) -- Water Breathing
	player:LearnSpell(52127) -- Water Shield  1
	player:LearnSpell(52129) -- Water Shield  2
	player:LearnSpell(52131) -- Water Shield  3
	player:LearnSpell(52134) -- Water Shield  4
	player:LearnSpell(52136) -- Water Shield  5
	player:LearnSpell(52138) -- Water Shield  6
	player:LearnSpell(24398) -- Water Shield  7
	player:LearnSpell(33736) -- Water Shield  8
	player:LearnSpell(57960) -- Water Shield  9
	player:LearnSpell(546) -- Water Walking
	player:LearnSpell(57994) -- Wind Shear
	player:LearnSpell(8512) -- Windfury Totem
	player:LearnSpell(8232) -- Windfury Weapon  1
	player:LearnSpell(8235) -- Windfury Weapon  2
	player:LearnSpell(10486) -- Windfury Weapon  3
	player:LearnSpell(16362) -- Windfury Weapon  4
	player:LearnSpell(25505) -- Windfury Weapon  5
	player:LearnSpell(58801) -- Windfury Weapon  6
	player:LearnSpell(58803) -- Windfury Weapon  7
	player:LearnSpell(58804) -- Windfury Weapon  8
	end
		-- Mage
	if (player:GetClass() == 8) then
	player:LearnSpell(1008) -- Amplify Magic  1
	player:LearnSpell(8455) -- Amplify Magic  2
	player:LearnSpell(10169) -- Amplify Magic  3
	player:LearnSpell(10170) -- Amplify Magic  4
	player:LearnSpell(27130) -- Amplify Magic  5
	player:LearnSpell(33946) -- Amplify Magic  6
	player:LearnSpell(43017) -- Amplify Magic  7
	player:LearnSpell(30451) -- Arcane Blast  1
	player:LearnSpell(42894) -- Arcane Blast  2
	player:LearnSpell(42896) -- Arcane Blast  3
	player:LearnSpell(42897) -- Arcane Blast  4
	player:LearnSpell(23028) -- Arcane Brilliance  1
	player:LearnSpell(27127) -- Arcane Brilliance  2
	player:LearnSpell(43002) -- Arcane Brilliance  3
	player:LearnSpell(1449) -- Arcane Explosion  1
	player:LearnSpell(8437) -- Arcane Explosion  2
	player:LearnSpell(8438) -- Arcane Explosion  3
	player:LearnSpell(8439) -- Arcane Explosion  4
	player:LearnSpell(10201) -- Arcane Explosion  5
	player:LearnSpell(10202) -- Arcane Explosion  6
	player:LearnSpell(27080) -- Arcane Explosion  7
	player:LearnSpell(27082) -- Arcane Explosion  8
	player:LearnSpell(42920) -- Arcane Explosion  9
	player:LearnSpell(42921) -- Arcane Explosion  10
	player:LearnSpell(1459) -- Arcane Intellect  1
	player:LearnSpell(1460) -- Arcane Intellect  2
	player:LearnSpell(1461) -- Arcane Intellect  3
	player:LearnSpell(10156) -- Arcane Intellect  4
	player:LearnSpell(10157) -- Arcane Intellect  5
	player:LearnSpell(27126) -- Arcane Intellect  6
	player:LearnSpell(42995) -- Arcane Intellect  7
	player:LearnSpell(5143) -- Arcane Missles  1
	player:LearnSpell(5144) -- Arcane Missles  2
	player:LearnSpell(5145) -- Arcane Missles  3
	player:LearnSpell(8416) -- Arcane Missles  4
	player:LearnSpell(8417) -- Arcane Missles  5
	player:LearnSpell(10211) -- Arcane Missles  6
	player:LearnSpell(10212) -- Arcane Missles  7
	player:LearnSpell(25345) -- Arcane Missles  8
	player:LearnSpell(27075) -- Arcane Missles  9
	player:LearnSpell(38699) -- Arcane Missles  10
	player:LearnSpell(38704) -- Arcane Missles  11
	player:LearnSpell(42842) -- Arcane Missles  12
	player:LearnSpell(42846) -- Arcane Missles  13
	player:LearnSpell(1953) -- Blink
	player:LearnSpell(10) -- Blizzard  1
	player:LearnSpell(6141) -- Blizzard  2
	player:LearnSpell(8427) -- Blizzard  3
	player:LearnSpell(10185) -- Blizzard  4
	player:LearnSpell(10186) -- Blizzard  5
	player:LearnSpell(10187) -- Blizzard  6
	player:LearnSpell(27085) -- Blizzard  7
	player:LearnSpell(42939) -- Blizzard  8
	player:LearnSpell(42940) -- Blizzard  9
	player:LearnSpell(120) -- Cone of Cold  1
	player:LearnSpell(8492) -- Cone of Cold  2
	player:LearnSpell(10159) -- Cone of Cold  3
	player:LearnSpell(10160) -- Cone of Cold  4
	player:LearnSpell(10161) -- Cone of Cold  5
	player:LearnSpell(27087) -- Cone of Cold  6
	player:LearnSpell(42930) -- Cone of Cold  7
	player:LearnSpell(42931) -- Cone of Cold  8
	player:LearnSpell(587) -- Conjure Food  1
	player:LearnSpell(597) -- Conjure Food  2
	player:LearnSpell(990) -- Conjure Food  3
	player:LearnSpell(6129) -- Conjure Food  4
	player:LearnSpell(10144) -- Conjure Food  5
	player:LearnSpell(10145) -- Conjure Food  6
	player:LearnSpell(28612) -- Conjure Food  7
	player:LearnSpell(33717) -- Conjure Food  8
	player:LearnSpell(759) -- Conjure Mana Gem  1
	player:LearnSpell(3552) -- Conjure Mana Gem  2
	player:LearnSpell(10053) -- Conjure Mana Gem  3
	player:LearnSpell(10054) -- Conjure Mana Gem  4
	player:LearnSpell(27101) -- Conjure Mana Gem  5
	player:LearnSpell(42985) -- Conjure Mana Gem  6
	player:LearnSpell(42955) -- Conjure Refreshment  1
	player:LearnSpell(42956) -- Conjure Refreshment  2
	player:LearnSpell(5504) -- Conjure Water  1
	player:LearnSpell(5505) -- Conjure Water  2
	player:LearnSpell(5506) -- Conjure Water  3
	player:LearnSpell(6127) -- Conjure Water  4
	player:LearnSpell(10138) -- Conjure Water  5
	player:LearnSpell(10139) -- Conjure Water  6
	player:LearnSpell(10140) -- Conjure Water  7
	player:LearnSpell(37420) -- Conjure Water  8
	player:LearnSpell(27090) -- Conjure Water  9
	player:LearnSpell(2139) -- Counterspell
	player:LearnSpell(61316) -- Dalaran Brilliance  3
	player:LearnSpell(61024) -- Dalaran Intellect  7
	player:LearnSpell(604) -- Dampen Magic  1
	player:LearnSpell(8450) -- Dampen Magic  2
	player:LearnSpell(8451) -- Dampen Magic  3
	player:LearnSpell(10173) -- Dampen Magic  4
	player:LearnSpell(10174) -- Dampen Magic  5
	player:LearnSpell(33944) -- Dampen Magic  6
	player:LearnSpell(43015) -- Dampen Magic  7
	player:LearnSpell(12051) -- Evocation
	player:LearnSpell(2136) -- Fire Blast  1
	player:LearnSpell(2137) -- Fire Blast  2
	player:LearnSpell(2138) -- Fire Blast  3
	player:LearnSpell(8412) -- Fire Blast  4
	player:LearnSpell(8413) -- Fire Blast  5
	player:LearnSpell(10197) -- Fire Blast  6
	player:LearnSpell(10199) -- Fire Blast  7
	player:LearnSpell(27078) -- Fire Blast  8
	player:LearnSpell(27079) -- Fire Blast  9
	player:LearnSpell(42872) -- Fire Blast  10
	player:LearnSpell(42873) -- Fire Blast  11
	player:LearnSpell(543) -- Fire Ward  1
	player:LearnSpell(8457) -- Fire Ward  2
	player:LearnSpell(8458) -- Fire Ward  3
	player:LearnSpell(10223) -- Fire Ward  4
	player:LearnSpell(10225) -- Fire Ward  5
	player:LearnSpell(27128) -- Fire Ward  6
	player:LearnSpell(43010) -- Fire Ward  7
	player:LearnSpell(143) -- Fireball  2
	player:LearnSpell(145) -- Fireball  3
	player:LearnSpell(3140) -- Fireball  4
	player:LearnSpell(8400) -- Fireball  5
	player:LearnSpell(8401) -- Fireball  6
	player:LearnSpell(8402) -- Fireball  7
	player:LearnSpell(10148) -- Fireball  8
	player:LearnSpell(10149) -- Fireball  9
	player:LearnSpell(10150) -- Fireball  10
	player:LearnSpell(10151) -- Fireball  11
	player:LearnSpell(25306) -- Fireball  12
	player:LearnSpell(27070) -- Fireball  13
	player:LearnSpell(38692) -- Fireball  14
	player:LearnSpell(42832) -- Fireball  15
	player:LearnSpell(42833) -- Fireball  16
	player:LearnSpell(2120) -- Flamestrike  1
	player:LearnSpell(2121) -- Flamestrike  2
	player:LearnSpell(8422) -- Flamestrike  3
	player:LearnSpell(8423) -- Flamestrike  4
	player:LearnSpell(10215) -- Flamestrike  5
	player:LearnSpell(10216) -- Flamestrike  6
	player:LearnSpell(27086) -- Flamestrike  7
	player:LearnSpell(42925) -- Flamestrike  8
	player:LearnSpell(42926) -- Flamestrike  9
	player:LearnSpell(7300) -- Frost Armor  2
	player:LearnSpell(7301) -- Frost Armor  3
	player:LearnSpell(122) -- Frost Nova  1
	player:LearnSpell(865) -- Frost Nova  2
	player:LearnSpell(6131) -- Frost Nova  3
	player:LearnSpell(10230) -- Frost Nova  4
	player:LearnSpell(27088) -- Frost Nova  5
	player:LearnSpell(42917) -- Frost Nova  6
	player:LearnSpell(6143) -- Frost Ward  1
	player:LearnSpell(8461) -- Frost Ward  2
	player:LearnSpell(8462) -- Frost Ward  3
	player:LearnSpell(10177) -- Frost Ward  4
	player:LearnSpell(28609) -- Frost Ward  5
	player:LearnSpell(32796) -- Frost Ward  6
	player:LearnSpell(43012) -- Frost Ward  7
	player:LearnSpell(116) -- Frostbolt  1
	player:LearnSpell(205) -- Frostbolt  2
	player:LearnSpell(837) -- Frostbolt  3
	player:LearnSpell(7322) -- Frostbolt  4
	player:LearnSpell(8406) -- Frostbolt  5
	player:LearnSpell(8407) -- Frostbolt  6
	player:LearnSpell(8408) -- Frostbolt  7
	player:LearnSpell(10179) -- Frostbolt  8
	player:LearnSpell(10180) -- Frostbolt  9
	player:LearnSpell(10181) -- Frostbolt  10
	player:LearnSpell(25304) -- Frostbolt  11
	player:LearnSpell(27071) -- Frostbolt  12
	player:LearnSpell(27072) -- Frostbolt  13
	player:LearnSpell(38697) -- Frostbolt  14
	player:LearnSpell(42841) -- Frostbolt  15
	player:LearnSpell(42842) -- Frostbolt  16
	player:LearnSpell(44614) -- Frostfire Bolt  1
	player:LearnSpell(47610) -- Frostfire Bolt  2
	player:LearnSpell(7302) -- Ice Armor  1
	player:LearnSpell(7320) -- Ice Armor  2
	player:LearnSpell(10219) -- Ice Armor  3
	player:LearnSpell(10220) -- Ice Armor  4
	player:LearnSpell(27124) -- Ice Armor  5
	player:LearnSpell(43008) -- Ice Armor  6
	player:LearnSpell(45438) -- Ice Block
	player:LearnSpell(30455) -- Ice Lance  1
	player:LearnSpell(42913) -- Ice Lance  2
	player:LearnSpell(42914) -- Ice Lance  3
	player:LearnSpell(66) -- Invisibility
	player:LearnSpell(6117) -- Mage Armor  1
	player:LearnSpell(22782) -- Mage Armor  2
	player:LearnSpell(22783) -- Mage Armor  3
	player:LearnSpell(27125) -- Mage Armor  4
	player:LearnSpell(43023) -- Mage Armor  5
	player:LearnSpell(43024) -- Mage Armor  6
	player:LearnSpell(1463) -- Mana Shield  1
	player:LearnSpell(8494) -- Mana Shield  2
	player:LearnSpell(8495) -- Mana Shield  3
	player:LearnSpell(10191) -- Mana Shield  4
	player:LearnSpell(10192) -- Mana Shield  5
	player:LearnSpell(10193) -- Mana Shield  6
	player:LearnSpell(27131) -- Mana Shield  7
	player:LearnSpell(43019) -- Mana Shield  8
	player:LearnSpell(43020) -- Mana Shield  9
	player:LearnSpell(55342) -- Mirror Image
	player:LearnSpell(30482) -- Molten Armor  1
	player:LearnSpell(43045) -- Molten Armor  2
	player:LearnSpell(43046) -- Molten Armor  3
	player:LearnSpell(118) -- Polymorph  1
	player:LearnSpell(12824) -- Polymorph  2
	player:LearnSpell(12825) -- Polymorph  3
	player:LearnSpell(12826) -- Polymorph  4
	player:LearnSpell(61305) -- Polymorph: Black Cat
	player:LearnSpell(28272) -- Polymorph: Pig
	player:LearnSpell(61721) -- Polymorph: Rabbit
	player:LearnSpell(61780) -- Polymorph: Turkey
	player:LearnSpell(28271) -- Polymorph: Turtle
	player:LearnSpell(53142) -- Portal: Dalaran
		local race = player:GetRace()
		if race == 1 or race == 3 or race == 4 or race == 7 or race == 11 then
			player:LearnSpell(11419) -- Portal: Darnassus
			player:LearnSpell(32266) -- Portal: Exodar
			player:LearnSpell(11416) -- Portal: Ironforge
			player:LearnSpell(33691) -- Portal: Shattrath
			player:LearnSpell(10059) -- Portal: Stormwind
			player:LearnSpell(49360) -- Portal: Theramore
		elseif race == 2 or race == 5 or race == 6 or race == 8 or race == 10 then
			player:LearnSpell(11417) -- Portal: Orgrimmar
			player:LearnSpell(35717) -- Portal: Shattrath
			player:LearnSpell(32267) -- Portal: Silvermoon
			player:LearnSpell(49361) -- Portal: Stonard
			player:LearnSpell(11420) -- Portal: Thunder Bluff
			player:LearnSpell(11418) -- Portal: Undercity
		end
	player:LearnSpell(475) -- Remove Curse
	player:LearnSpell(43987) -- Ritual of Refreshment  1
	player:LearnSpell(58659) -- Ritual of Refreshment  2
	player:LearnSpell(2948) -- Scorch  1
	player:LearnSpell(8444) -- Scorch  2
	player:LearnSpell(8445) -- Scorch  3
	player:LearnSpell(8446) -- Scorch  4
	player:LearnSpell(10205) -- Scorch  5
	player:LearnSpell(10206) -- Scorch  6
	player:LearnSpell(10207) -- Scorch  7
	player:LearnSpell(27073) -- Scorch  8
	player:LearnSpell(27074) -- Scorch  9
	player:LearnSpell(42858) -- Scorch  10
	player:LearnSpell(42859) -- Scorch  11
	player:LearnSpell(130) -- Slow Fall
	player:LearnSpell(30449) -- Spellsteal
	player:LearnSpell(53140) -- Teleport: Dalaran
		local race = player:GetRace()
		if race == 1 or race == 3 or race == 4 or race == 7 or race == 11 then
			player:LearnSpell(3565) -- Teleport: Darnassus
			player:LearnSpell(32271) -- Teleport: Exodar
			player:LearnSpell(3562) -- Teleport: Ironforge
			player:LearnSpell(33690) -- Teleport: Shattrath
			player:LearnSpell(3561) -- Teleport: Stormwind
			player:LearnSpell(49359) -- Teleport: Theramore
		elseif race == 2 or race == 5 or race == 6 or race == 8 or race == 10 then
			player:LearnSpell(3567) -- Teleport: Orgrimmar
			player:LearnSpell(35715) -- Teleport: Shattrath
			player:LearnSpell(32272) -- Teleport: Silvermoon
			player:LearnSpell(49358) -- Teleport: Stonard
			player:LearnSpell(3566) -- Teleport: Thunder Bluff
			player:LearnSpell(3563) -- Teleport: Undercity
		end
	end
		--Warlock
	if (player:GetClass() == 9) then
	player:LearnSpell(5784) -- Mount
	player:LearnSpell(6366) -- Create Firestone  1
	player:LearnSpell(17951) -- Create Firestone  2
	player:LearnSpell(17952) -- Create Firestone  3
	player:LearnSpell(17953) -- Create Firestone  4
	player:LearnSpell(27250) -- Create Firestone  5
	player:LearnSpell(60219) -- Create Firestone  6
	player:LearnSpell(60220) -- Create Firestone  7
	player:LearnSpell(693) -- Create Soulstone  1
	player:LearnSpell(20752) -- Create Soulstone  2
	player:LearnSpell(20755) -- Create Soulstone  3
	player:LearnSpell(20756) -- Create Soulstone  4
	player:LearnSpell(20757) -- Create Soulstone  5
	player:LearnSpell(27238) -- Create Soulstone  6
	player:LearnSpell(47884) -- Create Soulstone  7
	player:LearnSpell(2362) -- Create Spellstone  1
	player:LearnSpell(17727) -- Create Spellstone  2
	player:LearnSpell(17728) -- Create Spellstone  3
	player:LearnSpell(28172) -- Create Spellstone  4
	player:LearnSpell(47886) -- Create Spellstone  5
	player:LearnSpell(47888) -- Create Spellstone  6
	player:LearnSpell(710) -- Banish  1
	player:LearnSpell(18647) -- Banish  2
	player:LearnSpell(172) -- Corruption  1
	player:LearnSpell(6222) -- Corruption  2
	player:LearnSpell(6223) -- Corruption  3
	player:LearnSpell(7648) -- Corruption  4
	player:LearnSpell(11671) -- Corruption  5
	player:LearnSpell(11672) -- Corruption  6
	player:LearnSpell(25311) -- Corruption  7
	player:LearnSpell(27216) -- Corruption  8
	player:LearnSpell(47812) -- Corruption  9
	player:LearnSpell(47813) -- Corruption  10
	player:LearnSpell(6201) -- Create Healthstone  1
	player:LearnSpell(6202) -- Create Healthstone  2
	player:LearnSpell(5699) -- Create Healthstone  3
	player:LearnSpell(11729) -- Create Healthstone  4
	player:LearnSpell(11730) -- Create Healthstone  5
	player:LearnSpell(27230) -- Create Healthstone  6
	player:LearnSpell(47871) -- Create Healthstone  7
	player:LearnSpell(47878) -- Create Healthstone  8
	player:LearnSpell(980) -- Curse of Agony  1
	player:LearnSpell(1014) -- Curse of Agony  2
	player:LearnSpell(6217) -- Curse of Agony  3
	player:LearnSpell(11711) -- Curse of Agony  4
	player:LearnSpell(11712) -- Curse of Agony  5
	player:LearnSpell(11713) -- Curse of Agony  6
	player:LearnSpell(27218) -- Curse of Agony  7
	player:LearnSpell(47863) -- Curse of Agony  8
	player:LearnSpell(47864) -- Curse of Agony  9
	player:LearnSpell(603) -- Curse of Doom  1
	player:LearnSpell(30910) -- Curse of Doom  2
	player:LearnSpell(47867) -- Curse of Doom  3
	player:LearnSpell(1714) -- Curse of Tongues  1
	player:LearnSpell(11719) -- Curse of Tongues  2
	player:LearnSpell(702) -- Curse of Weakness  1
	player:LearnSpell(1108) -- Curse of Weakness  2
	player:LearnSpell(6205) -- Curse of Weakness  3
	player:LearnSpell(7646) -- Curse of Weakness  4
	player:LearnSpell(11707) -- Curse of Weakness  5
	player:LearnSpell(11708) -- Curse of Weakness  6
	player:LearnSpell(27224) -- Curse of Weakness  7
	player:LearnSpell(30909) -- Curse of Weakness  8
	player:LearnSpell(50511) -- Curse of Weakness  9
	player:LearnSpell(1490) -- Curse of the Elements  1
	player:LearnSpell(11721) -- Curse of the Elements  2
	player:LearnSpell(11722) -- Curse of the Elements  3
	player:LearnSpell(27228) -- Curse of the Elements  4
	player:LearnSpell(47865) -- Curse of the Elements  5
	player:LearnSpell(6789) -- Death Coil  1
	player:LearnSpell(17925) -- Death Coil  2
	player:LearnSpell(17926) -- Death Coil  3
	player:LearnSpell(27223) -- Death Coil  4
	player:LearnSpell(47859) -- Death Coil  5
	player:LearnSpell(47860) -- Death Coil  6
	player:LearnSpell(706) -- Demon Armor  1
	player:LearnSpell(1086) -- Demon Armor  2
	player:LearnSpell(11733) -- Demon Armor  3
	player:LearnSpell(11734) -- Demon Armor  4
	player:LearnSpell(11735) -- Demon Armor  5
	player:LearnSpell(27260) -- Demon Armor  6
	player:LearnSpell(47793) -- Demon Armor  7
	player:LearnSpell(47889) -- Demon Armor  8
	player:LearnSpell(687) -- Demon Skin  1
	player:LearnSpell(696) -- Demon Skin  2
	player:LearnSpell(48018) -- Demonic Circle: Summon
	player:LearnSpell(48020) -- Demonic Circle: Teleport
	player:LearnSpell(132) -- Detect Invisibility
	player:LearnSpell(689) -- Drain Life  1
	player:LearnSpell(699) -- Drain Life  2
	player:LearnSpell(709) -- Drain Life  3
	player:LearnSpell(7651) -- Drain Life  4
	player:LearnSpell(11699) -- Drain Life  5
	player:LearnSpell(11700) -- Drain Life  6
	player:LearnSpell(27219) -- Drain Life  7
	player:LearnSpell(27220) -- Drain Life  8
	player:LearnSpell(47857) -- Drain Life  9
	player:LearnSpell(5138) -- Drain Mana
	player:LearnSpell(1120) -- Drain Soul  1
	player:LearnSpell(8288) -- Drain Soul  2
	player:LearnSpell(8289) -- Drain Soul  3
	player:LearnSpell(11675) -- Drain Soul  4
	player:LearnSpell(27217) -- Drain Soul  5
	player:LearnSpell(47855) -- Drain Soul  6
	player:LearnSpell(23161) -- Dreadsteed
	player:LearnSpell(1098) -- Enslave Demon  1
	player:LearnSpell(11725) -- Enslave Demon  2
	player:LearnSpell(11726) -- Enslave Demon  3
	player:LearnSpell(61191) -- Enslave Demon  4
	player:LearnSpell(126) -- Eye of Kilrogg
	player:LearnSpell(5782) -- Fear  1
	player:LearnSpell(6213) -- Fear  2
	player:LearnSpell(6215) -- Fear  3
	player:LearnSpell(28176) -- Fel Armor  1
	player:LearnSpell(28189) -- Fel Armor  2
	player:LearnSpell(47892) -- Fel Armor  3
	player:LearnSpell(47893) -- Fel Armor  4
	player:LearnSpell(5784) -- Felsteed
	player:LearnSpell(755) -- Health Funnel  1
	player:LearnSpell(3698) -- Health Funnel  2
	player:LearnSpell(3699) -- Health Funnel  3
	player:LearnSpell(3700) -- Health Funnel  4
	player:LearnSpell(11693) -- Health Funnel  5
	player:LearnSpell(11694) -- Health Funnel  6
	player:LearnSpell(11695) -- Health Funnel  7
	player:LearnSpell(27259) -- Health Funnel  8
	player:LearnSpell(47856) -- Health Funnel  9
	player:LearnSpell(1949) -- Hellfire  1
	player:LearnSpell(11683) -- Hellfire  2
	player:LearnSpell(11684) -- Hellfire  3
	player:LearnSpell(27213) -- Hellfire  4
	player:LearnSpell(47823) -- Hellfire  5
	player:LearnSpell(5484) -- Howl of Terror  1
	player:LearnSpell(17928) -- Howl of Terror  2
	player:LearnSpell(348) -- Immolate  1
	player:LearnSpell(707) -- Immolate  2
	player:LearnSpell(1094) -- Immolate  3
	player:LearnSpell(2941) -- Immolate  4
	player:LearnSpell(11665) -- Immolate  5
	player:LearnSpell(11667) -- Immolate  6
	player:LearnSpell(11668) -- Immolate  7
	player:LearnSpell(25309) -- Immolate  8
	player:LearnSpell(27215) -- Immolate  9
	player:LearnSpell(47810) -- Immolate  10
	player:LearnSpell(47811) -- Immolate  11
	player:LearnSpell(29722) -- Incinerate  1
	player:LearnSpell(32231) -- Incinerate  2
	player:LearnSpell(47837) -- Incinerate  3
	player:LearnSpell(47838) -- Incinerate  4
	player:LearnSpell(1454) -- Life Tap  1
	player:LearnSpell(1455) -- Life Tap  2
	player:LearnSpell(1456) -- Life Tap  3
	player:LearnSpell(11687) -- Life Tap  4
	player:LearnSpell(11688) -- Life Tap  5
	player:LearnSpell(11689) -- Life Tap  6
	player:LearnSpell(27222) -- Life Tap  7
	player:LearnSpell(57946) -- Life Tap  8
	player:LearnSpell(5740) -- Rain of Fire  1
	player:LearnSpell(6219) -- Rain of Fire  2
	player:LearnSpell(11677) -- Rain of Fire  3
	player:LearnSpell(11678) -- Rain of Fire  4
	player:LearnSpell(27212) -- Rain of Fire  5
	player:LearnSpell(47819) -- Rain of Fire  6
	player:LearnSpell(47820) -- Rain of Fire  7
	player:LearnSpell(18540) -- Ritual of Doom
	player:LearnSpell(29893) -- Ritual of Souls  1
	player:LearnSpell(58887) -- Ritual of Souls  2
	player:LearnSpell(698) -- Ritual of Summoning
	player:LearnSpell(5676) -- Searing Pain  1
	player:LearnSpell(17919) -- Searing Pain  2
	player:LearnSpell(17920) -- Searing Pain  3
	player:LearnSpell(17921) -- Searing Pain  4
	player:LearnSpell(17922) -- Searing Pain  5
	player:LearnSpell(17923) -- Searing Pain  6
	player:LearnSpell(27210) -- Searing Pain  7
	player:LearnSpell(30459) -- Searing Pain  8
	player:LearnSpell(47814) -- Searing Pain  9
	player:LearnSpell(47815) -- Searing Pain  10
	player:LearnSpell(27243) -- Seed of Corruption  1
	player:LearnSpell(47835) -- Seed of Corruption  2
	player:LearnSpell(47836) -- Seed of Corruption  3
	player:LearnSpell(5500) -- Sense Demons
	player:LearnSpell(695) -- Shadow Bolt  2
	player:LearnSpell(705) -- Shadow Bolt  3
	player:LearnSpell(1088) -- Shadow Bolt  4
	player:LearnSpell(1106) -- Shadow Bolt  5
	player:LearnSpell(7641) -- Shadow Bolt  6
	player:LearnSpell(11659) -- Shadow Bolt  7
	player:LearnSpell(11660) -- Shadow Bolt  8
	player:LearnSpell(11661) -- Shadow Bolt  9
	player:LearnSpell(25307) -- Shadow Bolt  10
	player:LearnSpell(27209) -- Shadow Bolt  11
	player:LearnSpell(47808) -- Shadow Bolt  12
	player:LearnSpell(47809) -- Shadow Bolt  13
	player:LearnSpell(6229) -- Shadow Ward  1
	player:LearnSpell(11739) -- Shadow Ward  2
	player:LearnSpell(11740) -- Shadow Ward  3
	player:LearnSpell(28610) -- Shadow Ward  4
	player:LearnSpell(47890) -- Shadow Ward  5
	player:LearnSpell(47891) -- Shadow Ward  6
	player:LearnSpell(47897) -- Shadowflame  1
	player:LearnSpell(61290) -- Shadowflame  2
	player:LearnSpell(6353) -- Soul Fire  1
	player:LearnSpell(17924) -- Soul Fire  2
	player:LearnSpell(27211) -- Soul Fire  3
	player:LearnSpell(30545) -- Soul Fire  4
	player:LearnSpell(47824) -- Soul Fire  5
	player:LearnSpell(47825) -- Soul Fire  6
	player:LearnSpell(29858) -- Soulshatter
	player:LearnSpell(691) -- Summon Felhunter
	player:LearnSpell(688) -- Summon Imp
	player:LearnSpell(712) -- Summon Succubus
	player:LearnSpell(697) -- Summon Voidwalker
	player:LearnSpell(5697) -- Unending Breath
	end
		-- Druid
	if (player:GetClass() == 11) then
	player:LearnSpell(2893) -- Abolish Poison
	player:LearnSpell(1066) -- Aquatic Form
	player:LearnSpell(22812) -- Barkskin
	player:LearnSpell(5211) -- Bash  1
	player:LearnSpell(6798) -- Bash  2
	player:LearnSpell(8983) -- Bash  3
	player:LearnSpell(768) -- Cat Form
	player:LearnSpell(5209) -- Challenging Roar
	player:LearnSpell(1082) -- Claw  1
	player:LearnSpell(3029) -- Claw  2
	player:LearnSpell(5201) -- Claw  3
	player:LearnSpell(9849) -- Claw  4
	player:LearnSpell(9850) -- Claw  5
	player:LearnSpell(27000) -- Claw  6
	player:LearnSpell(48569) -- Claw  7
	player:LearnSpell(48570) -- Claw  8
	player:LearnSpell(8998) -- Cower  1
	player:LearnSpell(9000) -- Cower  2
	player:LearnSpell(9892) -- Cower  3
	player:LearnSpell(31709) -- Cower  4
	player:LearnSpell(27004) -- Cower  5
	player:LearnSpell(48575) -- Cower  6
	player:LearnSpell(8946) -- Cure Poison
	player:LearnSpell(33786) -- Cyclone
	player:LearnSpell(1850) -- Dash  1
	player:LearnSpell(9821) -- Dash  2
	player:LearnSpell(33357) -- Dash  3
	player:LearnSpell(99) -- Demoralizing Roar  1
	player:LearnSpell(1735) -- Demoralizing Roar  2
	player:LearnSpell(9490) -- Demoralizing Roar  3
	player:LearnSpell(9747) -- Demoralizing Roar  4
	player:LearnSpell(9898) -- Demoralizing Roar  5
	player:LearnSpell(26998) -- Demoralizing Roar  6
	player:LearnSpell(48559) -- Demoralizing Roar  7
	player:LearnSpell(48560) -- Demoralizing Roar  8
	player:LearnSpell(9634) -- Dire Bear Form
	player:LearnSpell(5229) -- Enrage
	player:LearnSpell(339) -- Entangling Roots  1
	player:LearnSpell(1062) -- Entangling Roots  2
	player:LearnSpell(5195) -- Entangling Roots  3
	player:LearnSpell(5196) -- Entangling Roots  4
	player:LearnSpell(9852) -- Entangling Roots  5
	player:LearnSpell(9853) -- Entangling Roots  6
	player:LearnSpell(26989) -- Entangling Roots  7
	player:LearnSpell(53308) -- Entangling Roots  8
	player:LearnSpell(770) -- Faerie Fire
	player:LearnSpell(16857) -- Faerie Fire (Feral)
	player:LearnSpell(20719) -- Feline Grace 
	player:LearnSpell(16979) -- Feral Charge - Bear
	player:LearnSpell(49376) -- Feral Charge - Cat 
	player:LearnSpell(22568) -- Ferocious Bite  1
	player:LearnSpell(22827) -- Ferocious Bite  2
	player:LearnSpell(22828) -- Ferocious Bite  3
	player:LearnSpell(22829) -- Ferocious Bite  4
	player:LearnSpell(31018) -- Ferocious Bite  5
	player:LearnSpell(24248) -- Ferocious Bite  6
	player:LearnSpell(48576) -- Ferocious Bite  7
	player:LearnSpell(48577) -- Ferocious Bite  8
	player:LearnSpell(33943) -- Flight Form
	player:LearnSpell(22842) -- Frenzied Regeneration  1
	player:LearnSpell(21849) -- Gift of the Wild  1
	player:LearnSpell(21850) -- Gift of the Wild  2
	player:LearnSpell(26991) -- Gift of the Wild  3
	player:LearnSpell(48470) -- Gift of the Wild  4
	player:LearnSpell(6795) -- Growl 
	player:LearnSpell(5186) -- Healing Touch  2
	player:LearnSpell(5187) -- Healing Touch  3
	player:LearnSpell(5188) -- Healing Touch  4
	player:LearnSpell(5189) -- Healing Touch  5
	player:LearnSpell(6778) -- Healing Touch  6
	player:LearnSpell(8903) -- Healing Touch  7
	player:LearnSpell(9758) -- Healing Touch  8
	player:LearnSpell(9888) -- Healing Touch  9
	player:LearnSpell(9889) -- Healing Touch  10
	player:LearnSpell(25297) -- Healing Touch  11
	player:LearnSpell(26978) -- Healing Touch  12
	player:LearnSpell(26979) -- Healing Touch  13
	player:LearnSpell(48377) -- Healing Touch  14
	player:LearnSpell(48378) -- Healing Touch  15
	player:LearnSpell(2637) -- Hibernate  1
	player:LearnSpell(18657) -- Hibernate  2
	player:LearnSpell(18658) -- Hibernate  3
	player:LearnSpell(16914) -- Hurricane  1
	player:LearnSpell(17401) -- Hurricane  2
	player:LearnSpell(17402) -- Hurricane  3
	player:LearnSpell(27012) -- Hurricane  4
	player:LearnSpell(48467) -- Hurricane  5
	player:LearnSpell(29166) -- Innervate
	player:LearnSpell(33745) -- Lacerate  1
	player:LearnSpell(48567) -- Lacerate  2
	player:LearnSpell(48568) -- Lacerate  3
	player:LearnSpell(33763) -- Lifebloom  1
	player:LearnSpell(48450) -- Lifebloom  2
	player:LearnSpell(48451) -- Lifebloom  3
	player:LearnSpell(22570) -- Maim  1
	player:LearnSpell(49802) -- Maim  2
	player:LearnSpell(33878) -- Mangle (Bear)  1
	player:LearnSpell(33986) -- Mangle (Bear)  2
	player:LearnSpell(33987) -- Mangle (Bear)  3
	player:LearnSpell(48563) -- Mangle (Bear)  4
	player:LearnSpell(48564) -- Mangle (Bear)  5
	player:LearnSpell(33876) -- Mangle (Cat)  1
	player:LearnSpell(33982) -- Mangle (Cat)  2
	player:LearnSpell(33983) -- Mangle (Cat)  3
	player:LearnSpell(48565) -- Mangle (Cat)  4
	player:LearnSpell(48566) -- Mangle (Cat)  5
	player:LearnSpell(1126) -- Mark of the Wild  1
	player:LearnSpell(5232) -- Mark of the Wild  2
	player:LearnSpell(6756) -- Mark of the Wild  3
	player:LearnSpell(5234) -- Mark of the Wild  4
	player:LearnSpell(8907) -- Mark of the Wild  5
	player:LearnSpell(9884) -- Mark of the Wild  6
	player:LearnSpell(9885) -- Mark of the Wild  7
	player:LearnSpell(26990) -- Mark of the Wild  8
	player:LearnSpell(48469) -- Mark of the Wild  9
	player:LearnSpell(6807) -- Maul  1
	player:LearnSpell(6808) -- Maul  2
	player:LearnSpell(6809) -- Maul  3
	player:LearnSpell(8972) -- Maul  4
	player:LearnSpell(9745) -- Maul  5
	player:LearnSpell(9880) -- Maul  6
	player:LearnSpell(9881) -- Maul  7
	player:LearnSpell(26996) -- Maul  8
	player:LearnSpell(48479) -- Maul  9
	player:LearnSpell(48480) -- Maul  10
	player:LearnSpell(8921) -- Moonfire  1
	player:LearnSpell(8924) -- Moonfire  2
	player:LearnSpell(8925) -- Moonfire  3
	player:LearnSpell(8926) -- Moonfire  4
	player:LearnSpell(8927) -- Moonfire  5
	player:LearnSpell(8928) -- Moonfire  6
	player:LearnSpell(8929) -- Moonfire  7
	player:LearnSpell(9833) -- Moonfire  8
	player:LearnSpell(9834) -- Moonfire  9
	player:LearnSpell(9835) -- Moonfire  10
	player:LearnSpell(26987) -- Moonfire  11
	player:LearnSpell(26988) -- Moonfire  12
	player:LearnSpell(48462) -- Moonfire  13
	player:LearnSpell(48463) -- Moonfire  14
	player:LearnSpell(16689) -- Nature's Grasp  1
	player:LearnSpell(16810) -- Nature's Grasp  2
	player:LearnSpell(16811) -- Nature's Grasp  3
	player:LearnSpell(16812) -- Nature's Grasp  4
	player:LearnSpell(16813) -- Nature's Grasp  5
	player:LearnSpell(17329) -- Nature's Grasp  6
	player:LearnSpell(27009) -- Nature's Grasp  7
	player:LearnSpell(53312) -- Nature's Grasp  8
	player:LearnSpell(50464) -- Nourish  1
	player:LearnSpell(9005) -- Pounce  1
	player:LearnSpell(9823) -- Pounce  2
	player:LearnSpell(9827) -- Pounce  3
	player:LearnSpell(27006) -- Pounce  4
	player:LearnSpell(49803) -- Pounce  5
	player:LearnSpell(5215) -- Prowl  1
	player:LearnSpell(6783) -- Prowl  2
	player:LearnSpell(9913) -- Prowl  3
	player:LearnSpell(1822) -- Rake  1
	player:LearnSpell(1823) -- Rake  2
	player:LearnSpell(1824) -- Rake  3
	player:LearnSpell(9904) -- Rake  4
	player:LearnSpell(27003) -- Rake  5
	player:LearnSpell(48573) -- Rake  6
	player:LearnSpell(48574) -- Rake  7
	player:LearnSpell(6785) -- Ravage  1
	player:LearnSpell(6787) -- Ravage  2
	player:LearnSpell(9866) -- Ravage  3
	player:LearnSpell(9867) -- Ravage  4
	player:LearnSpell(27005) -- Ravage  5
	player:LearnSpell(48578) -- Ravage  6
	player:LearnSpell(48579) -- Ravage  7
	player:LearnSpell(20484) -- Rebirth  1
	player:LearnSpell(20739) -- Rebirth  2
	player:LearnSpell(20742) -- Rebirth  3
	player:LearnSpell(20747) -- Rebirth  4
	player:LearnSpell(20748) -- Rebirth  5
	player:LearnSpell(26994) -- Rebirth  6
	player:LearnSpell(48477) -- Rebirth  7
	player:LearnSpell(8936) -- Regrowth  1
	player:LearnSpell(8938) -- Regrowth  2
	player:LearnSpell(8939) -- Regrowth  3
	player:LearnSpell(8940) -- Regrowth  4
	player:LearnSpell(8941) -- Regrowth  5
	player:LearnSpell(9750) -- Regrowth  6
	player:LearnSpell(9856) -- Regrowth  7
	player:LearnSpell(9857) -- Regrowth  8
	player:LearnSpell(9858) -- Regrowth  9
	player:LearnSpell(26980) -- Regrowth  10
	player:LearnSpell(48442) -- Regrowth  11
	player:LearnSpell(48443) -- Regrowth  12
	player:LearnSpell(774) -- Rejuvenation  1
	player:LearnSpell(1058) -- Rejuvenation  2
	player:LearnSpell(1430) -- Rejuvenation  3
	player:LearnSpell(2090) -- Rejuvenation  4
	player:LearnSpell(2091) -- Rejuvenation  5
	player:LearnSpell(3627) -- Rejuvenation  6
	player:LearnSpell(8910) -- Rejuvenation  7
	player:LearnSpell(9839) -- Rejuvenation  8
	player:LearnSpell(9840) -- Rejuvenation  9
	player:LearnSpell(9841) -- Rejuvenation  10
	player:LearnSpell(25299) -- Rejuvenation  11
	player:LearnSpell(26981) -- Rejuvenation  12
	player:LearnSpell(26982) -- Rejuvenation  13
	player:LearnSpell(48440) -- Rejuvenation  14
	player:LearnSpell(48441) -- Rejuvenation  15
	player:LearnSpell(2782) -- Remove Curse
	player:LearnSpell(50769) -- Revive  1
	player:LearnSpell(50768) -- Revive  2
	player:LearnSpell(50767) -- Revive  3
	player:LearnSpell(50766) -- Revive  4
	player:LearnSpell(50765) -- Revive  5
	player:LearnSpell(50764) -- Revive  6
	player:LearnSpell(50763) -- Revive  7
	player:LearnSpell(1079) -- Rip  1
	player:LearnSpell(9492) -- Rip  2
	player:LearnSpell(9493) -- Rip  3
	player:LearnSpell(9752) -- Rip  4
	player:LearnSpell(9894) -- Rip  5
	player:LearnSpell(9896) -- Rip  6
	player:LearnSpell(27008) -- Rip  7
	player:LearnSpell(49799) -- Rip  8
	player:LearnSpell(49800) -- Rip  9
	player:LearnSpell(62600) -- Savage Defense
	player:LearnSpell(52610) -- Savage Roar  1
	player:LearnSpell(5221) -- Shred  1
	player:LearnSpell(6800) -- Shred  2
	player:LearnSpell(8992) -- Shred  3
	player:LearnSpell(9829) -- Shred  4
	player:LearnSpell(9830) -- Shred  5
	player:LearnSpell(27001) -- Shred  6
	player:LearnSpell(27002) -- Shred  7
	player:LearnSpell(48571) -- Shred  8
	player:LearnSpell(48572) -- Shred  9
	player:LearnSpell(2908) -- Soothe Animal  1
	player:LearnSpell(8955) -- Soothe Animal  2
	player:LearnSpell(9901) -- Soothe Animal  3
	player:LearnSpell(26995) -- Soothe Animal  4
	player:LearnSpell(2912) -- Starfire  1
	player:LearnSpell(8949) -- Starfire  2
	player:LearnSpell(8950) -- Starfire  3
	player:LearnSpell(8951) -- Starfire  4
	player:LearnSpell(9875) -- Starfire  5
	player:LearnSpell(9876) -- Starfire  6
	player:LearnSpell(25298) -- Starfire  7
	player:LearnSpell(26986) -- Starfire  8
	player:LearnSpell(48464) -- Starfire  9
	player:LearnSpell(48465) -- Starfire  10
	player:LearnSpell(40120) -- Swift Flight Form
	player:LearnSpell(779) -- Swipe (Bear)  1
	player:LearnSpell(780) -- Swipe (Bear)  2
	player:LearnSpell(769) -- Swipe (Bear)  3
	player:LearnSpell(9754) -- Swipe (Bear)  4
	player:LearnSpell(9908) -- Swipe (Bear)  5
	player:LearnSpell(26997) -- Swipe (Bear)  6
	player:LearnSpell(48561) -- Swipe (Bear)  7
	player:LearnSpell(48562) -- Swipe (Bear)  8
	player:LearnSpell(62078) -- Swipe (Cat)  1
	player:LearnSpell(18960) -- Teleport: Moonglade
	player:LearnSpell(467) -- Thorns  1
	player:LearnSpell(782) -- Thorns  2
	player:LearnSpell(1075) -- Thorns  3
	player:LearnSpell(8914) -- Thorns  4
	player:LearnSpell(9756) -- Thorns  5
	player:LearnSpell(9910) -- Thorns  6
	player:LearnSpell(26992) -- Thorns  7
	player:LearnSpell(53307) -- Thorns  8
	player:LearnSpell(5217) -- Tiger's Fury  1
	player:LearnSpell(6793) -- Tiger's Fury  2
	player:LearnSpell(9845) -- Tiger's Fury  3
	player:LearnSpell(9846) -- Tiger's Fury  4
	player:LearnSpell(50212) -- Tiger's Fury  5
	player:LearnSpell(50213) -- Tiger's Fury  6
	player:LearnSpell(5225) -- Track Humanoids
	player:LearnSpell(740) -- Tranquility  1
	player:LearnSpell(8918) -- Tranquility  2
	player:LearnSpell(9862) -- Tranquility  3
	player:LearnSpell(9863) -- Tranquility  4
	player:LearnSpell(26983) -- Tranquility  5
	player:LearnSpell(48446) -- Tranquility  6
	player:LearnSpell(48447) -- Tranquility  7
	player:LearnSpell(783) -- Travel Form
	player:LearnSpell(5177) -- Wrath  2
	player:LearnSpell(5178) -- Wrath  3
	player:LearnSpell(5179) -- Wrath  4
	player:LearnSpell(5180) -- Wrath  5
	player:LearnSpell(6780) -- Wrath  6
	player:LearnSpell(8905) -- Wrath  7
	player:LearnSpell(9912) -- Wrath  8
	player:LearnSpell(26984) -- Wrath  9
	player:LearnSpell(26985) -- Wrath  10
	player:LearnSpell(48459) -- Wrath  11
	player:LearnSpell(48461) -- Wrath  12
	end

   


	if (localization == 8) then
	   player:RegisterEvent(description_ruRU, 5000, 1)
	   else
	   player:RegisterEvent(description_enGB, 5000, 1)
	end   
end


function description_ruRU(event, delay, pCall, player, target)
		player:SendBroadcastMessage("|ccc33FFFF[New Player Guide]|ccc33FF33: Привет, спасибо, что присоединились к нашему серверу! Вы можете использовать команду (#w your_text) для офицерского чата.")
		player:SendBroadcastMessage("|ccc33FFFF[New Player Guide]|ccc33FF33: Вы можете использовать [Teleporter Stone] (в вашей сумке) для телепортации в подземелье или в другое место.")
		player:SendBroadcastMessage("|ccc33FFFF[New Player Guide]|ccc33FF33: Покупайте предметы у продавца [Weapon / Armor], а также находите свое оружие и квесты для улучшения.")
		player:SendBroadcastMessage("|ccc33FFFF[New Player Guide]|ccc33FF33: Откройте [Teleporter Stone] -> [Gifts - Rewards (Daily)] -> [Daily Gift] и откройте коробку в своей сумке. Затем перейдите в [Level Up Zone].")
		player:SendBroadcastMessage("|ccc33FFFF[New Player Guide]|ccc33FF33: Не забудьте проголосовать за нас и получить награду с помощью [Teleporter Stone].")
		player:SendBroadcastMessage("|ccc33FFFF[New Player Guide]|ccc33FF33: Удачной игры ;)")	
end

function description_enGB(event, delay, pCall, player, target)
		player:SendBroadcastMessage("|ccc33FFFF[New Player Guide]|ccc33FF33: Hi, Thank you for join our server! You can use command (#w your_text) for officer chat.")
		player:SendBroadcastMessage("|ccc33FFFF[New Player Guide]|ccc33FF33: You can use [Teleporter Stone] (in your bag) for teleport to instance or other locations.")
		player:SendBroadcastMessage("|ccc33FFFF[New Player Guide]|ccc33FF33: Buy items from [Weapon/Armor] vendor, also find your weapon & gear quest's for upgrade.")
		player:SendBroadcastMessage("|ccc33FFFF[New Player Guide]|ccc33FF33: Open [Teleporter Stone]->[Gifts - Rewards (Daily)]->[Daily Gift] & open box in your bag. Then go to [Level up Zone].")
		player:SendBroadcastMessage("|ccc33FFFF[New Player Guide]|ccc33FF33: Don't forget vote for us & get your reward with [Teleporter Stone].")
		player:SendBroadcastMessage("|ccc33FFFF[New Player Guide]|ccc33FF33: Have fun ;)")	
end


RegisterPlayerEvent(30, OnLogin)
