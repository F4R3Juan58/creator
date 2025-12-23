-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



UI = {}
function UI.sendMessage(action, data)
  SendNUIMessage({
    action = action,
    data = data
  })
end
RegisterNUICallback("hideFrame", function()
  SetNuiFocus(false, false)
end)
RegisterNUICallback("updateServerConfig", function(data, cb)
  local indexes = data.indexes
  local configData = data.data
  TriggerServerEvent("lunar_drugscreator:updateServerConfig", indexes, configData)
  cb({})
end)
local profileLoaded = false
RegisterNUICallback("getProfile", function(_, cb)
  if profileLoaded then
    return
  end
  lib.callback("lunar_drugscreator:getDiscordIcon", false, function(avatarUrl)
    cb({
      serverId = cache.serverId,
      username = GetPlayerName(cache.playerId),
      avatarUrl = avatarUrl
    })
  end)
end)
local cachedStats = nil
local commandName = Config.command
if not commandName then
  commandName = "drugscreator"
end
RegisterCommand(commandName, function()
  while true do
    if ServerConfig then
      break
    end
    Wait(100)
  end
  local webhook = lib.callback.await("lunar_drugscreator:getWebhook", false)
  if not webhook then
    return
  end
  if not profileLoaded then
    lib.callback("lunar_drugscreator:getDiscordIcon", false, function(avatarUrl)
      UI.sendMessage("updateProfile", {
        serverId = cache.serverId,
        username = GetPlayerName(cache.playerId),
        avatarUrl = avatarUrl
      })
    end)
    profileLoaded = true
  end
  if not cachedStats then
    TriggerServerEvent("lunar_drugscreator:getStats")
    local attempts = 0
    while not cachedStats and attempts < 100 do
      Wait(100)
      attempts = attempts + 1
    end
    if cachedStats and cachedStats.topSellingDrug then
      cachedStats.topSellingDrug.name = Utils.getItemLabel(cachedStats.topSellingDrug.name)
    end
    SetTimeout(120000, function()
      cachedStats = nil
    end)
  end
  if not GlobalState["lunar_drugscreator:onboarded"] then
    UI.sendMessage("openOnboarding")
  end
  ServerConfig.generalSettings.webhook = webhook
  UI.sendMessage("updateServerConfig", {
    config = ServerConfig,
    force = true
  })
  UI.sendMessage("updateStats", cachedStats)
  UI.sendMessage("open")
  SetNuiFocus(true, true)
end)
RegisterNUICallback("getLanguage", function(_, cb)
  cb(Config.uiLanguage)
end)
RegisterNUICallback("teleport", function(data, cb)
  RequestCollisionAtCoord(data.x, data.y, data.z)
  Wait(1000)
  SetEntityCoords(cache.ped, data.x, data.y, data.z)
  if data.w then
    SetEntityHeading(cache.ped, data.w + 0.0)
  end
  cb({})
end)
RegisterNUICallback("onboardingComplete", function(data, cb)
  if data.usePresetConfig then
    TriggerServerEvent("lunar_drugscreator:usePresetConfig")
  else
    TriggerServerEvent("lunar_drugscreator:dismissOnboarding")
  end
  cb({})
end)
RegisterNUICallback("resetToPresetConfig", function(_, cb)
  TriggerServerEvent("lunar_drugscreator:usePresetConfig", true)
  cb({})
end)
RegisterNUICallback("loadConfigBackup", function(_, cb)
  local success = lib.callback.await("lunar_drugscreator:loadConfigBackup", false)
  cb({
    success = success
  })
end)
RegisterNUICallback("makeConfigBackup", function(_, cb)
  TriggerServerEvent("lunar_drugscreator:makeConfigBackup")
  cb({})
end)
RegisterNetEvent("lunar_drugscreator:receiveStats")
AddEventHandler("lunar_drugscreator:receiveStats", function(stats)
  cachedStats = stats
end)
