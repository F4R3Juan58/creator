-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



ServerConfig = nil
local encodedConfigCache = nil
local reloadableModules = {
  HarvestingZones,
  Plants,
  Lamps,
  ProcessingTables,
  PocketProcessing,
  WholesaleSelling,
  Consumables
}
function NormalizeValue(value)
  if nil ~= value then
    if "number" == type(value) or "string" == type(value) or "boolean" == type(value) or "function" == type(value) then
      return value
    end
  end
  if nil ~= value.x and nil ~= value.y and nil ~= value.z then
    if nil ~= value.w then
      return vector4(value.x, value.y, value.z, value.w)
    else
      return vector3(value.x, value.y, value.z)
    end
  end
  local normalizedTable = {}
  for key, itemValue in pairs(value) do
    local normalizedKey = key
    if "string" == type(key) then
      local numericKey = tonumber(key)
      if numericKey then
        normalizedKey = numericKey
        normalizedTable[key] = nil
      end
    end
    if "string" == type(itemValue) and "" == itemValue then
      normalizedTable[normalizedKey] = nil
    else
      normalizedTable[normalizedKey] = NormalizeValue(itemValue)
    end
  end
  return normalizedTable
end
local fallbackConfig = {
  harvestingZones = {},
  processingZones = {},
  plants = {},
  lamps = {},
  laboratories = {},
  processingTables = {},
  suppliers = {},
  consumables = {},
  pocketProcessing = {},
  retailSellingZones = {},
  wholesaleSettings = {
    enabled = false,
    phoneItem = "phone",
    clientInterval = {
      min = 3600000,
      max = 7200000
    },
    locations = {},
    account = "money",
    items = {}
  },
  generalSettings = {
    sellDivisor = 2,
    plantInterval = 300000,
    retailSellingCommand = "sell",
    progressDurations = {
      watering = 3000,
      fertilizing = 3000,
      harvesting = 7500
    },
    webhook = ""
  }
}
function LoadServerConfigFromDatabase()
  local result = MySQL.single.await("SELECT data FROM lunar_drugscreator WHERE `key` = ?", { "config" })
  if not result then
    ServerConfig = NormalizeValue(fallbackConfig)
  else
    ServerConfig = NormalizeValue(json.decode(result.data))
  end
  encodedConfigCache = nil
  for _, module in ipairs(reloadableModules) do
    module.reload()
  end
  ServerConfig.generalSettings.webhook = nil
end
function PersistServerConfig()
  local encodedConfig = json.encode(ServerConfig)
  MySQL.update.await("REPLACE INTO lunar_drugscreator (`key`, `data`) VALUES (?, ?)", { "config", encodedConfig })
