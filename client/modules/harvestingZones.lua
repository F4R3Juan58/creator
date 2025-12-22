-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
L1_1 = {}
L2_1 = AddEventHandler
L3_1 = "onResourceStop"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = pairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = SetEntityAsMissionEntity
    L8_2 = L6_2
    L9_2 = false
    L10_2 = true
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = DeleteEntity
    L8_2 = L6_2
    L7_2(L8_2)
  end
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = A0_2
  L1_2 = L4_2.zone
  L2_2 = L4_2.id
  L3_2 = L4_2.locationIndex
  L4_2 = L1_2.requiredItem
  if L4_2 then
    L4_2 = L1_2.requiredItem
    if "" ~= L4_2 then
      L4_2 = Framework
      L4_2 = L4_2.hasItem
      L5_2 = L1_2.requiredItem
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L4_2 = LR
        L4_2 = L4_2.notify
        L5_2 = L1_2.errorMessage
        if not L5_2 then
          L5_2 = locale
          L6_2 = "missing_items"
          L5_2 = L5_2(L6_2)
        end
        L6_2 = "error"
        L4_2(L5_2, L6_2)
        return
      end
    end
  end
  L4_2 = lib
  L4_2 = L4_2.callback
  L4_2 = L4_2.await
  L5_2 = "lunar_drugscreator:harvesting:startHarvesting"
  L6_2 = false
  L7_2 = L2_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    if L5_2 then
      L6_2 = LR
      L6_2 = L6_2.notify
      L7_2 = L5_2
      L8_2 = "error"
      L6_2(L7_2, L8_2)
    end
    return
  end
  L6_2 = GetEntityCoords
  L7_2 = L1_1
  L7_2 = L7_2[L2_2]
  L6_2 = L6_2(L7_2)
  L7_2 = Utils
  L7_2 = L7_2.makeEntityFaceCoords
  L8_2 = cache
  L8_2 = L8_2.ped
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = L1_2.animation
  L7_2 = L7_2.dict
  if not L7_2 then
    L7_2 = L1_2.animation
    L7_2 = L7_2.scenario
    if not L7_2 then
      goto lbl_66
    end
  end
  L7_2 = L1_2.animation
  ::lbl_66::
  if not L7_2 then
    L7_2 = nil
  end
  L8_2 = L1_2.animationProp
  if L8_2 then
    L8_2 = L8_2.model
  end
  if L8_2 then
    L8_2 = IsModelValid
    L9_2 = L1_2.animationProp
    L9_2 = L9_2.model
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = L1_2.animationProp
      if L8_2 then
        goto lbl_83
      end
    end
  end
  L8_2 = nil
  ::lbl_83::
  L9_2 = LR
  L9_2 = L9_2.progressBar
  L10_2 = L1_2.progress
  L11_2 = L1_2.duration
  L12_2 = false
  L13_2 = L7_2
  L14_2 = L8_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
