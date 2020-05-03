--[[

GM start set

]]
local EQUIPMENT_SLOT_START        = 0
local EQUIPMENT_SLOT_HEAD         = 0
local EQUIPMENT_SLOT_NECK         = 1
local EQUIPMENT_SLOT_SHOULDERS    = 2
local EQUIPMENT_SLOT_BODY         = 3
local EQUIPMENT_SLOT_CHEST        = 4
local EQUIPMENT_SLOT_WAIST        = 5
local EQUIPMENT_SLOT_LEGS         = 6
local EQUIPMENT_SLOT_FEET         = 7
local EQUIPMENT_SLOT_WRISTS       = 8
local EQUIPMENT_SLOT_HANDS        = 9
local EQUIPMENT_SLOT_FINGER1      = 10
local EQUIPMENT_SLOT_FINGER2      = 11
local EQUIPMENT_SLOT_TRINKET1     = 12
local EQUIPMENT_SLOT_TRINKET2     = 13
local EQUIPMENT_SLOT_BACK         = 14
local EQUIPMENT_SLOT_MAINHAND     = 15
local EQUIPMENT_SLOT_OFFHAND      = 16
local EQUIPMENT_SLOT_RANGED       = 17
local EQUIPMENT_SLOT_TABARD       = 18
local EQUIPMENT_SLOT_END          = 19

local INVENTORY_SLOT_BAG_START    = 19
local INVENTORY_SLOT_BAG_END      = 23

local INVENTORY_SLOT_ITEM_START   = 23
local INVENTORY_SLOT_ITEM_END     = 39

local INVTYPE_CHEST               = 5
local INVTYPE_WEAPON              = 13
local INVTYPE_ROBE                = 20
local INVTYPE_WEAPONMAINHAND      = 21
local INVTYPE_WEAPONOFFHAND       = 22

local ITEM_CLASS_WEAPON           = 2
local ITEM_CLASS_ARMOR            = 4

local ITEM_SUBCLASS_WEAPON_BOW          = 2
local ITEM_SUBCLASS_WEAPON_GUN          = 3
local ITEM_SUBCLASS_WEAPON_CROSSBOW     = 18
local ITEM_SUBCLASS_WEAPON_FISHING_POLE = 20

function OnLogin(event, player)
local delay = 0
  if (player:GetGMRank() >= 1) then
   delay = 10000
  player:AddItem(2586) --chest
  player:AddItem(11508) -- boots
  player:AddItem(12064) -- head
  player:CanEquipItem( 2586, EQUIPMENT_SLOT_CHEST ) --chest
  player:CanEquipItem( 11508, EQUIPMENT_SLOT_FEET ) -- boots
  player:CanEquipItem( 12064, EQUIPMENT_SLOT_HEAD ) -- head
end
end

RegisterPlayerEvent(30, OnLogin)