end
MySQL.ready(function()
  Wait(1000)
  local loaded = false
  while not loaded do
    local success = pcall(LoadServerConfigFromDatabase)
    if success then
      loaded = true
    else
      Wait(100)
    end
  end
end)
function EncodeConfigPayload(payload, secretKey)
  if "string" ~= type(payload) then
    payload = json.encode(payload)
  end
  local encodedPayload = ""
  for index = 1, #payload, 1 do
    local secretByte = string.byte(secretKey, index % #secretKey + 1)
    encodedPayload = encodedPayload .. string.char(string.byte(payload, index) ~ secretByte)
  end
  return encodedPayload
end
function GetEncodedServerConfig()
  if not encodedConfigCache then
    encodedConfigCache = EncodeConfigPayload(ServerConfig, "PUDI6iaaIBish2g71o0QKJVmMnTWAKGviIpuO")
  end
  return encodedConfigCache
end
local initializedPlayers = {}
RegisterNetEvent("lunar_drugscreator:init")
AddEventHandler("lunar_drugscreator:init", function()
  local playerId = source
  if initializedPlayers[playerId] then
    return
  end
  initializedPlayers[playerId] = true
  while not ServerConfig do
    Wait(100)
  end
  local encodedPayload = GetEncodedServerConfig()
  TriggerLatentClientEvent("lunar_drugscreator:init", playerId, 50000, encodedPayload)
end)
function IsPlayerAdmin(playerId)
  if Framework.name == "qb-core" then
    return IsPlayerAceAllowed(playerId, "drugscreator_admin")
  else
    local player = Framework.getPlayerFromId(playerId)
    local hasAdminGroup = player and player.hasOneOfGroups(Config.adminGroups)
    return hasAdminGroup
  end
end
RegisterNetEvent("lunar_drugscreator:updateServerConfig")
AddEventHandler("lunar_drugscreator:updateServerConfig", function(configPath, updatedValue)
  local playerId = source
  if not ServerConfig or not IsPlayerAdmin(playerId) then
    return
  end
  local configBranch = ServerConfig
  for index = 1, #configPath - 1, 1 do
    configBranch = configBranch[configPath[index]]
  end
  local finalKey = configPath[#configPath]
  configBranch[finalKey] = NormalizeValue(updatedValue)
  if configPath[1] == "generalSettings" then
    UpdateWebhook(ServerConfig.generalSettings.webhook)
    updatedValue.webhook = nil
  end
  ServerConfig.generalSettings.webhook = nil
  encodedConfigCache = nil
  TriggerClientEvent("lunar_drugscreator:updateServerConfig", -1, configPath, updatedValue)
  PersistServerConfig()
  for _, module in ipairs(reloadableModules) do
    if module.field == configPath[1] then
      module.reload()
    end
  end
end)
CreateThread(function()
  local onboarded = GetResourceKvpInt("lunar_drugscreator:onboarded")
  onboarded = 1 == onboarded
  GlobalState.set("lunar_drugscreator:onboarded", onboarded, true)
  RegisterNetEvent("lunar_drugscreator:usePresetConfig")
  AddEventHandler("lunar_drugscreator:usePresetConfig", function(saveBackup)
    local playerId = source
    if not IsPlayerAdmin(playerId) then
      return
    end
    if saveBackup then
      MySQL.update.await("REPLACE INTO lunar_drugscreator (`key`, `data`) VALUES (?, ?)", {
        "config_backup",
        json.encode(ServerConfig)
      })
    end
    ServerConfig = NormalizeValue(DefaultConfig)
    encodedConfigCache = nil
    PersistServerConfig()
    for _, module in ipairs(reloadableModules) do
      module.reload()
    end
    GlobalState.set("lunar_drugscreator:onboarded", 1, true)
    SetResourceKvpInt("lunar_drugscreator:onboarded", 1)
    TriggerLatentClientEvent("lunar_drugscreator:init", -1, 50000, GetEncodedServerConfig())
    onboarded = true
  end)
  lib.callback.register("lunar_drugscreator:loadConfigBackup", function(playerId)
    if not IsPlayerAdmin(playerId) then
      return
    end
    local result = MySQL.single.await("SELECT data FROM lunar_drugscreator WHERE `key` = ?", { "config_backup" })
    if not result then
      return false
    end
    ServerConfig = NormalizeValue(json.decode(result.data))
    encodedConfigCache = nil
    PersistServerConfig()
    for _, module in ipairs(reloadableModules) do
      module.reload()
    end
    TriggerLatentClientEvent("lunar_drugscreator:init", -1, 50000, GetEncodedServerConfig())
    return true
  end)
  RegisterNetEvent("lunar_drugscreator:makeConfigBackup")
  AddEventHandler("lunar_drugscreator:makeConfigBackup", function()
    local playerId = source
    if not IsPlayerAdmin(playerId) then
      return
    end
    MySQL.update.await("REPLACE INTO lunar_drugscreator (`key`, `data`) VALUES (?, ?)", {
      "config_backup",
      json.encode(ServerConfig)
    })
  end)
  RegisterNetEvent("lunar_drugscreator:dismissOnboarding")
  AddEventHandler("lunar_drugscreator:dismissOnboarding", function()
    local playerId = source
    if not IsPlayerAdmin(playerId) then
      return
    end
    if onboarded then
      return
    end
    GlobalState.set("lunar_drugscreator:onboarded", 1, true)
    SetResourceKvpInt("lunar_drugscreator:onboarded", 1)
    onboarded = true
  end)
end)