end
L3_1 = {}
L4_1 = 1411212000
L5_1 = vector3
L6_1 = 0.0
L7_1 = 0.0
L8_1 = 0.0
L5_1 = L5_1(L6_1, L7_1, L8_1)
L3_1[L4_1] = L5_1
L4_1 = -1163697832
L5_1 = vector3
L6_1 = 0.0
L7_1 = 0.0
L8_1 = -0.1
L5_1 = L5_1(L6_1, L7_1, L8_1)
L3_1[L4_1] = L5_1
L4_1 = -160828936
L5_1 = vector3
L6_1 = 0.0
L7_1 = 0.0
L8_1 = -0.1
L5_1 = L5_1(L6_1, L7_1, L8_1)
L3_1[L4_1] = L5_1
L4_1 = -2066805056
L5_1 = vector3
L6_1 = 0.0
L7_1 = 0.0
L8_1 = -0.1
L5_1 = L5_1(L6_1, L7_1, L8_1)
L3_1[L4_1] = L5_1
L4_1 = -426716606
L5_1 = vector3
L6_1 = 0.0
L7_1 = 0.0
L8_1 = -0.05
L5_1 = L5_1(L6_1, L7_1, L8_1)
L3_1[L4_1] = L5_1
L4_1 = -1810748086
L5_1 = vector3
L6_1 = 0.0
L7_1 = 0.0
L8_1 = -0.05
L5_1 = L5_1(L6_1, L7_1, L8_1)
L3_1[L4_1] = L5_1
L4_1 = -659638654
L5_1 = vector3
L6_1 = 0.0
L7_1 = 0.0
L8_1 = -0.05
L5_1 = L5_1(L6_1, L7_1, L8_1)
L3_1[L4_1] = L5_1
L4_1 = -962260369
L5_1 = vector3
L6_1 = 0.0
L7_1 = 0.0
L8_1 = -0.05
L5_1 = L5_1(L6_1, L7_1, L8_1)
L3_1[L4_1] = L5_1
L4_1 = -9050489
L5_1 = vector3
L6_1 = 0.0
L7_1 = 0.0
L8_1 = -0.07
L5_1 = L5_1(L6_1, L7_1, L8_1)
L3_1[L4_1] = L5_1
L4_1 = -194056537
L5_1 = vector3
L6_1 = 0.0
L7_1 = 0.0
L8_1 = -0.1
L5_1 = L5_1(L6_1, L7_1, L8_1)
L3_1[L4_1] = L5_1
L4_1 = -1239494205
L5_1 = vector3
L6_1 = 0.0
L7_1 = 0.0
L8_1 = -0.3
L5_1 = L5_1(L6_1, L7_1, L8_1)
L3_1[L4_1] = L5_1
L4_1 = vector3
L5_1 = 0.0
L6_1 = 0.0
L7_1 = 0.0
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.default = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  while true do
    L4_2 = ServerConfig
    if L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 100
    L4_2(L5_2)
  end
  L4_2 = ServerConfig
  L4_2 = L4_2.harvestingZones
  L4_2 = L4_2[A1_2]
  L5_2 = nil
  L6_2 = nil
  L7_2 = L0_1
  L8_2 = lib
  L8_2 = L8_2.points
  L8_2 = L8_2.new
  L9_2 = {}
  L9_2.coords = A0_2
  L9_2.distance = 100.0
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = lib
    L0_3 = L0_3.requestModel
    L1_3 = L4_2.model
    L0_3(L1_3)
    L0_3 = GetGroundZFor_3dCoord
    L1_3 = A0_2.x
    L2_3 = A0_2.y
    L3_3 = A0_2.z
    L4_3 = false
    L0_3, L1_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    L2_3 = 50.0
    while 0.0 == L1_3 do
      L3_3 = 500.0
      if not (L2_3 < L3_3) then
        break
      end
      L2_3 = L2_3 + 50.0
      L3_3 = GetGroundZFor_3dCoord
      L4_3 = A0_2.x
      L5_3 = A0_2.y
      L6_3 = A0_2.z
      L6_3 = L6_3 + L2_3
      L7_3 = false
      L3_3, L4_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
      L1_3 = L4_3
      L0_3 = L3_3
      L3_3 = Wait
      L4_3 = 0
      L3_3(L4_3)
    end
    L3_3 = CreateObjectNoOffset
    L4_3 = L4_2.model
    L5_3 = A0_2.x
    L6_3 = A0_2.y
    L7_3 = L1_3 + 1.0
    L8_3 = false
    L9_3 = false
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L5_2 = L3_3
    L4_3 = A3_2
    L3_3 = L1_1
    L5_3 = L5_2
    L3_3[L4_3] = L5_3
    L3_3 = PlaceObjectOnGroundProperly
    L4_3 = L5_2
    L3_3(L4_3)
    L3_3 = Wait
    L4_3 = 0
    L3_3(L4_3)
    L3_3 = FreezeEntityPosition
    L4_3 = L5_2
    L5_3 = true
    L3_3(L4_3, L5_3)
    L3_3 = SetEntityHeading
    L4_3 = L5_2
    L5_3 = math
    L5_3 = L5_3.random
    L6_3 = 0
    L7_3 = 360
    L5_3 = L5_3(L6_3, L7_3)
    L5_3 = L5_3 + 0.0
    L3_3(L4_3, L5_3)
    L3_3 = SetCanClimbOnEntity
    L4_3 = L5_2
    L5_3 = false
    L3_3(L4_3, L5_3)
    L3_3 = GetEntityModel
    L4_3 = L5_2
    L3_3 = L3_3(L4_3)
    L4_3 = L3_1
    L3_3 = L4_3[L3_3]
    if not L3_3 then
      L3_3 = L3_1.default
    end
    L4_3 = SetEntityCoords
    L5_3 = L5_2
    L6_3 = GetOffsetFromEntityInWorldCoords
    L7_3 = L5_2
    L8_3 = L3_3.x
    L9_3 = L3_3.y
    L10_3 = L3_3.z
    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L4_3 = GetEntityCoords
    L5_3 = L5_2
    L4_3 = L4_3(L5_3)
    L5_3 = L4_2.interactionOffset
    if not L5_3 then
      L5_3 = vector3
      L6_3 = 0.0
      L7_3 = 0.0
      L8_3 = 0.0
      L5_3 = L5_3(L6_3, L7_3, L8_3)
    end
    L6_3 = Utils
    L6_3 = L6_3.createInteractionPoint
    L7_3 = {}
    L8_3 = vector3
    L9_3 = L4_3.x
    L10_3 = L5_3.x
    L9_3 = L9_3 + L10_3
    L10_3 = L4_3.y
    L11_3 = L5_3.y
    L10_3 = L10_3 + L11_3
    L11_3 = L4_3.z
    L12_3 = L5_3.z
    L11_3 = L11_3 + L12_3
    L8_3 = L8_3(L9_3, L10_3, L11_3)
    L7_3.coords = L8_3
    L8_3 = L4_2.radius
    L7_3.radius = L8_3
    L8_3 = {}
    L9_3 = {}
    L10_3 = L4_2.label
    if not L10_3 then
      L10_3 = locale
      L11_3 = "harvest"
      L10_3 = L10_3(L11_3)
    end
    L9_3.label = L10_3
    L10_3 = L4_2.icon
    if not L10_3 then
      L10_3 = "hand"
    end
    L9_3.icon = L10_3
    L10_3 = L2_1
    L9_3.onSelect = L10_3
    L10_3 = {}
    L11_3 = L4_2
    L10_3.zone = L11_3
    L11_3 = A3_2
    L10_3.id = L11_3
    L11_3 = A2_2
    L10_3.locationIndex = L11_3
    L9_3.args = L10_3
    function L10_3()
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
    L9_3.canInteract = L10_3
    L8_3[1] = L9_3
    L7_3.options = L8_3
    L8_3 = L4_2.target
    L6_3 = L6_3(L7_3, L8_3)
    L6_2 = L6_3
  end
  L9_2.onEnter = L10_2
  function L10_2()
    local L0_3, L1_3
    L0_3 = DeleteEntity
    L1_3 = L5_2
    L0_3(L1_3)
    L0_3 = L6_2
    if L0_3 then
      L0_3 = L6_2.remove
      L0_3()
    end
  end
  L9_2.onExit = L10_2
  L8_2 = L8_2(L9_2)
  L7_2[A3_2] = L8_2
end
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:harvesting:spawn"
L7_1 = L4_1
L5_1(L6_1, L7_1)
L5_1 = SetTimeout
L6_1 = 500
function L7_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "lunar_drugscreator:harvesting:getZones"
  L0_2(L1_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:harvesting:initZones"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L4_1
    L8_2 = L6_2.coords
    L9_2 = L6_2.index
    L10_2 = L6_2.locationIndex
    L11_2 = L6_2.id
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:harvesting:remove"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  L2_2 = L1_2
  L1_2 = L1_2.onExit
  L1_2(L2_2)
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  L2_2 = L1_2
  L1_2 = L1_2.remove
  L1_2(L2_2)
  L1_2 = L0_1
  L1_2[A0_2] = nil
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:harvesting:reset"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.onExit
    L6_2(L7_2)
    L7_2 = L5_2
    L6_2 = L5_2.remove
    L6_2(L7_2)
    L6_2 = L0_1
    L6_2[L4_2] = nil
    L6_2 = L1_1
    L6_2[L4_2] = nil
  end
end
L5_1(L6_1, L7_1)
