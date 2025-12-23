-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



HarvestingZonePoints = {}
HarvestingZoneObjects = {}
local objectOffsets = {
  [1411212000] = vector3(0.0, 0.0, 0.0),
  [-1163697832] = vector3(0.0, 0.0, -0.1),
  [-160828936] = vector3(0.0, 0.0, -0.1),
  [-2066805056] = vector3(0.0, 0.0, -0.1),
  [-426716606] = vector3(0.0, 0.0, -0.05),
  [-1810748086] = vector3(0.0, 0.0, -0.05),
  [-659638654] = vector3(0.0, 0.0, -0.05),
  [-962260369] = vector3(0.0, 0.0, -0.05),
  [-9050489] = vector3(0.0, 0.0, -0.07),
  [-194056537] = vector3(0.0, 0.0, -0.1),
  [-1239494205] = vector3(0.0, 0.0, -0.3),
  default = vector3(0.0, 0.0, 0.0)
}
function CleanupHarvestingEntities(resourceName)
  if resourceName ~= GetCurrentResourceName() then
    return
  end
  for entityId, entity in pairs(HarvestingZoneObjects) do
    SetEntityAsMissionEntity(entity, false, true)
    DeleteEntity(entity)
    HarvestingZoneObjects[entityId] = nil
  end
end
AddEventHandler("onResourceStop", CleanupHarvestingEntities)
function StartHarvestingInteraction(targetData)
  local zoneConfig = targetData.zone
  local entityId = targetData.id
  local locationIndex = targetData.locationIndex
  if zoneConfig.requiredItem and zoneConfig.requiredItem ~= "" then
    if not Framework.hasItem(zoneConfig.requiredItem) then
      LR.notify(zoneConfig.errorMessage or locale("missing_items"), "error")
      return
    end
  end
  local canHarvest, errorMessage = lib.callback.await("lunar_drugscreator:harvesting:startHarvesting", false, entityId)
  if not canHarvest then
    if errorMessage then
      LR.notify(errorMessage, "error")
    end
    return
  end
  local entityCoords = GetEntityCoords(HarvestingZoneObjects[entityId])
  Utils.makeEntityFaceCoords(cache.ped, entityCoords)
  local animationConfig = zoneConfig.animation.dict or zoneConfig.animation.scenario and zoneConfig.animation or nil
  local animationProp = nil
  if zoneConfig.animationProp and zoneConfig.animationProp.model and IsModelValid(zoneConfig.animationProp.model) then
    animationProp = zoneConfig.animationProp
  end
  LR.progressBar(zoneConfig.progress, zoneConfig.duration, false, animationConfig, animationProp)
end
function SpawnHarvestingZone(zoneCoords, zoneIndex, locationIndex, entityId)
  while not ServerConfig do
    Wait(100)
  end
  local zoneConfig = ServerConfig.harvestingZones[zoneIndex]
  local interaction = nil
  local spawnedObject = nil
  HarvestingZonePoints[entityId] = lib.points.new({
    coords = zoneCoords,
    distance = 100.0,
    onEnter = function()
      lib.requestModel(zoneConfig.model)
      local groundFound, groundZ = GetGroundZFor_3dCoord(zoneCoords.x, zoneCoords.y, zoneCoords.z, false)
      local attemptHeight = 50.0
      while groundZ == 0.0 and attemptHeight < 500.0 do
        attemptHeight = attemptHeight + 50.0
        groundFound, groundZ = GetGroundZFor_3dCoord(zoneCoords.x, zoneCoords.y, zoneCoords.z + attemptHeight, false)
        Wait(0)
      end
      spawnedObject = CreateObjectNoOffset(zoneConfig.model, zoneCoords.x, zoneCoords.y, groundZ + 1.0, false, false)
      HarvestingZoneObjects[entityId] = spawnedObject
      PlaceObjectOnGroundProperly(spawnedObject)
      Wait(0)
      FreezeEntityPosition(spawnedObject, true)
      SetEntityHeading(spawnedObject, math.random(0, 360) + 0.0)
      SetCanClimbOnEntity(spawnedObject, false)
      local offset = objectOffsets[GetEntityModel(spawnedObject)] or objectOffsets.default
      SetEntityCoords(spawnedObject, GetOffsetFromEntityInWorldCoords(spawnedObject, offset.x, offset.y, offset.z))
      local objectCoords = GetEntityCoords(spawnedObject)
      local interactionOffset = zoneConfig.interactionOffset or vector3(0.0, 0.0, 0.0)
      interaction = Utils.createInteractionPoint({
        coords = vector3(objectCoords.x + interactionOffset.x, objectCoords.y + interactionOffset.y, objectCoords.z + interactionOffset.z),
        radius = zoneConfig.radius,
        options = {
          {
            label = zoneConfig.label or locale("harvest"),
            icon = zoneConfig.icon or "hand",
            onSelect = StartHarvestingInteraction,
            args = {
              zone = zoneConfig,
              id = entityId,
              locationIndex = locationIndex
            },
            canInteract = function()
              return not IsPedInAnyVehicle(cache.ped, true)
            end
          }
        }
      }, zoneConfig.target)
    end,
    onExit = function()
      DeleteEntity(spawnedObject)
      if interaction then
        interaction.remove()
      end
    end
  })
end
RegisterNetEvent("lunar_drugscreator:harvesting:spawn", function(zoneCoords, zoneIndex, locationIndex, entityId)
  SpawnHarvestingZone(zoneCoords, zoneIndex, locationIndex, entityId)
end)
SetTimeout(500, function()
  TriggerServerEvent("lunar_drugscreator:harvesting:getZones")
end)
RegisterNetEvent("lunar_drugscreator:harvesting:initZones", function(zones)
  for _, zoneInfo in pairs(zones) do
    SpawnHarvestingZone(zoneInfo.coords, zoneInfo.index, zoneInfo.locationIndex, zoneInfo.id)
  end
end)
RegisterNetEvent("lunar_drugscreator:harvesting:remove", function(entityId)
  if not HarvestingZonePoints[entityId] then
    return
  end
  HarvestingZonePoints[entityId].onExit()
  HarvestingZonePoints[entityId].remove()
  HarvestingZonePoints[entityId] = nil
  HarvestingZoneObjects[entityId] = nil
end)
RegisterNetEvent("lunar_drugscreator:harvesting:reset", function()
  for entityId, point in pairs(HarvestingZonePoints) do
    point.onExit()
    point.remove()
    HarvestingZonePoints[entityId] = nil
    HarvestingZoneObjects[entityId] = nil
  end
end)
