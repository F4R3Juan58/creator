-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
UI = L0_1
L0_1 = UI
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = A0_2
  L3_2.data = A1_2
  L2_2(L3_2)
end
L0_1.sendMessage = L1_1
L0_1 = RegisterNUICallback
L1_1 = "hideFrame"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "updateServerConfig"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.indexes
  L3_2 = A0_2.data
  L4_2 = TriggerServerEvent
  L5_2 = "lunar_drugscreator:updateServerConfig"
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A1_2
  L5_2 = {}
  L4_2(L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = false
L1_1 = RegisterNUICallback
L2_1 = "getProfile"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  if not L2_2 then
    L2_2 = lib
    L2_2 = L2_2.callback
    L3_2 = "lunar_drugscreator:getDiscordIcon"
    L4_2 = false
    function L5_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = A1_2
      L2_3 = {}
      L3_3 = cache
      L3_3 = L3_3.serverId
      L2_3.serverId = L3_3
      L3_3 = GetPlayerName
      L4_3 = cache
      L4_3 = L4_3.playerId
      L3_3 = L3_3(L4_3)
      L2_3.username = L3_3
      L2_3.avatarUrl = A0_3
      L1_3(L2_3)
    end
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = nil
L2_1 = RegisterCommand
L3_1 = Config
L3_1 = L3_1.command
if not L3_1 then
  L3_1 = "drugscreator"
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  while true do
    L0_2 = ServerConfig
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
  end
  L0_2 = lib
  L0_2 = L0_2.callback
  L0_2 = L0_2.await
  L1_2 = "lunar_drugscreator:getWebhook"
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    return
  end
  L1_2 = L0_1
  if not L1_2 then
    L1_2 = lib
    L1_2 = L1_2.callback
    L2_2 = "lunar_drugscreator:getDiscordIcon"
    L3_2 = false
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3
      L1_3 = UI
      L1_3 = L1_3.sendMessage
      L2_3 = "updateProfile"
      L3_3 = {}
      L4_3 = cache
      L4_3 = L4_3.serverId
      L3_3.serverId = L4_3
      L4_3 = GetPlayerName
      L5_3 = cache
      L5_3 = L5_3.playerId
      L4_3 = L4_3(L5_3)
      L3_3.username = L4_3
      L3_3.avatarUrl = A0_3
      L1_3(L2_3, L3_3)
    end
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = true
    L0_1 = L1_2
  end
  L1_2 = L1_1
  if not L1_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "lunar_drugscreator:getStats"
    L1_2(L2_2)
    L1_2 = 0
    while true do
      L2_2 = L1_1
      if not (not L2_2 and L1_2 < 100) then
        break
      end
      L2_2 = Wait
      L3_2 = 100
      L2_2(L3_2)
      L1_2 = L1_2 + 1
    end
    L2_2 = L1_1
    if L2_2 then
      L2_2 = L1_1.topSellingDrug
      if L2_2 then
        L2_2 = L1_1.topSellingDrug
        L3_2 = Utils
        L3_2 = L3_2.getItemLabel
        L4_2 = L1_1.topSellingDrug
        L4_2 = L4_2.name
        L3_2 = L3_2(L4_2)
        L2_2.name = L3_2
      end
    end
    L2_2 = SetTimeout
    L3_2 = 120000
    function L4_2()
      local L0_3, L1_3
      L0_3 = nil
      L1_1 = L0_3
    end
    L2_2(L3_2, L4_2)
  end
  L1_2 = GlobalState
  L1_2 = L1_2["lunar_drugscreator:onboarded"]
  if not L1_2 then
    L1_2 = UI
    L1_2 = L1_2.sendMessage
    L2_2 = "openOnboarding"
    L1_2(L2_2)
  end
  L1_2 = ServerConfig
  L1_2 = L1_2.generalSettings
  L1_2.webhook = L0_2
  L1_2 = UI
  L1_2 = L1_2.sendMessage
  L2_2 = "updateServerConfig"
  L3_2 = {}
  L4_2 = ServerConfig
  L3_2.config = L4_2
  L3_2.force = true
  L1_2(L2_2, L3_2)
  L1_2 = UI
  L1_2 = L1_2.sendMessage
  L2_2 = "updateStats"
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = UI
  L1_2 = L1_2.sendMessage
  L2_2 = "open"
  L1_2(L2_2)
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "getLanguage"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = Config
  L3_2 = L3_2.uiLanguage
  L2_2(L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "teleport"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L3_2 = RequestCollisionAtCoord
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L6_2 = L2_2.z
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Wait
  L4_2 = 1000
  L3_2(L4_2)
  L3_2 = SetEntityCoords
  L4_2 = cache
  L4_2 = L4_2.ped
  L5_2 = L2_2.x
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L2_2.w
  if L3_2 then
    L3_2 = SetEntityHeading
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = L2_2.w
    L5_2 = L5_2 + 0.0
    L3_2(L4_2, L5_2)
  end
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "onboardingComplete"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.usePresetConfig
  if L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "lunar_drugscreator:usePresetConfig"
    L2_2(L3_2)
  else
    L2_2 = TriggerServerEvent
    L3_2 = "lunar_drugscreator:dismissOnboarding"
    L2_2(L3_2)
  end
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "resetToPresetConfig"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "lunar_drugscreator:usePresetConfig"
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "loadConfigBackup"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = lib
  L2_2 = L2_2.callback
  L2_2 = L2_2.await
  L3_2 = "lunar_drugscreator:loadConfigBackup"
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L4_2 = {}
  L4_2.success = L2_2
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "makeConfigBackup"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = TriggerServerEvent
  L3_2 = "lunar_drugscreator:makeConfigBackup"
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "lunar_drugscreator:receiveStats"
function L4_1(A0_2)
  local L1_2
  L1_1 = A0_2
end
L2_1(L3_1, L4_1)
