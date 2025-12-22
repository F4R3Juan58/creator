-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
ServerConfig = nil
L0_1 = nil
L1_1 = {}
L2_1 = HarvestingZones
L3_1 = Plants
L4_1 = Lamps
L5_1 = ProcessingTables
L6_1 = PocketProcessing
L7_1 = WholesaleSelling
L8_1 = Consumables
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L1_1[6] = L7_1
L1_1[7] = L8_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if nil ~= A0_2 then
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if "number" ~= L1_2 then
      L1_2 = type
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if "string" ~= L1_2 then
        L1_2 = type
        L2_2 = A0_2
        L1_2 = L1_2(L2_2)
        if "boolean" ~= L1_2 then
          L1_2 = type
          L2_2 = A0_2
          L1_2 = L1_2(L2_2)
          if "function" ~= L1_2 then
            goto lbl_24
          end
        end
      end
    end
  end
  do return A0_2 end
  ::lbl_24::
  L1_2 = A0_2.x
  if nil ~= L1_2 then
    L1_2 = A0_2.y
    if nil ~= L1_2 then
      L1_2 = A0_2.z
      if nil ~= L1_2 then
        L1_2 = A0_2.w
        if nil ~= L1_2 then
          L1_2 = vector4
          L2_2 = A0_2.x
          L3_2 = A0_2.y
          L4_2 = A0_2.z
          L5_2 = A0_2.w
          return L1_2(L2_2, L3_2, L4_2, L5_2)
        else
          L1_2 = vector3
          L2_2 = A0_2.x
          L3_2 = A0_2.y
          L4_2 = A0_2.z
          return L1_2(L2_2, L3_2, L4_2)
        end
      end
    end
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L6_2
    L9_2 = type
    L10_2 = L6_2
    L9_2 = L9_2(L10_2)
    if "string" == L9_2 then
      L9_2 = tonumber
      L10_2 = L6_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L8_2 = L9_2
        L1_2[L6_2] = nil
      end
    end
    L9_2 = type
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if "string" == L9_2 and "" == L7_2 then
      L1_2[L8_2] = nil
    else
      L9_2 = L2_1
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L1_2[L8_2] = L9_2
    end
  end
  return L1_2
end
L3_1 = {}
L4_1 = {}
L3_1.harvestingZones = L4_1
L4_1 = {}
L3_1.processingZones = L4_1
L4_1 = {}
L3_1.plants = L4_1
L4_1 = {}
L3_1.lamps = L4_1
L4_1 = {}
L3_1.laboratories = L4_1
L4_1 = {}
L3_1.processingTables = L4_1
L4_1 = {}
L3_1.suppliers = L4_1
L4_1 = {}
L3_1.consumables = L4_1
L4_1 = {}
L3_1.pocketProcessing = L4_1
L4_1 = {}
L3_1.retailSellingZones = L4_1
L4_1 = {}
L4_1.enabled = false
L4_1.phoneItem = "phone"
L5_1 = {}
L5_1.min = 3600000
L5_1.max = 7200000
L4_1.clientInterval = L5_1
L5_1 = {}
L4_1.locations = L5_1
L4_1.account = "money"
L5_1 = {}
L4_1.items = L5_1
L3_1.wholesaleSettings = L4_1
L4_1 = {}
L4_1.sellDivisor = 2
L4_1.plantInterval = 300000
L4_1.retailSellingCommand = "sell"
L5_1 = {}
L5_1.watering = 3000
L5_1.fertilizing = 3000
L5_1.harvesting = 7500
L4_1.progressDurations = L5_1
L4_1.webhook = ""
L3_1.generalSettings = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = MySQL
  L0_2 = L0_2.single
  L0_2 = L0_2.await
  L1_2 = "SELECT data FROM lunar_drugscreator WHERE `key` = ?"
  L2_2 = {}
  L3_2 = "config"
  L2_2[1] = L3_2
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L1_2 = L2_1
    L2_2 = L3_1
    L1_2 = L1_2(L2_2)
    ServerConfig = L1_2
  else
    L1_2 = L2_1
    L2_2 = json
    L2_2 = L2_2.decode
    L3_2 = L0_2.data
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    ServerConfig = L1_2
  end
  L1_2 = nil
  L0_1 = L1_2
  L1_2 = 1
  L2_2 = L1_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.reload
    L5_2()
  end
  L1_2 = ServerConfig
  L1_2 = L1_2.generalSettings
  L1_2.webhook = nil
