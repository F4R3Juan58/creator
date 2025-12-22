-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = vector3
L4_1 = 0.0
L5_1 = 0.0
L6_1 = 0.0
L3_1 = L3_1(L4_1, L5_1, L6_1)
L4_1 = 0
RoutingBucket = 0
L5_1 = AddEventHandler
L6_1 = "onResourceStop"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = cache
  L1_2 = L1_2.resource
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = L2_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DeleteEntity
    L8_2 = L6_2
    L7_2(L8_2)
    L7_2 = L2_1
    L7_2[L5_2] = nil
  end
end
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = GetClockHours
  L1_2 = L1_2()
  if not (L1_2 >= 22) then
    L1_2 = GetClockHours
    L1_2 = L1_2()
    if not (L1_2 <= 4) then
      goto lbl_12
    end
  end
  L1_2 = 0.0
  ::lbl_12::
  if not L1_2 then
    L1_2 = 1.0
  end
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A0_2.growth
  L3_2 = L3_2 * 100
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = math
  L4_2 = L4_2.min
  L5_2 = 100.0
  L6_2 = A0_2.sunlight
  L6_2 = L6_2 * L1_2
  L7_2 = A0_2.addedLight
  if not L7_2 then
    L7_2 = 0
  end
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 * 100
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = A0_2.water
  L5_2 = L5_2 * 100
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = A0_2.fertilizer
  L6_2 = L6_2 * 100
  L5_2 = L5_2(L6_2)
  L6_2 = lib
  L6_2 = L6_2.registerContext
  L7_2 = {}
  L7_2.id = "plant_stats"
  L8_2 = locale
  L9_2 = "plant_stats"
  L8_2 = L8_2(L9_2)
  L7_2.title = L8_2
  L8_2 = {}
  L9_2 = {}
  L10_2 = locale
  L11_2 = "growth"
  L12_2 = L2_2
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.title = L10_2
  L9_2.icon = "chart-line"
  L9_2.progress = L2_2
  L9_2.colorScheme = "green"
  L10_2 = {}
  L11_2 = locale
  L12_2 = "sunlight"
  L13_2 = L3_2
  L11_2 = L11_2(L12_2, L13_2)
  L10_2.title = L11_2
  L10_2.icon = "sun"
  L10_2.progress = L3_2
  L10_2.colorScheme = "yellow"
  L11_2 = {}
  L12_2 = locale
  L13_2 = "water"
  L14_2 = L4_2
  L12_2 = L12_2(L13_2, L14_2)
  L11_2.title = L12_2
  L11_2.icon = "droplet"
  L11_2.progress = L4_2
  L11_2.colorScheme = "indigo"
  L12_2 = {}
  L13_2 = locale
  L14_2 = "fertilizer"
  L15_2 = L5_2
  L13_2 = L13_2(L14_2, L15_2)
  L12_2.title = L13_2
  L12_2.icon = "seedling"
  L12_2.progress = L5_2
  L12_2.colorScheme = "orange"
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L7_2.options = L8_2
  L6_2(L7_2)
  L6_2 = lib
  L6_2 = L6_2.showContext
  L7_2 = "plant_stats"
  L6_2(L7_2)
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  while true do
    L2_2 = ServerConfig
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 100
    L2_2(L3_2)
  end
  if not A1_2 then
    L2_2 = L1_1
    L2_2 = L2_2[A0_2]
    if L2_2 then
      L4_2 = L2_2
      L3_2 = L2_2.onExit
      L3_2(L4_2)
      L4_2 = L2_2
      L3_2 = L2_2.remove
      L3_2(L4_2)
      L3_2 = L1_1
      L3_2[A0_2] = nil
    end
    L3_2 = L2_1
    L3_2 = L3_2[A0_2]
    if L3_2 then
      L4_2 = DoesEntityExist
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = DeleteEntity
        L5_2 = L3_2
        L4_2(L5_2)
        L4_2 = L2_1
        L4_2[A0_2] = nil
      end
    end
    L4_2 = L0_1
    L4_2[A0_2] = nil
    return
  end
  L2_2 = L0_1
  L2_2[A0_2] = A1_2
  L2_2 = A1_2.routingBucket
  L3_2 = RoutingBucket
  if L2_2 ~= L3_2 then
    return
  end
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L3_2 = nil
  L4_2 = nil
  L5_2 = L1_1
  L6_2 = lib
  L6_2 = L6_2.points
  L6_2 = L6_2.new
  L7_2 = {}
  L8_2 = A1_2.coords
  L7_2.coords = L8_2
  L7_2.distance = 400.0
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3
    L0_3 = ServerConfig
    L0_3 = L0_3.plants
    L1_3 = A1_2.plantTypeId
    L0_3 = L0_3[L1_3]
    if not L0_3 then
      return
    end
    L1_3 = L0_3.stages
    L1_3 = #L1_3
    L2_3 = 100
    L2_3 = L2_3 / L1_3
    L3_3 = math
    L3_3 = L3_3.min
    L4_3 = math
    L4_3 = L4_3.ceil
    L5_3 = A1_2.growth
    L5_3 = L5_3 * 100
    L5_3 = L5_3 / L2_3
    L4_3 = L4_3(L5_3)
    L5_3 = L1_3
    L3_3 = L3_3(L4_3, L5_3)
    if L3_3 < 1 then
      L3_3 = 1
    end
    L4_3 = L0_3.stages
    L4_3 = L4_3[L3_3]
    L5_3 = lib
    L5_3 = L5_3.requestModel
    L6_3 = L4_3.model
    L5_3(L6_3)
    L5_3 = L2_2
    if L5_3 then
      L5_3 = L2_2
      L6_3 = L5_3
      L5_3 = L5_3.onExit
      L5_3(L6_3)
      L5_3 = L2_2
      L6_3 = L5_3
      L5_3 = L5_3.remove
      L5_3(L6_3)
      L5_3 = nil
      L2_2 = L5_3
    end
    L5_3 = CreateObjectNoOffset
    L6_3 = L4_3.model
    L7_3 = A1_2.coords
    L7_3 = L7_3.x
    L8_3 = A1_2.coords
    L8_3 = L8_3.y
    L9_3 = A1_2.coords
    L9_3 = L9_3.z
    L10_3 = false
    L11_3 = false
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L7_3 = A0_2
    L6_3 = L2_1
    L6_3[L7_3] = L5_3
    L4_2 = L5_3
    L6_3 = FreezeEntityPosition
    L7_3 = L5_3
    L8_3 = true
    L6_3(L7_3, L8_3)
    L6_3 = SetCanClimbOnEntity
    L7_3 = L5_3
    L8_3 = false
    L6_3(L7_3, L8_3)
    L6_3 = A1_2.rotation
    if L6_3 then
      L6_3 = SetEntityRotation
      L7_3 = L5_3
      L8_3 = A1_2.rotation
      L8_3 = L8_3.x
      L9_3 = A1_2.rotation
      L9_3 = L9_3.y
      L10_3 = A1_2.rotation
      L10_3 = L10_3.z
      L11_3 = 2
      L12_3 = true
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    end
    L6_3 = L4_3.offsetZ
    if L6_3 then
      L6_3 = GetOffsetFromEntityInWorldCoords
      L7_3 = L5_3
      L8_3 = 0.0
      L9_3 = 0.0
      L10_3 = L4_3.offsetZ
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
      L7_3 = SetEntityCoordsNoOffset
      L8_3 = L5_3
      L9_3 = L6_3.x
      L10_3 = L6_3.y
      L11_3 = L6_3.z
      L12_3 = false
      L13_3 = false
      L14_3 = false
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
    end
    L6_3 = 0.2
    L7_3 = 0.0
    L8_3 = 0.0
    L9_3 = 0.0
    L10_3 = A1_2.rotation
    if L10_3 then
      L10_3 = math
      L10_3 = L10_3.rad
      L11_3 = A1_2.rotation
      L11_3 = L11_3.x
      L10_3 = L10_3(L11_3)
      L7_3 = L10_3
      L10_3 = math
      L10_3 = L10_3.rad
      L11_3 = A1_2.rotation
      L11_3 = L11_3.y
      L10_3 = L10_3(L11_3)
      L8_3 = L10_3
      L10_3 = math
      L10_3 = L10_3.rad
      L11_3 = A1_2.rotation
      L11_3 = L11_3.z
      L10_3 = L10_3(L11_3)
      L9_3 = L10_3
    end
    L10_3 = math
    L10_3 = L10_3.sin
    L11_3 = L8_3
    L10_3 = L10_3(L11_3)
    L10_3 = L6_3 * L10_3
    L11_3 = -L6_3
    L12_3 = math
    L12_3 = L12_3.sin
    L13_3 = L7_3
    L12_3 = L12_3(L13_3)
    L11_3 = L11_3 * L12_3
    L12_3 = math
    L12_3 = L12_3.cos
    L13_3 = L7_3
    L12_3 = L12_3(L13_3)
    L12_3 = L6_3 * L12_3
    L13_3 = math
    L13_3 = L13_3.cos
    L14_3 = L8_3
    L13_3 = L13_3(L14_3)
    L12_3 = L12_3 * L13_3
    L13_3 = vector3
    L14_3 = A1_2.coords
    L14_3 = L14_3.x
    L14_3 = L14_3 + L10_3
    L15_3 = A1_2.coords
    L15_3 = L15_3.y
    L15_3 = L15_3 + L11_3
    L16_3 = A1_2.coords
    L16_3 = L16_3.z
    L16_3 = L16_3 + L12_3
    L13_3 = L13_3(L14_3, L15_3, L16_3)
    L14_3 = GetModelDimensions
    L15_3 = GetEntityModel
    L16_3 = L5_3
    L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3 = L15_3(L16_3)
    L14_3, L15_3 = L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3)
    L16_3 = L15_3.z
    L17_3 = L14_3.z
    L16_3 = L16_3 - L17_3
    L17_3 = math
    L17_3 = L17_3.abs
    L18_3 = L14_3.z
    L17_3 = L17_3(L18_3)
    L18_3 = math
    L18_3 = L18_3.abs
    L19_3 = L15_3.z
    L18_3 = L18_3(L19_3)
    L19_3 = L18_3 * 0.2
    L19_3 = L17_3 < L19_3
    L20_3 = nil
    if not L19_3 then
      L21_3 = L14_3.z
      L22_3 = L16_3 * 0.75
      L20_3 = L21_3 + L22_3
    else
      L21_3 = L14_3.z
      L22_3 = L16_3 / 2
      L20_3 = L21_3 + L22_3
    end
    L21_3 = GetOffsetFromEntityInWorldCoords
    L22_3 = L5_3
    L23_3 = 0.0
    L24_3 = 0.0
    L25_3 = L20_3
    L21_3 = L21_3(L22_3, L23_3, L24_3, L25_3)
    L22_3 = L21_3.z
    L23_3 = L13_3.z
    if L22_3 > L23_3 then
      L13_3 = L21_3
    end
    L22_3 = Utils
    L22_3 = L22_3.createInteractionPoint
    L23_3 = {}
    L23_3.coords = L13_3
    L23_3.radius = 1.25
    L24_3 = {}
    L25_3 = {}
    L26_3 = locale
    L27_3 = "check_stats"
    L26_3 = L26_3(L27_3)
    L25_3.label = L26_3
    L25_3.icon = "chart-simple"
    function L26_3()
      local L0_4, L1_4
      L0_4 = L5_1
      L1_4 = A1_2
      L0_4(L1_4)
    end
    L25_3.onSelect = L26_3
    function L26_3()
      local L0_4, L1_4, L2_4
      L0_4 = ServerConfig
      L0_4 = L0_4.generalSettings
      L0_4 = L0_4.disableHackingDevice
      if L0_4 then
        L0_4 = LR
        L0_4 = L0_4.progressActive
        L0_4 = L0_4()
        L0_4 = IsPedInAnyVehicle
        L1_4 = cache
        L1_4 = L1_4.ped
        L2_4 = true
        L0_4 = L0_4(L1_4, L2_4)
        L0_4 = not L0_4 and L0_4
      end
      return L0_4
    end
    L25_3.canInteract = L26_3
    L26_3 = {}
    L27_3 = locale
    L28_3 = "harvest"
    L27_3 = L27_3(L28_3)
    L26_3.label = L27_3
    L26_3.icon = "hand"
    function L27_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = LR
      L0_4 = L0_4.progressBar
      L1_4 = locale
      L2_4 = "harvesting"
      L1_4 = L1_4(L2_4)
      L2_4 = ServerConfig
      L2_4 = L2_4.generalSettings
      L2_4 = L2_4.progressDurations
      L2_4 = L2_4.harvesting
      L3_4 = true
      L4_4 = {}
      L4_4.scenario = "WORLD_HUMAN_GARDENER_PLANT"
      L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4)
      if not L0_4 then
        return
      end
      L0_4 = TriggerServerEvent
      L1_4 = "lunar_drugscreator:plants:harvest"
      L2_4 = A0_2
      L0_4(L1_4, L2_4)
    end
    L26_3.onSelect = L27_3
    function L27_3()
      local L0_4, L1_4, L2_4
      L0_4 = LR
      L0_4 = L0_4.progressActive
      L0_4 = L0_4()
      L0_4 = IsPedInAnyVehicle
      L1_4 = cache
      L1_4 = L1_4.ped
      L2_4 = true
      L0_4 = L0_4(L1_4, L2_4)
      L0_4 = not L0_4 and L0_4
      return L0_4
    end
    L26_3.canInteract = L27_3
    L27_3 = {}
    L28_3 = locale
    L29_3 = "water"
    L28_3 = L28_3(L29_3)
    L27_3.label = L28_3
    L27_3.icon = "droplet"
    function L28_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4
      L0_4 = lib
      L0_4 = L0_4.callback
      L0_4 = L0_4.await
      L1_4 = "lunar_drugscreator:plants:canWater"
      L2_4 = 0
      L3_4 = A0_2
      L0_4, L1_4 = L0_4(L1_4, L2_4, L3_4)
      if not L0_4 then
        if L1_4 then
          L2_4 = LR
          L2_4 = L2_4.notify
          L3_4 = L1_4
          L4_4 = "error"
          L2_4(L3_4, L4_4)
        end
        return
      end
      L2_4 = "core"
      L3_4 = lib
      L3_4 = L3_4.requestNamedPtfxAsset
      L4_4 = L2_4
      L3_4(L4_4)
      L3_4 = nil
      L4_4 = nil
      L5_4 = CreateThread
      function L6_4()
        local L0_5, L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5, L9_5, L10_5, L11_5, L12_5, L13_5, L14_5, L15_5, L16_5
        L0_5 = Wait
        L1_5 = 500
        L0_5(L1_5)
        L0_5 = cache
        L0_5 = L0_5.ped
        L1_5 = pairs
        L2_5 = GetGamePool
        L3_5 = "CObject"
        L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5, L9_5, L10_5, L11_5, L12_5, L13_5, L14_5, L15_5, L16_5 = L2_5(L3_5)
        L1_5, L2_5, L3_5, L4_5 = L1_5(L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5, L9_5, L10_5, L11_5, L12_5, L13_5, L14_5, L15_5, L16_5)
        for L5_5, L6_5 in L1_5, L2_5, L3_5, L4_5 do
          L7_5 = GetEntityModel
          L8_5 = L6_5
          L7_5 = L7_5(L8_5)
          if -1644950477 == L7_5 then
            L7_5 = IsEntityAttachedToEntity
            L8_5 = L6_5
            L9_5 = L0_5
            L7_5 = L7_5(L8_5, L9_5)
            if L7_5 then
              L3_4 = L6_5
              break
            end
          end
        end
        L1_5 = L3_4
        if L1_5 then
          L1_5 = DoesEntityExist
          L2_5 = L3_4
          L1_5 = L1_5(L2_5)
          if L1_5 then
            L1_5 = GetEntityBoneIndexByName
            L2_5 = L3_4
            L3_5 = "handle"
            L1_5 = L1_5(L2_5, L3_5)
            L2_5 = vector3
            L3_5 = 0.35
            L4_5 = 0.0
            L5_5 = 0.2
            L2_5 = L2_5(L3_5, L4_5, L5_5)
            L3_5 = UseParticleFxAssetNextCall
            L4_5 = L2_4
            L3_5(L4_5)
            if -1 ~= L1_5 then
              L3_5 = StartParticleFxLoopedOnEntityBone
              L4_5 = "ent_sht_water"
              L5_5 = L3_4
              L6_5 = 0.0
              L7_5 = 0.0
              L8_5 = 0.0
              L9_5 = 0.0
              L10_5 = 90.0
              L11_5 = 0.0
              L12_5 = L1_5
              L13_5 = 0.4
              L14_5 = false
              L15_5 = false
              L16_5 = false
              L3_5 = L3_5(L4_5, L5_5, L6_5, L7_5, L8_5, L9_5, L10_5, L11_5, L12_5, L13_5, L14_5, L15_5, L16_5)
              L4_4 = L3_5
            else
              L3_5 = StartParticleFxLoopedOnEntity
              L4_5 = "ent_sht_water"
              L5_5 = L3_4
              L6_5 = L2_5.x
              L7_5 = L2_5.y
              L8_5 = L2_5.z
              L9_5 = 0.0
              L10_5 = 90.0
              L11_5 = 0.0
              L12_5 = 0.4
              L13_5 = false
              L14_5 = false
              L15_5 = false
              L3_5 = L3_5(L4_5, L5_5, L6_5, L7_5, L8_5, L9_5, L10_5, L11_5, L12_5, L13_5, L14_5, L15_5)
              L4_4 = L3_5
            end
            while true do
              L3_5 = LR
              L3_5 = L3_5.progressActive
              L3_5 = L3_5()
              if not L3_5 then
                break
              end
              L3_5 = Wait
              L4_5 = 100
              L3_5(L4_5)
            end
            L3_5 = L4_4
            if L3_5 then
              L3_5 = StopParticleFxLooped
              L4_5 = L4_4
              L5_5 = false
              L3_5(L4_5, L5_5)
            end
          end
        end
      end
      L5_4(L6_4)
      L5_4 = LR
      L5_4 = L5_4.progressBar
      L6_4 = locale
      L7_4 = "watering"
      L6_4 = L6_4(L7_4)
      L7_4 = ServerConfig
      L7_4 = L7_4.generalSettings
      L7_4 = L7_4.progressDurations
      L7_4 = L7_4.watering
      L8_4 = true
      L9_4 = {}
      L9_4.dict = "weapon@w_sp_jerrycan"
      L9_4.clip = "fire"
      L9_4.flag = 49
      L10_4 = {}
      L10_4.model = -1644950477
      L10_4.bone = 18905
      L11_4 = vector3
      L12_4 = 0.007967272543965
      L13_4 = -0.11596797320617
      L14_4 = 0.3253173756347
      L11_4 = L11_4(L12_4, L13_4, L14_4)
      L10_4.pos = L11_4
      L11_4 = vector3
      L12_4 = -88.105138253607
      L13_4 = 76.645730345228
      L14_4 = -3.3728233734837
      L11_4 = L11_4(L12_4, L13_4, L14_4)
      L10_4.rot = L11_4
      L5_4 = L5_4(L6_4, L7_4, L8_4, L9_4, L10_4)
      if not L5_4 then
        return
      end
      L5_4 = Wait
      L6_4 = 500
      L5_4(L6_4)
    end
    L27_3.onSelect = L28_3
    function L28_3()
      local L0_4, L1_4, L2_4
      L0_4 = A1_2.water
      L0_4 = LR
      L0_4 = L0_4.progressActive
      L0_4 = L0_4()
      L0_4 = IsPedInAnyVehicle
      L1_4 = cache
      L1_4 = L1_4.ped
      L2_4 = true
      L0_4 = L0_4(L1_4, L2_4)
      L0_4 = L0_4 < 1.0 and L0_4
      return L0_4
    end
    L27_3.canInteract = L28_3
    L28_3 = {}
    L29_3 = locale
    L30_3 = "fertilize"
    L29_3 = L29_3(L30_3)
    L28_3.label = L29_3
    L28_3.icon = "seedling"
    function L29_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4
      L0_4 = lib
      L0_4 = L0_4.callback
      L0_4 = L0_4.await
      L1_4 = "lunar_drugscreator:plants:canFertilize"
      L2_4 = 0
      L3_4 = A0_2
      L0_4, L1_4 = L0_4(L1_4, L2_4, L3_4)
      if not L0_4 then
        if L1_4 then
          L2_4 = LR
          L2_4 = L2_4.notify
          L3_4 = L1_4
          L4_4 = "error"
          L2_4(L3_4, L4_4)
        end
        return
      end
      L2_4 = CreateThread
      function L3_4()
        local L0_5, L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5, L9_5, L10_5, L11_5, L12_5, L13_5, L14_5, L15_5, L16_5, L17_5, L18_5
        L0_5 = nil
        while true do
          L1_5 = LR
          L1_5 = L1_5.progressActive
          L1_5 = L1_5()
          if L1_5 then
            break
          end
          L1_5 = Wait
          L2_5 = 100
          L1_5(L2_5)
        end
        L1_5 = LR
        L1_5 = L1_5.progressActive
        L1_5 = L1_5()
        if L1_5 then
          L1_5 = "core"
          L2_5 = lib
          L2_5 = L2_5.requestNamedPtfxAsset
          L3_5 = L1_5
          L2_5(L3_5)
          L2_5 = nil
          L3_5 = nil
          L4_5 = Wait
          L5_5 = 500
          L4_5(L5_5)
          L4_5 = cache
          L4_5 = L4_5.ped
          L5_5 = pairs
          L6_5 = GetGamePool
          L7_5 = "CObject"
          L6_5, L7_5, L8_5, L9_5, L10_5, L11_5, L12_5, L13_5, L14_5, L15_5, L16_5, L17_5, L18_5 = L6_5(L7_5)
          L5_5, L6_5, L7_5, L8_5 = L5_5(L6_5, L7_5, L8_5, L9_5, L10_5, L11_5, L12_5, L13_5, L14_5, L15_5, L16_5, L17_5, L18_5)
          for L9_5, L10_5 in L5_5, L6_5, L7_5, L8_5 do
            L11_5 = GetEntityModel
            L12_5 = L10_5
            L11_5 = L11_5(L12_5)
            if -1595008754 == L11_5 then
              L11_5 = IsEntityAttachedToEntity
              L12_5 = L10_5
              L13_5 = L4_5
              L11_5 = L11_5(L12_5, L13_5)
              if L11_5 then
                L2_5 = L10_5
                break
              end
            end
          end
          if L2_5 then
            L5_5 = DoesEntityExist
            L6_5 = L2_5
            L5_5 = L5_5(L6_5)
            if L5_5 then
              L5_5 = vector3
              L6_5 = 0.0
              L7_5 = 0.1
              L8_5 = -0.1
              L5_5 = L5_5(L6_5, L7_5, L8_5)
              L6_5 = UseParticleFxAssetNextCall
              L7_5 = L1_5
              L6_5(L7_5)
              L6_5 = StartParticleFxLoopedOnEntity
              L7_5 = "veh_downwash_dirt"
              L8_5 = L2_5
              L9_5 = L5_5.x
              L10_5 = L5_5.y
              L11_5 = L5_5.z
              L12_5 = 0.0
              L13_5 = 0.0
              L14_5 = 0.0
              L15_5 = 0.1
              L16_5 = false
              L17_5 = false
              L18_5 = false
              L6_5 = L6_5(L7_5, L8_5, L9_5, L10_5, L11_5, L12_5, L13_5, L14_5, L15_5, L16_5, L17_5, L18_5)
              L3_5 = L6_5
              while true do
                L6_5 = LR
                L6_5 = L6_5.progressActive
                L6_5 = L6_5()
                if not L6_5 then
                  break
                end
                L6_5 = Wait
                L7_5 = 100
                L6_5(L7_5)
              end
              if L3_5 then
                L6_5 = StopParticleFxLooped
                L7_5 = L3_5
                L8_5 = false
                L6_5(L7_5, L8_5)
              end
            end
          end
        end
      end
      L2_4(L3_4)
      L2_4 = LR
      L2_4 = L2_4.progressBar
      L3_4 = locale
      L4_4 = "fertilizing"
      L3_4 = L3_4(L4_4)
      L4_4 = ServerConfig
      L4_4 = L4_4.generalSettings
      L4_4 = L4_4.progressDurations
      L4_4 = L4_4.fertilizing
      L5_4 = true
      L6_4 = {}
      L6_4.dict = "weapon@w_sp_jerrycan"
      L6_4.clip = "fire"
      L6_4.flag = 49
      L7_4 = {}
      L7_4.model = -1595008754
      L7_4.bone = 18905
      L8_4 = vector3
      L9_4 = -0.063527361644447
      L10_4 = 0.1219929484052
      L11_4 = 0.22498309130554
      L8_4 = L8_4(L9_4, L10_4, L11_4)
      L7_4.pos = L8_4
      L8_4 = vector3
      L9_4 = -145.20538032442
      L10_4 = 28.759878479345
      L11_4 = -48.266289475302
      L8_4 = L8_4(L9_4, L10_4, L11_4)
      L7_4.rot = L8_4
      L2_4 = L2_4(L3_4, L4_4, L5_4, L6_4, L7_4)
      if not L2_4 then
        return
      end
      L2_4 = Wait
      L3_4 = 500
      L2_4(L3_4)
    end
    L28_3.onSelect = L29_3
    function L29_3()
      local L0_4, L1_4, L2_4
      L0_4 = A1_2.fertilizer
      L0_4 = LR
      L0_4 = L0_4.progressActive
      L0_4 = L0_4()
      L0_4 = IsPedInAnyVehicle
      L1_4 = cache
      L1_4 = L1_4.ped
      L2_4 = true
      L0_4 = L0_4(L1_4, L2_4)
      L0_4 = L0_4 < 1.0 and L0_4
      return L0_4
    end
    L28_3.canInteract = L29_3
    L24_3[1] = L25_3
    L24_3[2] = L26_3
    L24_3[3] = L27_3
    L24_3[4] = L28_3
    L23_3.options = L24_3
    L24_3 = L0_3.target
    L22_3 = L22_3(L23_3, L24_3)
    L3_2 = L22_3
  end
  L7_2.onEnter = L8_2
  function L8_2()
    local L0_3, L1_3
    L0_3 = L4_2
    if L0_3 then
      L0_3 = DoesEntityExist
      L1_3 = L4_2
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = DeleteEntity
        L1_3 = L4_2
        L0_3(L1_3)
        L1_3 = A0_2
        L0_3 = L2_1
        L0_3 = L0_3[L1_3]
        L1_3 = L4_2
        if L0_3 == L1_3 then
          L1_3 = A0_2
          L0_3 = L2_1
          L0_3[L1_3] = nil
        end
      end
    end
    L0_3 = L3_2
    if L0_3 then
      L0_3 = L3_2.remove
      L0_3()
    end
  end
  L7_2.onExit = L8_2
  L6_2 = L6_2(L7_2)
  L5_2[A0_2] = L6_2
