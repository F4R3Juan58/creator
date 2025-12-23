-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local lampEntries = {}
local registeredLampItems = {}
local lampUseHandlers = {}
local lampsLoaded = false
local initializedPlayers = {}
function GetLamps()
  return lampEntries
end
MySQL.ready(function()
  Wait(1000)
  local loaded = false
  while not loaded do
    local success = pcall(function()
      local storedLamps = MySQL.query.await("SELECT * FROM lunar_drugscreator_lamps")
      for index = 1, #storedLamps do
        local lampRow = storedLamps[index]
        lampEntries[lampRow.id] = json.decode(lampRow.data)
        local lampData = lampEntries[lampRow.id]
        lampData.coords = vector3(lampData.coords.x, lampData.coords.y, lampData.coords.z)
        lampData.rotation = vector3(lampData.rotation.x, lampData.rotation.y, lampData.rotation.z)
      end
    end)
    if success then
      loaded = true
    else
      Wait(100)
    end
  end
  lampsLoaded = true
end)
RegisterNetEvent("lunar_drugscreator:lamps:init", function()
  local playerId = source
  if initializedPlayers[playerId] then
    return
  end
  initializedPlayers[playerId] = true
  while not lampsLoaded do
    Wait(100)
  end
  TriggerLatentClientEvent("lunar_drugscreator:lamps:update", playerId, 50000, lampEntries)
end)
function PersistLamp(lampId)
  local lampData = lampEntries[lampId]
  if lampData then
    MySQL.insert.await("INSERT INTO lunar_drugscreator_lamps (id, data) VALUES (?, ?) ON DUPLICATE KEY UPDATE data = VALUES(data)", {
      lampId,
      json.encode(lampData)
    })
  else
    MySQL.update.await("DELETE FROM lunar_drugscreator_lamps WHERE id = ?", { lampId })
  end
end
RegisterNetEvent("lunar_drugscreator:lamps:take", function(lampId)
  local playerId = source
  local player = Framework.getPlayerFromId(playerId)
  local lampData = lampEntries[lampId]
  if not player or not lampData then
    return
  end
  if lampData.routingBucket ~= GetPlayerRoutingBucket(playerId) then
    return
  end
  local lampConfig = nil
  for index = 1, #ServerConfig.lamps, 1 do
    local configEntry = ServerConfig.lamps[index]
    if configEntry.model == lampData.model then
      lampConfig = configEntry
      break
    end
  end
  if not lampConfig then
    return
  end
  lampEntries[lampId] = nil
  player.addItem(lampConfig.item, 1)
  PersistLamp(lampId)
  TriggerClientEvent("lunar_drugscreator:lamps:remove", -1, lampId)
  RecalculateAddedLight(lampEntries)
  SendLog(playerId, ("Picked up lamp %s."):format(lampConfig.item))
end)
function ReloadLamps()
  for index = 1, #ServerConfig.lamps, 1 do
    local lampConfig = ServerConfig.lamps[index]
    if not registeredLampItems[lampConfig.item] then
      Framework.registerUsableItem(lampConfig.item, function(playerId)
        local player = Framework.getPlayerFromId(playerId)
        if not player then
          return
        end
        local handler = lampUseHandlers[lampConfig.item]
        if not handler then
          return
        end
        handler(player)
      end)
      registeredLampItems[lampConfig.item] = true
    end
    lampUseHandlers[lampConfig.item] = function(player)
      if not player.hasItem(lampConfig.item) then
        return
      end
      local placed, coords, rotation = lib.callback.await("lunar_drugscreator:lamps:place", player.source, lampConfig.model)
      if not placed or not player.hasItem(lampConfig.item) then
        return
      end
      player.removeItem(lampConfig.item, 1)
      local newLampId = #lampEntries + 1
      lampEntries[newLampId] = {
        model = lampConfig.model,
        coords = coords,
        rotation = rotation,
        routingBucket = GetPlayerRoutingBucket(player.source)
      }
      PersistLamp(newLampId)
      TriggerClientEvent("lunar_drugscreator:lamps:addLamp", -1, newLampId, lampEntries[newLampId])
      RecalculateAddedLight(lampEntries)
    end
  end
end
Lamps = {
  field = "lamps",
  reload = ReloadLamps
}
