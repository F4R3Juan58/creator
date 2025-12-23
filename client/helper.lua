-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



function SelectCurrentPosition()
  LR.showUI(locale("select_point"))
  while true do
    DisableControlAction(0, 38, true)
    DisableControlAction(0, 105, true)
    if IsDisabledControlJustReleased(0, 38) then
      local playerCoords = GetEntityCoords(cache.ped)
      local playerHeading = GetEntityHeading(cache.ped)
      LR.hideUI()
      return vector4(playerCoords.x, playerCoords.y, playerCoords.z, playerHeading)
    end
    Wait(0)
  end
end
function SelectPlacementPosition(pedModels, propModels)
  local selectedCoords = nil
  local currentHeadingOffset = 0.0
  local hasPedPlacement = #pedModels > 0
  local previewProps = {}
  local previewPeds = {}
  local playerCoords = GetEntityCoords(cache.ped)
  local shouldApplyModelHeight = false
  local lowestBound = 0.0
  for index = 1, #propModels, 1 do
    local modelMins, modelMaxs = GetModelDimensions(propModels[1].model)
    if modelMaxs.z - modelMins.z >= 1.0 then
      shouldApplyModelHeight = true
    end
    if lowestBound > modelMins.z then
      lowestBound = modelMins.z
    end
    previewProps[index] = Utils.createProp(vector3(playerCoords.x, playerCoords.y, playerCoords.z - 10.0), propModels[index])
  end
  for index = 1, #pedModels, 1 do
    previewPeds[index] = Utils.createPed(vector3(playerCoords.x, playerCoords.y, playerCoords.z - 10.0), pedModels[index])
    shouldApplyModelHeight = true
  end
  local selectionInterval = SetInterval(function()
    local hasHit, _, hitCoords = lib.raycast.cam(17, 1, 10.0)
    if hasHit then
      selectedCoords = hitCoords
    end
  end, 0)
  LR.showUI(locale("select_point_2"))
  while true do
    DisableControlAction(0, 24, true)
    DisableControlAction(0, 105, true)
    DisableControlAction(0, 73, true)
    if IsDisabledControlJustReleased(0, 24) and selectedCoords then
      ClearInterval(selectionInterval)
      LR.hideUI()
      for index = 1, #previewProps, 1 do
        previewProps[index].remove()
      end
      for index = 1, #previewPeds, 1 do
        previewPeds[index].remove()
      end
      local adjustedZ = selectedCoords.z + (hasPedPlacement and shouldApplyModelHeight and 1.0 or -lowestBound)
      return vector4(selectedCoords.x, selectedCoords.y, adjustedZ, currentHeadingOffset)
    end
    if IsDisabledControlJustReleased(0, 14) then
      currentHeadingOffset = currentHeadingOffset + 5.0
    end
    if IsDisabledControlJustReleased(0, 15) then
      currentHeadingOffset = currentHeadingOffset - 5.0
    end
    if selectedCoords then
      if not hasPedPlacement then
        DrawSphere(selectedCoords.x, selectedCoords.y, selectedCoords.z, 0.1, 255, 0, 255, 0.5)
        local lineStart = Utils.offsetCoords(vector4(selectedCoords.x, selectedCoords.y, selectedCoords.z, currentHeadingOffset), 0.0, 0.15, 0.0)
        DrawLine(selectedCoords.x, selectedCoords.y, selectedCoords.z, lineStart.x, lineStart.y, lineStart.z, 255, 100, 255, 0.5)
      else
        for index = 1, #previewProps, 1 do
          local previewEntity = previewProps[index].get()
          local propDefinition = propModels[index]
          local offset = propDefinition.offset
          if previewEntity then
            local baseCoords = vector3(selectedCoords.x, selectedCoords.y, selectedCoords.z + (shouldApplyModelHeight and 1.0 or -lowestBound))
            if offset then
              baseCoords = Utils.offsetCoords(vector4(baseCoords.x, baseCoords.y, baseCoords.z, GetEntityHeading(previewEntity) + (propDefinition.rotation and propDefinition.rotation.z or 0.0)), offset.x or 0, offset.y or 0, offset.z or 0)
            end
            SetEntityCoords(previewEntity, baseCoords.x, baseCoords.y, baseCoords.z)
            SetEntityAlpha(previewEntity, 200, false)
            SetEntityCollision(previewEntity, false, false)
            SetEntityRotation(previewEntity, propDefinition.rotation and propDefinition.rotation.x or 0.0, propDefinition.rotation and propDefinition.rotation.y or 0.0, currentHeadingOffset + (propDefinition.rotation and propDefinition.rotation.z or 0.0))
          end
        end
        for index = 1, #previewPeds, 1 do
          local previewEntity = previewPeds[index].get()
          local pedDefinition = pedModels[index]
          local offset = pedDefinition.offset
          if previewEntity then
            local pedCoords = selectedCoords
            if offset then
              pedCoords = Utils.offsetCoords(vector4(pedCoords.x, pedCoords.y, pedCoords.z, GetEntityHeading(previewEntity)), -(offset.x or 0), -(offset.y or 0), offset.z or 0)
            end
            SetEntityCoords(previewEntity, pedCoords.x, pedCoords.y, pedCoords.z)
            SetEntityAlpha(previewEntity, 200, false)
            SetEntityCollision(previewEntity, false, false)
            SetEntityHeading(previewEntity, currentHeadingOffset + (pedModels[index].heading or 0.0))
          end
        end
      end
    end
    Wait(0)
  end
end
function FormatCoordinate(value)
  return tonumber(string.format("%.4f", value))
end
local bridgeExports = exports.lunar_bridge
local bridgeConfig = bridgeExports.getConfig()
local promptsEnabled = bridgeConfig.Prompts.Enabled
RegisterNUICallback("getCoordsInput", function(data, cb)
  SetNuiFocus(false, false)
  local targetEnabled = data.target
  local forceDisableTarget = data.forceDisableTarget
  local allowHeading = data.is4D
  local pedOptions = data.ped or {}
  local propOptions = data.prop or {}
  local shouldUsePrompt = false == targetEnabled and (#pedOptions > 0 or #propOptions > 0 or promptsEnabled)
  local coords
  if shouldUsePrompt and not forceDisableTarget then
    coords = SelectPlacementPosition(pedOptions, propOptions)
  end
  if not coords then
    coords = SelectCurrentPosition()
  end
  lib.setClipboard(tostring(coords))
  SetNuiFocus(true, true)
  cb({
    x = FormatCoordinate(coords.x),
    y = FormatCoordinate(coords.y),
    z = FormatCoordinate(coords.z),
    w = FormatCoordinate(coords.w)
  })
end)