end
L7_1 = SetInterval
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = IsEntityVisible
  L1_2 = cache
  L1_2 = L1_2.ped
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = GetEntityCollisionDisabled
    L1_2 = cache
    L1_2 = L1_2.ped
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      goto lbl_14
    end
  end
  do return end
  ::lbl_14::
  L0_2 = GetEntityCoords
  L1_2 = cache
  L1_2 = L1_2.ped
  L0_2 = L0_2(L1_2)
  L1_2 = L3_1
  L1_2 = L0_2 - L1_2
  L1_2 = #L1_2
  L2_2 = nil
  L3_2 = IsPedInAnyVehicle
  L4_2 = cache
  L4_2 = L4_2.ped
  L5_2 = false
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = GetVehiclePedIsIn
    L4_2 = cache
    L4_2 = L4_2.ped
    L5_2 = false
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = GetVehicleClass
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if 15 == L4_2 or 16 == L4_2 then
      L2_2 = 800.0
    elseif 8 == L4_2 then
      L2_2 = 600.0
    else
      L2_2 = 500.0
    end
  else
    L2_2 = 12.5
  end
  if L1_2 > L2_2 then
    L3_2 = lib
    L3_2 = L3_2.callback
    L3_2 = L3_2.await
    L4_2 = "lunar_drugscreator:plants:getRoutingBucket"
    L5_2 = false
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = RoutingBucket
    if L3_2 ~= L4_2 then
      RoutingBucket = L3_2
      L4_2 = pairs
      L5_2 = L1_1
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        if L9_2 then
          L11_2 = L9_2
          L10_2 = L9_2.onExit
          L10_2(L11_2)
          L11_2 = L9_2
          L10_2 = L9_2.remove
          L10_2(L11_2)
          L10_2 = L1_1
          L10_2[L8_2] = nil
        end
        L10_2 = L2_1
        L10_2 = L10_2[L8_2]
        if L10_2 then
          L11_2 = DoesEntityExist
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          if L11_2 then
            L11_2 = DeleteEntity
            L12_2 = L10_2
            L11_2(L12_2)
            L11_2 = L2_1
            L11_2[L8_2] = nil
          end
        end
      end
      L4_2 = pairs
      L5_2 = L0_1
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = L6_1
        L11_2 = L8_2
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
      end
      L4_2 = LampsRoutingBucketChanged
      L4_2()
      L4_2 = TablesRoutingBucketChanged
      L4_2()
    end
  end
  L3_1 = L0_2