end
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = json
  L0_2 = L0_2.encode
  L1_2 = ServerConfig
  L0_2 = L0_2(L1_2)
  L1_2 = MySQL
  L1_2 = L1_2.update
  L1_2 = L1_2.await
  L2_2 = "REPLACE INTO lunar_drugscreator (`key`, `data`) VALUES (?, ?)"
  L3_2 = {}
  L4_2 = "config"
  L5_2 = L0_2
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L6_1 = MySQL
L6_1 = L6_1.ready
function L7_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = false
  while not L0_2 do
    L1_2 = pcall
    L2_2 = L4_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L0_2 = true
    else
      L2_2 = Wait
      L3_2 = 100
      L2_2(L3_2)
    end
  end
end
L6_1(L7_1)
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "string" ~= L2_2 then
    L2_2 = json
    L2_2 = L2_2.encode
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    A0_2 = L2_2
  end
  L2_2 = ""
  L3_2 = 1
  L4_2 = #A0_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = string
    L7_2 = L7_2.byte
    L8_2 = A1_2
    L9_2 = #A1_2
    L9_2 = L6_2 % L9_2
    L9_2 = L9_2 + 1
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L2_2
    L9_2 = string
    L9_2 = L9_2.char
    L10_2 = string
    L10_2 = L10_2.byte
    L11_2 = A0_2
    L12_2 = L6_2
    L10_2 = L10_2(L11_2, L12_2)
    L10_2 = L10_2 ~ L7_2
    L9_2 = L9_2(L10_2)
    L8_2 = L8_2 .. L9_2
    L2_2 = L8_2
  end
  return L2_2
end
function L7_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  if not L0_2 then
    L0_2 = L6_1
    L1_2 = ServerConfig
    L2_2 = "PUDI6iaaIBish2g71o0QKJVmMnTWAKGviIpuO"
    L0_2 = L0_2(L1_2, L2_2)
    L0_1 = L0_2
  end
  L0_2 = L0_1
  return L0_2
end
L8_1 = {}
L9_1 = RegisterNetEvent
L10_1 = "lunar_drugscreator:init"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = source
  L1_2 = L8_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    return
  end
  L1_2 = L8_1
  L1_2[L0_2] = true
  while true do
    L1_2 = ServerConfig
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L1_2 = L7_1
  L1_2 = L1_2()
  L2_2 = TriggerLatentClientEvent
  L3_2 = "lunar_drugscreator:init"
  L4_2 = L0_2
  L5_2 = 50000
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L9_1(L10_1, L11_1)
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Framework
  L1_2 = L1_2.name
  if "qb-core" == L1_2 then
    L1_2 = IsPlayerAceAllowed
    L2_2 = A0_2
    L3_2 = "drugscreator_admin"
    return L1_2(L2_2, L3_2)
  else
    L1_2 = Framework
    L1_2 = L1_2.getPlayerFromId
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2 or L2_2
    if L1_2 then
      L3_2 = L1_2
      L2_2 = L1_2.hasOneOfGroups
      L4_2 = Config
      L4_2 = L4_2.adminGroups
      L2_2 = L2_2(L3_2, L4_2)
    end
    return L2_2
  end
