-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



ServerConfig = nil
local reloadableModules = {}
reloadableModules[1] = Laboratories
reloadableModules[2] = ProcessingZones
reloadableModules[3] = Suppliers
reloadableModules[4] = RetailSelling
function ReloadClientModules()
  for _, module in ipairs(reloadableModules) do
    module.reload()
  end
  UI.sendMessage("updateServerConfig", {
    config = ServerConfig,
    force = false
  })
end
function DecodeConfigPayload(encodedPayload, secretKey)
  local decodedPayload = ""
  for index = 1, #encodedPayload, 1 do
    local secretByte = string.byte(secretKey, index % #secretKey + 1)
    decodedPayload = decodedPayload .. string.char(string.byte(encodedPayload, index) ~ secretByte)
  end
  return json.decode(decodedPayload)
end
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
CreateThread(function()
  while true do
    if Framework.isPlayerLoaded() then
      break
    end
    Wait(100)
  end
  TriggerServerEvent("lunar_drugscreator:init")
end)
RegisterNetEvent("lunar_drugscreator:init")
AddEventHandler("lunar_drugscreator:init", function(configPayload)
  if not configPayload then
    return
  end
  local decodedConfig = DecodeConfigPayload(configPayload, "PUDI6iaaIBish2g71o0QKJVmMnTWAKGviIpuO")
  ServerConfig = NormalizeValue(decodedConfig)
  ReloadClientModules()
end)
RegisterNetEvent("lunar_drugscreator:updateServerConfig")
AddEventHandler("lunar_drugscreator:updateServerConfig", function(configPath, updatedValue)
  if not ServerConfig then
    return
  end
  local currentConfigBranch = ServerConfig
  for index = 1, #configPath - 1, 1 do
    local branchKey = configPath[index]
    currentConfigBranch = currentConfigBranch[branchKey]
  end
  local finalKey = configPath[#configPath]
  currentConfigBranch[finalKey] = NormalizeValue(updatedValue)
  ReloadClientModules()
end)