end
L9_1 = 500
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "lunar_drugscreator:plants:receive"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_1 = A0_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_1
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L7_1(L8_1, L9_1)
L7_1 = SetTimeout
L8_1 = 1000
function L9_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "lunar_drugscreator:plants:init"
  L0_2(L1_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "lunar_drugscreator:plants:update"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_1 = A0_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_1
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = "lunar_drugscreator:plants:updateChanged"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L0_1
    L7_2[L5_2] = L6_2
    L7_2 = L6_1
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L7_1(L8_1, L9_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = ServerConfig
  L3_2 = L3_2.plants
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.seedItem
    if L8_2 == A0_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = {}
      L10_2.plantTypeId = L6_2
      L10_2.config = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  return L1_2
end
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "lunar_drugscreator:plants:plant"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2
  L2_2 = L7_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = ServerConfig
  L3_2 = L3_2.plants
  L3_2 = L3_2[A1_2]
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = LR
  L4_2 = L4_2.progressActive
  L4_2 = L4_2()
  if not L4_2 then
    L4_2 = IsPedCuffed
    L5_2 = cache
    L5_2 = L5_2.ped
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = IsPedInAnyVehicle
      L5_2 = cache
      L5_2 = L5_2.ped
      L6_2 = true
      L4_2 = L4_2(L5_2, L6_2)
      if not L4_2 then
        goto lbl_31
      end
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_31::
  L4_2 = GetOffsetFromEntityInWorldCoords
  L5_2 = cache
  L5_2 = L5_2.ped
  L6_2 = 0
  L7_2 = 1.0
  L8_2 = -1.5
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = GetEntityCoords
  L6_2 = cache
  L6_2 = L6_2.ped
  L5_2 = L5_2(L6_2)
  L6_2 = StartShapeTestRay
  L7_2 = L5_2.x
  L8_2 = L5_2.y
  L9_2 = L5_2.z
  L10_2 = L4_2.x
  L11_2 = L4_2.y
  L12_2 = L4_2.z
  L13_2 = 17
  L14_2 = cache
  L14_2 = L14_2.ped
  L15_2 = 7
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2 = GetShapeTestResultEx
  L8_2 = L6_2
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
  L12_2 = 1 == L8_2
  if not L12_2 then
    L13_2 = #L2_2
    L13_2 = L2_2[L13_2]
    if L13_2 then
      L13_2 = L13_2.plantTypeId
    end
    if L13_2 == A1_2 then
      L13_2 = LR
      L13_2 = L13_2.notify
      L14_2 = locale
      L15_2 = "invalid_surface"
      L14_2 = L14_2(L15_2)
      L15_2 = "error"
      L13_2(L14_2, L15_2)
    end
    L13_2 = false
    return L13_2
  end
  function L13_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.z
    L2_3 = 0.7
    L1_3 = L1_3 > L2_3
    return L1_3
  end
  L14_2 = L13_2
  L15_2 = L10_2
  L14_2 = L14_2(L15_2)
  if not L14_2 then
    L14_2 = #L2_2
    L14_2 = L2_2[L14_2]
    if L14_2 then
      L14_2 = L14_2.plantTypeId
    end
    if L14_2 == A1_2 then
      L14_2 = LR
      L14_2 = L14_2.notify
      L15_2 = locale
      L16_2 = "terrain_too_steep"
      L15_2 = L15_2(L16_2)
      L16_2 = "error"
      L14_2(L15_2, L16_2)
    end
    L14_2 = false
    return L14_2
  end
  L14_2 = {}
  L15_2 = 2409420175
  L14_2[L15_2] = true
  L15_2 = 3008270349
  L14_2[L15_2] = true
  L15_2 = 3833216577
  L14_2[L15_2] = true
  L15_2 = 223086562
  L14_2[L15_2] = true
  L15_2 = 1333033863
  L14_2[L15_2] = true
  L15_2 = 4170197704
  L14_2[L15_2] = true
  L15_2 = 3594309083
  L14_2[L15_2] = true
  L15_2 = 2461440131
  L14_2[L15_2] = true
  L15_2 = 1109728704
  L14_2[L15_2] = true
  L15_2 = 2352068586
  L14_2[L15_2] = true
  L15_2 = 1144315879
  L14_2[L15_2] = true
  L15_2 = 581794674
  L14_2[L15_2] = true
  L15_2 = 2128369009
  L14_2[L15_2] = true
  L15_2 = -461750719
  L14_2[L15_2] = true
  L15_2 = -1286696947
  L14_2[L15_2] = true
  L15_2 = L3_2.grassOnly
  if L15_2 then
    L15_2 = L14_2[L11_2]
    if not L15_2 then
      L15_2 = #L2_2
      L15_2 = L2_2[L15_2]
      if L15_2 then
        L15_2 = L15_2.plantTypeId
      end
      if L15_2 == A1_2 then
        L15_2 = LR
        L15_2 = L15_2.notify
        L16_2 = locale
        L17_2 = "grass_only"
        L16_2 = L16_2(L17_2)
        L17_2 = "error"
        L15_2(L16_2, L17_2)
      end
      L15_2 = false
      return L15_2
    end
  end
  L15_2 = pairs
  L16_2 = L0_1
  L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
  for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
    L21_2 = L20_2.coords
    L22_2 = Utils
    L22_2 = L22_2.distanceCheck
    L23_2 = L4_2
    L24_2 = L21_2
    L25_2 = L3_2.blockRadius
    L22_2 = L22_2(L23_2, L24_2, L25_2)
    if L22_2 then
      L22_2 = #L2_2
      L22_2 = L2_2[L22_2]
      if L22_2 then
        L22_2 = L22_2.plantTypeId
      end
      if L22_2 == A1_2 then
        L22_2 = LR
        L22_2 = L22_2.notify
        L23_2 = locale
        L24_2 = "plant_too_close"
        L23_2 = L23_2(L24_2)
        L24_2 = "error"
        L22_2(L23_2, L24_2)
      end
      L22_2 = false
      return L22_2
    end
  end
  L15_2 = LR
  L15_2 = L15_2.progressBar
  L16_2 = locale
  L17_2 = "planting"
  L16_2 = L16_2(L17_2)
  L17_2 = L3_2.progressDuration
  L18_2 = true
  L19_2 = {}
  L19_2.scenario = "WORLD_HUMAN_GARDENER_PLANT"
  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
  if not L15_2 then
    L15_2 = false
    return L15_2
  end
  L15_2 = CreateObject
  L16_2 = L3_2.stages
  L16_2 = L16_2[1]
  L16_2 = L16_2.model
  L17_2 = L4_2.x
  L18_2 = L4_2.y
  L19_2 = L4_2.z
  L20_2 = false
  L21_2 = true
  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L16_2 = SetEntityVisible
  L17_2 = L15_2
  L18_2 = false
  L19_2 = false
  L16_2(L17_2, L18_2, L19_2)
  L16_2 = RequestCollisionAtCoord
  L17_2 = L4_2.x
  L18_2 = L4_2.y
  L19_2 = L4_2.z
  L16_2(L17_2, L18_2, L19_2)
  while true do
    L16_2 = HasCollisionLoadedAroundEntity
    L17_2 = L15_2
    L16_2 = L16_2(L17_2)
    if L16_2 then
      break
    end
    L16_2 = RequestCollisionAtCoord
    L17_2 = L4_2.x
    L18_2 = L4_2.y
    L19_2 = L4_2.z
    L16_2(L17_2, L18_2, L19_2)
    L16_2 = Wait
    L17_2 = 0
    L16_2(L17_2)
  end
  L16_2 = PlaceObjectOnGroundProperly
  L17_2 = L15_2
  L16_2(L17_2)
  L16_2 = Wait
  L17_2 = 10
  L16_2(L17_2)
  L16_2 = GetEntityCoords
  L17_2 = L15_2
  L16_2 = L16_2(L17_2)
  L17_2 = GetEntityRotation
  L18_2 = L15_2
  L19_2 = 2
  L17_2 = L17_2(L18_2, L19_2)
  L18_2 = DeleteEntity
  L19_2 = L15_2
  L18_2(L19_2)
  L18_2 = GetZoneAtCoords
  L19_2 = L16_2.x
  L20_2 = L16_2.y
  L21_2 = L16_2.z
  L18_2 = L18_2(L19_2, L20_2, L21_2)
  L19_2 = 0.85
  L20_2 = {}
  L21_2 = -1599626598
  L20_2[L21_2] = 0.5
  L21_2 = 217609618
  L20_2[L21_2] = 0.55
  L21_2 = -726383499
  L20_2[L21_2] = 0.6
  L21_2 = 2124916078
  L20_2[L21_2] = 0.65
  L21_2 = 96430881
  L20_2[L21_2] = 0.6
  L21_2 = 1856487421
  L20_2[L21_2] = 0.7
  L21_2 = -1546516250
  L20_2[L21_2] = 0.75
  L21_2 = 166634372
  L20_2[L21_2] = 0.7
  L21_2 = -996066219
  L20_2[L21_2] = 0.75
  L21_2 = -282295942
  L20_2[L21_2] = 0.7
  L21_2 = -1742071187
  L20_2[L21_2] = 0.75
  L21_2 = -269010440
  L20_2[L21_2] = 0.8
  L21_2 = 635563000
  L20_2[L21_2] = 0.85
  L21_2 = -1330490651
  L20_2[L21_2] = 0.8
  L21_2 = 775971358
  L20_2[L21_2] = 0.85
  L21_2 = 857755945
  L20_2[L21_2] = 0.8
  L21_2 = 991407252
  L20_2[L21_2] = 0.9
  L21_2 = 165497857
  L20_2[L21_2] = 0.95
  L21_2 = 2010282870
  L20_2[L21_2] = 1.0
  L21_2 = 1593576848
  L20_2[L21_2] = 0.95
  L21_2 = -866369392
  L20_2[L21_2] = 0.9
  L21_2 = -571439372
  L20_2[L21_2] = 0.95
  L21_2 = 1101979391
  L20_2[L21_2] = 0.9
  L21_2 = 1359796162
  L20_2[L21_2] = 1.0
  L21_2 = 1479267379
  L20_2[L21_2] = 1.0
  L21_2 = -987244304
  L20_2[L21_2] = 0.95
  L21_2 = L20_2[L18_2]
  L19_2 = L21_2 or L19_2
  if not L21_2 then
  end
  L21_2 = math
  L21_2 = L21_2.max
  L22_2 = 0.5
  L23_2 = math
  L23_2 = L23_2.min
  L24_2 = 1.0
  L25_2 = math
  L25_2 = L25_2.random
  L25_2 = L25_2()
  L25_2 = L25_2 * 0.1
  L25_2 = L25_2 - 0.05
  L25_2 = L19_2 + L25_2
  L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2 = L23_2(L24_2, L25_2)
  L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
  L19_2 = L21_2
  L21_2 = L16_2
  L22_2 = vector3
  L23_2 = L21_2.x
  L24_2 = L21_2.y
  L25_2 = L21_2.z
  L25_2 = L25_2 + 50.0
  L22_2 = L22_2(L23_2, L24_2, L25_2)
  L23_2 = StartShapeTestRay
  L24_2 = L21_2.x
  L25_2 = L21_2.y
  L26_2 = L21_2.z
  L27_2 = L22_2.x
  L28_2 = L22_2.y
  L29_2 = L22_2.z
  L30_2 = 273
  L31_2 = 0
  L32_2 = 0
  L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
  L24_2 = GetShapeTestResult
  L25_2 = L23_2
  L24_2, L25_2, L26_2, L27_2, L28_2 = L24_2(L25_2)
  L29_2 = 1.0
  if 1 == L25_2 then
    L30_2 = L21_2 - L26_2
    L30_2 = #L30_2
    if L30_2 < 5.0 then
      L29_2 = 0.0
    else
      L31_2 = math
      L31_2 = L31_2.min
      L32_2 = L30_2 / 50.0
      L33_2 = 1.0
      L31_2 = L31_2(L32_2, L33_2)
      L29_2 = L31_2
    end
  end
  L30_2 = math
  L30_2 = L30_2.max
  L31_2 = 0.0
  L32_2 = math
  L32_2 = L32_2.min
  L33_2 = 1.0
  L34_2 = L19_2 * L29_2
  L32_2, L33_2, L34_2 = L32_2(L33_2, L34_2)
  L30_2 = L30_2(L31_2, L32_2, L33_2, L34_2)
  L31_2 = true
  L32_2 = L16_2
  L33_2 = L17_2
  L34_2 = L30_2
  return L31_2, L32_2, L33_2, L34_2
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "lunar_drugscreator:plants:updatePlant"
L10_1 = L6_1
L8_1(L9_1, L10_1)
L8_1 = CreateThread
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = nil
  L1_2 = nil
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = L0_2
    if L2_3 then
      L2_3 = SendDuiMessage
      L3_3 = L0_2
      L4_3 = json
      L4_3 = L4_3.encode
      L5_3 = {}
      L5_3.action = A0_3
      L5_3.data = A1_3
      L4_3, L5_3 = L4_3(L5_3)
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = true
      return L2_3
    end
    L2_3 = false
    return L2_3
  end
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = CreateDui
    L1_3 = "https://cfx-nui-%s/web/dist/index.html"
    L2_3 = L1_3
    L1_3 = L1_3.format
    L3_3 = cache
    L3_3 = L3_3.resource
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = 500
    L3_3 = 750
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L0_2 = L0_3
    L0_3 = GetDuiHandle
    L1_3 = L0_2
    L0_3 = L0_3(L1_3)
    L1_3 = CreateRuntimeTxd
    L2_3 = "hackingDeviceTxd"
    L1_3 = L1_3(L2_3)
    L2_3 = CreateRuntimeTextureFromDuiHandle
    L3_3 = L1_3
    L4_3 = "hackingDeviceTexture"
    L5_3 = L0_3
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L1_2 = L2_3
    L2_3 = SetTimeout
    L3_3 = 2000
    function L4_3()
      local L0_4, L1_4
      L0_4 = L2_2
      L1_4 = "initDui"
      L0_4(L1_4)
    end
    L2_3(L3_3, L4_3)
    L2_3 = L0_2
    L2_3 = nil ~= L2_3
    return L2_3
  end
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3
    L1_3 = GetGameplayCamCoord
    L1_3 = L1_3()
    L2_3 = GetGameplayCamRot
    L3_3 = 2
    L2_3 = L2_3(L3_3)
    L3_3 = {}
    L4_3 = math
    L4_3 = L4_3.rad
    L5_3 = L2_3.x
    L4_3 = L4_3(L5_3)
    L3_3.x = L4_3
    L4_3 = math
    L4_3 = L4_3.rad
    L5_3 = L2_3.y
    L4_3 = L4_3(L5_3)
    L3_3.y = L4_3
    L4_3 = math
    L4_3 = L4_3.rad
    L5_3 = L2_3.z
    L4_3 = L4_3(L5_3)
    L3_3.z = L4_3
    L4_3 = vector3
    L5_3 = math
    L5_3 = L5_3.sin
    L6_3 = L3_3.z
    L5_3 = L5_3(L6_3)
    L5_3 = -L5_3
    L6_3 = math
    L6_3 = L6_3.abs
    L7_3 = math
    L7_3 = L7_3.cos
    L8_3 = L3_3.x
    L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L7_3(L8_3)
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
    L5_3 = L5_3 * L6_3
    L6_3 = math
    L6_3 = L6_3.cos
    L7_3 = L3_3.z
    L6_3 = L6_3(L7_3)
    L7_3 = math
    L7_3 = L7_3.abs
    L8_3 = math
    L8_3 = L8_3.cos
    L9_3 = L3_3.x
    L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L8_3(L9_3)
    L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
    L6_3 = L6_3 * L7_3
    L7_3 = math
    L7_3 = L7_3.sin
    L8_3 = L3_3.x
    L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L7_3(L8_3)
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
    L5_3 = vector3
    L6_3 = L1_3.x
    L7_3 = L4_3.x
    L7_3 = L7_3 * A0_3
    L6_3 = L6_3 + L7_3
    L7_3 = L1_3.y
    L8_3 = L4_3.y
    L8_3 = L8_3 * A0_3
    L7_3 = L7_3 + L8_3
    L8_3 = L1_3.z
    L9_3 = L4_3.z
    L9_3 = L9_3 * A0_3
    L8_3 = L8_3 + L9_3
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L6_3 = StartShapeTestRay
    L7_3 = L1_3.x
    L8_3 = L1_3.y
    L9_3 = L1_3.z
    L10_3 = L5_3.x
    L11_3 = L5_3.y
    L12_3 = L5_3.z
    L13_3 = -1
    L14_3 = cache
    L14_3 = L14_3.ped
    L15_3 = 0
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
    L7_3 = GetShapeTestResult
    L8_3 = L6_3
    L7_3, L8_3, L9_3, L10_3, L11_3 = L7_3(L8_3)
    L12_3 = nil
    L13_3 = 1.0
    if L8_3 and L11_3 then
      L14_3 = DoesEntityExist
      L15_3 = L11_3
      L14_3 = L14_3(L15_3)
      if L14_3 then
        L14_3 = pairs
        L15_3 = L2_1
        L14_3, L15_3, L16_3, L17_3 = L14_3(L15_3)
        for L18_3, L19_3 in L14_3, L15_3, L16_3, L17_3 do
          if L19_3 == L11_3 then
            L20_3 = L0_1
            L20_3 = L20_3[L18_3]
            if L20_3 then
              L20_3 = Utils
              L20_3 = L20_3.distanceCheck
              L21_3 = cache
              L21_3 = L21_3.ped
              L22_3 = L0_1
              L22_3 = L22_3[L18_3]
              L22_3 = L22_3.coords
              L23_3 = 1.5
              L20_3 = L20_3(L21_3, L22_3, L23_3)
              if L20_3 then
                L12_3 = L18_3
                break
              end
            end
          end
        end
      end
    end
    if not L12_3 then
      if L8_3 then
        L14_3 = pairs
        L15_3 = L0_1
        L14_3, L15_3, L16_3, L17_3 = L14_3(L15_3)
        for L18_3, L19_3 in L14_3, L15_3, L16_3, L17_3 do
          L20_3 = L19_3.coords
          L20_3 = L9_3 - L20_3
          L20_3 = #L20_3
          if L13_3 > L20_3 then
            L21_3 = Utils
            L21_3 = L21_3.distanceCheck
            L22_3 = cache
            L22_3 = L22_3.ped
            L23_3 = L19_3.coords
            L24_3 = 1.5
            L21_3 = L21_3(L22_3, L23_3, L24_3)
            if L21_3 then
              L13_3 = L20_3
              L12_3 = L18_3
            end
          end
        end
      end
      if not L12_3 then
        L14_3 = GetEntityCoords
        L15_3 = cache
        L15_3 = L15_3.ped
        L14_3 = L14_3(L15_3)
        L15_3 = GetEntityHeading
        L16_3 = cache
        L16_3 = L16_3.ped
        L15_3 = L15_3(L16_3)
        L16_3 = vector3
        L17_3 = math
        L17_3 = L17_3.sin
        L18_3 = math
        L18_3 = L18_3.rad
        L19_3 = L15_3
        L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L18_3(L19_3)
        L17_3 = L17_3(L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
        L17_3 = -L17_3
        L18_3 = math
        L18_3 = L18_3.cos
        L19_3 = math
        L19_3 = L19_3.rad
        L20_3 = L15_3
        L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3 = L19_3(L20_3)
        L18_3 = L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3)
        L19_3 = 0.0
        L16_3 = L16_3(L17_3, L18_3, L19_3)
        L17_3 = 2.0
        L18_3 = pairs
        L19_3 = L0_1
        L18_3, L19_3, L20_3, L21_3 = L18_3(L19_3)
        for L22_3, L23_3 in L18_3, L19_3, L20_3, L21_3 do
          L24_3 = L23_3.coords
          L24_3 = L14_3 - L24_3
          L24_3 = #L24_3
          if L17_3 > L24_3 then
            L25_3 = vector3
            L26_3 = L23_3.coords
            L26_3 = L26_3.x
            L27_3 = L14_3.x
            L26_3 = L26_3 - L27_3
            L27_3 = L23_3.coords
            L27_3 = L27_3.y
            L28_3 = L14_3.y
            L27_3 = L27_3 - L28_3
            L28_3 = 0.0
            L25_3 = L25_3(L26_3, L27_3, L28_3)
            L26_3 = #L25_3
            L25_3 = L25_3 / L26_3
            L26_3 = L16_3.x
            L27_3 = L25_3.x
            L26_3 = L26_3 * L27_3
            L27_3 = L16_3.y
            L28_3 = L25_3.y
            L27_3 = L27_3 * L28_3
            L26_3 = L26_3 + L27_3
            L27_3 = 0.866
            if L26_3 > L27_3 then
              L12_3 = L22_3
              L13_3 = L24_3
              break
            end
          end
        end
      end
    end
    L14_3 = L12_3
    L15_3 = L0_1
    L15_3 = L15_3[L12_3]
    L16_3 = L13_3
    return L14_3, L15_3, L16_3
  end
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = GetWeapontypeModel
    L1_3 = 485882440
    L0_3 = L0_3(L1_3)
    L1_3 = IsNamedRendertargetRegistered
    L2_3 = "W_AM_HackDevice_M32"
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L1_3 = RegisterNamedRendertarget
      L2_3 = "W_AM_HackDevice_M32"
      L3_3 = false
      L1_3(L2_3, L3_3)
    end
    L1_3 = LinkNamedRendertarget
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = L3_2
    L1_3 = L1_3()
    if not L1_3 then
      L1_3 = print
      L2_3 = "Failed to create DUI"
      L1_3(L2_3)
      return
    end
    while true do
      L1_3 = ServerConfig
      if L1_3 then
        break
      end
      L1_3 = Wait
      L2_3 = 100
      L1_3(L2_3)
    end
    L1_3 = CreateThread
    function L2_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4
      L0_4 = false
      L1_4 = nil
      while true do
        L2_4 = L0_2
        if not L2_4 then
          break
        end
        L2_4 = ServerConfig
        L2_4 = L2_4.generalSettings
        L2_4 = L2_4.disableHackingDevice
        if not L2_4 then
          L2_4 = GetSelectedPedWeapon
          L3_4 = cache
          L3_4 = L3_4.ped
          L2_4 = L2_4(L3_4)
          if 485882440 == L2_4 then
            L2_4 = IsPlayerFreeAiming
            L3_4 = cache
            L3_4 = L3_4.playerId
            L2_4 = L2_4(L3_4)
            if not L2_4 then
              L2_4 = GetFollowPedCamViewMode
              L2_4 = L2_4()
              L2_4 = GetPedConfigFlag
              L3_4 = cache
              L3_4 = L3_4.ped
              L4_4 = 78
              L2_4 = 4 == L2_4 or L2_4
            end
            if L2_4 then
              L3_4 = L4_2
              L4_4 = 5.0
              L3_4, L4_4 = L3_4(L4_4)
              if L3_4 and L4_4 then
                L5_4 = GetClockHours
                L5_4 = L5_4()
                if not (L5_4 >= 22) then
                  L5_4 = GetClockHours
                  L5_4 = L5_4()
                  if not (L5_4 <= 4) then
                    goto lbl_55
                  end
                end
                L5_4 = 0.0
                ::lbl_55::
                if not L5_4 then
                  L5_4 = 1.0
                end
                L6_4 = math
                L6_4 = L6_4.floor
                L7_4 = L4_4.growth
                L7_4 = L7_4 * 100
                L6_4 = L6_4(L7_4)
                L7_4 = math
                L7_4 = L7_4.floor
                L8_4 = math
                L8_4 = L8_4.min
                L9_4 = 100.0
                L10_4 = L4_4.sunlight
                L10_4 = L10_4 * L5_4
                L11_4 = L4_4.addedLight
                if not L11_4 then
                  L11_4 = 0
                end
                L10_4 = L10_4 + L11_4
                L10_4 = L10_4 * 100
                L8_4, L9_4, L10_4, L11_4, L12_4, L13_4 = L8_4(L9_4, L10_4)
                L7_4 = L7_4(L8_4, L9_4, L10_4, L11_4, L12_4, L13_4)
                L8_4 = math
                L8_4 = L8_4.floor
                L9_4 = L4_4.water
                L9_4 = L9_4 * 100
                L8_4 = L8_4(L9_4)
                L9_4 = math
                L9_4 = L9_4.floor
                L10_4 = L4_4.fertilizer
                L10_4 = L10_4 * 100
                L9_4 = L9_4(L10_4)
                if not L0_4 or L1_4 ~= L3_4 then
                  if L1_4 then
                    L10_4 = L2_2
                    L11_4 = "updatePlant"
                    L12_4 = nil
                    L10_4(L11_4, L12_4)
                    L10_4 = Wait
                    L11_4 = 750
                    L10_4(L11_4)
                  end
                  L10_4 = L2_2
                  L11_4 = "updatePlant"
                  L12_4 = {}
                  L13_4 = {}
                  L13_4.growth = L6_4
                  L13_4.sunlight = L7_4
                  L13_4.water = L8_4
                  L13_4.fertilizer = L9_4
                  L12_4.stats = L13_4
                  L10_4(L11_4, L12_4)
                  L10_4 = Wait
                  L11_4 = 300
                  L10_4(L11_4)
                  L0_4 = true
                  L1_4 = L3_4
                end
              elseif L0_4 then
                L5_4 = L2_2
                L6_4 = "updatePlant"
                L7_4 = nil
                L5_4(L6_4, L7_4)
                L5_4 = Wait
                L6_4 = 300
                L5_4(L6_4)
                L0_4 = false
                L1_4 = nil
              end
            elseif L0_4 then
              L3_4 = L2_2
              L4_4 = "updatePlant"
              L5_4 = nil
              L3_4(L4_4, L5_4)
              L0_4 = false
              L1_4 = nil
            end
        end
        else
          if L0_4 then
            L2_4 = L2_2
            L3_4 = "updatePlant"
            L4_4 = nil
            L2_4(L3_4, L4_4)
            L0_4 = false
            L1_4 = nil
          end
          L2_4 = Wait
          L3_4 = 500
          L2_4(L3_4)
        end
        L2_4 = Wait
        L3_4 = 200
        L2_4(L3_4)
      end
    end
    L1_3(L2_3)
    L1_3 = CreateThread
    function L2_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
      L0_4 = GetNamedRendertargetRenderId
      L1_4 = "W_AM_HackDevice_M32"
      L0_4 = L0_4(L1_4)
      while true do
        L1_4 = ServerConfig
        if L1_4 then
          break
        end
        L1_4 = Wait
        L2_4 = 100
        L1_4(L2_4)
      end
      while true do
        L1_4 = L0_2
        if not L1_4 then
          break
        end
        L1_4 = ServerConfig
        L1_4 = L1_4.generalSettings
        L1_4 = L1_4.disableHackingDevice
        if not L1_4 then
          L1_4 = GetSelectedPedWeapon
          L2_4 = cache
          L2_4 = L2_4.ped
          L1_4 = L1_4(L2_4)
          if 485882440 == L1_4 then
            L1_4 = SetTextRenderId
            L2_4 = L0_4
            L1_4(L2_4)
            L1_4 = DrawSprite
            L2_4 = "hackingDeviceTxd"
            L3_4 = "hackingDeviceTexture"
            L4_4 = 0.5
            L5_4 = 0.5
            L6_4 = 1.4
            L7_4 = 1.4
            L8_4 = 0.0
            L9_4 = 255
            L10_4 = 255
            L11_4 = 255
            L12_4 = 255
            L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
            L1_4 = SetTextRenderId
            L2_4 = 1
            L1_4(L2_4)
        end
        else
          L1_4 = Wait
          L2_4 = 500
          L1_4(L2_4)
        end
        L1_4 = Wait
        L2_4 = 0
        L1_4(L2_4)
      end
    end
    L1_3(L2_3)
  end
  L6_2 = L5_2
  L6_2()
end
L8_1(L9_1)