end
IsPlayerAdmin = L9_1
L9_1 = RegisterNetEvent
L10_1 = "lunar_drugscreator:updateServerConfig"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = ServerConfig
  if L3_2 then
    L3_2 = IsPlayerAdmin
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L3_2 = ServerConfig
  L4_2 = 1
  L5_2 = #A0_2
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2[L7_2]
    L3_2 = L3_2[L8_2]
  end
  L4_2 = #A0_2
  L4_2 = A0_2[L4_2]
  L5_2 = L2_1
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L3_2[L4_2] = L5_2
  L4_2 = A0_2[1]
  if "generalSettings" == L4_2 then
    L4_2 = UpdateWebhook
    L5_2 = ServerConfig
    L5_2 = L5_2.generalSettings
    L5_2 = L5_2.webhook
    L4_2(L5_2)
    A1_2.webhook = nil
  end
  L4_2 = ServerConfig
  L4_2 = L4_2.generalSettings
  L4_2.webhook = nil
  L4_2 = nil
  L0_1 = L4_2
  L4_2 = TriggerClientEvent
  L5_2 = "lunar_drugscreator:updateServerConfig"
  L6_2 = -1
  L7_2 = A0_2
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = L5_1
  L4_2()
  L4_2 = 1
  L5_2 = L1_1
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_1
    L8_2 = L8_2[L7_2]
    L8_2 = L8_2.field
    L9_2 = A0_2[1]
    if L8_2 == L9_2 then
      L8_2 = L1_1
      L8_2 = L8_2[L7_2]
      L8_2 = L8_2.reload
      L8_2()
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = CreateThread
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = GetResourceKvpInt
  L1_2 = "lunar_drugscreator:onboarded"
  L0_2 = L0_2(L1_2)
  L0_2 = 1 == L0_2
  L1_2 = GlobalState
  L2_2 = L1_2
  L1_2 = L1_2.set
  L3_2 = "lunar_drugscreator:onboarded"
  L4_2 = L0_2
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = RegisterNetEvent
  L2_2 = "lunar_drugscreator:usePresetConfig"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = source
    L2_3 = IsPlayerAdmin
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    if not L2_3 then
      return
    end
    if A0_3 then
      L2_3 = MySQL
      L2_3 = L2_3.update
      L2_3 = L2_3.await
      L3_3 = "REPLACE INTO lunar_drugscreator (`key`, `data`) VALUES (?, ?)"
      L4_3 = {}
      L5_3 = "config_backup"
      L6_3 = json
      L6_3 = L6_3.encode
      L7_3 = ServerConfig
      L6_3, L7_3 = L6_3(L7_3)
      L4_3[1] = L5_3
      L4_3[2] = L6_3
      L4_3[3] = L7_3
      L2_3(L3_3, L4_3)
    end
    L2_3 = L2_1
    L3_3 = DefaultConfig
    L2_3 = L2_3(L3_3)
    ServerConfig = L2_3
    L2_3 = nil
    L0_1 = L2_3
    L2_3 = L5_1
    L2_3()
    L2_3 = 1
    L3_3 = L1_1
    L3_3 = #L3_3
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = L1_1
      L6_3 = L6_3[L5_3]
      L6_3 = L6_3.reload
      L6_3()
    end
    L2_3 = GlobalState
    L3_3 = L2_3
    L2_3 = L2_3.set
    L4_3 = "lunar_drugscreator:onboarded"
    L5_3 = 1
    L6_3 = true
    L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = SetResourceKvpInt
    L3_3 = "lunar_drugscreator:onboarded"
    L4_3 = 1
    L2_3(L3_3, L4_3)
    L2_3 = TriggerLatentClientEvent
    L3_3 = "lunar_drugscreator:init"
    L4_3 = -1
    L5_3 = 50000
    L6_3 = L7_1
    L6_3, L7_3 = L6_3()
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
    L2_3 = true
    L0_2 = L2_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = lib
  L1_2 = L1_2.callback
  L1_2 = L1_2.register
  L2_2 = "lunar_drugscreator:loadConfigBackup"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = IsPlayerAdmin
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      return
    end
    L1_3 = MySQL
    L1_3 = L1_3.single
    L1_3 = L1_3.await
    L2_3 = "SELECT data FROM lunar_drugscreator WHERE `key` = ?"
    L3_3 = {}
    L4_3 = "config_backup"
    L3_3[1] = L4_3
    L1_3 = L1_3(L2_3, L3_3)
    if not L1_3 then
      L2_3 = false
      return L2_3
    end
    L2_3 = L2_1
    L3_3 = json
    L3_3 = L3_3.decode
    L4_3 = L1_3.data
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    ServerConfig = L2_3
    L2_3 = nil
    L0_1 = L2_3
    L2_3 = L5_1
    L2_3()
    L2_3 = 1
    L3_3 = L1_1
    L3_3 = #L3_3
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = L1_1
      L6_3 = L6_3[L5_3]
      L6_3 = L6_3.reload
      L6_3()
    end
    L2_3 = TriggerLatentClientEvent
    L3_3 = "lunar_drugscreator:init"
    L4_3 = -1
    L5_3 = 50000
    L6_3 = L7_1
    L6_3 = L6_3()
    L2_3(L3_3, L4_3, L5_3, L6_3)
    L2_3 = true
    return L2_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = RegisterNetEvent
  L2_2 = "lunar_drugscreator:makeConfigBackup"
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = source
    L1_3 = IsPlayerAdmin
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      return
    end
    L1_3 = MySQL
    L1_3 = L1_3.update
    L1_3 = L1_3.await
    L2_3 = "REPLACE INTO lunar_drugscreator (`key`, `data`) VALUES (?, ?)"
    L3_3 = {}
    L4_3 = "config_backup"
    L5_3 = json
    L5_3 = L5_3.encode
    L6_3 = ServerConfig
    L5_3, L6_3 = L5_3(L6_3)
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L3_3[3] = L6_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = RegisterNetEvent
  L2_2 = "lunar_drugscreator:dismissOnboarding"
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = source
    L1_3 = IsPlayerAdmin
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = L0_2
      if not L1_3 then
        goto lbl_11
      end
    end
    do return end
    ::lbl_11::
    L1_3 = GlobalState
    L2_3 = L1_3
    L1_3 = L1_3.set
    L3_3 = "lunar_drugscreator:onboarded"
    L4_3 = 1
    L5_3 = true
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = SetResourceKvpInt
    L2_3 = "lunar_drugscreator:onboarded"
    L3_3 = 1
    L1_3(L2_3, L3_3)
    L1_3 = true
    L0_2 = L1_3
  end
  L1_2(L2_2, L3_2)
end
L9_1(L10_1)
