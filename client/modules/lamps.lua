-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = AddEventHandler
L4_1 = "onResourceStop"
function L5_1(A0_2)
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
L3_1(L4_1, L5_1)
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
  L4_2 = L1_1
  L5_2 = lib
  L5_2 = L5_2.points
  L5_2 = L5_2.new
  L6_2 = {}
  L7_2 = A1_2.coords
  L6_2.coords = L7_2
  L6_2.distance = 400.0
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = nil
    L1_3 = 1
    L2_3 = ServerConfig
    L2_3 = L2_3.lamps
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = ServerConfig
      L5_3 = L5_3.lamps
      L5_3 = L5_3[L4_3]
      L5_3 = L5_3.model
      L6_3 = A1_2.model
      if L5_3 == L6_3 then
        L5_3 = ServerConfig
        L5_3 = L5_3.lamps
        L0_3 = L5_3[L4_3]
        break
      end
    end
    if not L0_3 then
      return
    end
    L1_3 = lib
    L1_3 = L1_3.requestModel
    L2_3 = A1_2.model
    L1_3(L2_3)
    L1_3 = L2_2
    if L1_3 then
      L1_3 = L2_2
      L2_3 = L1_3
      L1_3 = L1_3.onExit
      L1_3(L2_3)
      L1_3 = L2_2
      L2_3 = L1_3
      L1_3 = L1_3.remove
      L1_3(L2_3)
      L1_3 = DeleteEntity
      L3_3 = A0_2
      L2_3 = L2_1
      L2_3 = L2_3[L3_3]
      L1_3(L2_3)
    end
    L1_3 = CreateObjectNoOffset
    L2_3 = A1_2.model
    L3_3 = A1_2.coords
    L3_3 = L3_3.x
    L4_3 = A1_2.coords
    L4_3 = L4_3.y
    L5_3 = A1_2.coords
    L5_3 = L5_3.z
    L6_3 = false
    L7_3 = false
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    L3_3 = A0_2
    L2_3 = L2_1
    L2_3[L3_3] = L1_3
    L2_3 = FreezeEntityPosition
    L3_3 = L1_3
    L4_3 = true
    L2_3(L3_3, L4_3)
    L2_3 = A1_2.rotation
    if L2_3 then
      L2_3 = SetEntityRotation
      L3_3 = L1_3
      L4_3 = A1_2.rotation
      L4_3 = L4_3.x
      L5_3 = A1_2.rotation
      L5_3 = L5_3.y
      L6_3 = A1_2.rotation
      L6_3 = L6_3.z
      L7_3 = 2
      L8_3 = true
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    end
    L2_3 = GetModelDimensions
    L3_3 = GetEntityModel
    L4_3 = L1_3
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L3_3(L4_3)
    L2_3, L3_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L4_3 = L3_3.z
    L5_3 = L2_3.z
    L4_3 = L4_3 - L5_3
    L5_3 = L2_3.z
    L6_3 = L4_3 / 2
    L5_3 = L5_3 + L6_3
    L6_3 = GetOffsetFromEntityInWorldCoords
    L7_3 = L1_3
    L8_3 = 0.0
    L9_3 = 0.0
    L10_3 = L5_3
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
    L7_3 = Utils
    L7_3 = L7_3.createInteractionPoint
    L8_3 = {}
    L8_3.coords = L6_3
    L8_3.radius = 1.25
    L9_3 = {}
    L10_3 = {}
    L11_3 = locale
    L12_3 = "take_light"
    L11_3 = L11_3(L12_3)
    L10_3.label = L11_3
    L10_3.icon = "hand"
    function L11_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = Utils
      L0_4 = L0_4.makeEntityFaceCoords
      L1_4 = cache
      L1_4 = L1_4.ped
      L2_4 = A1_2.coords
      L0_4(L1_4, L2_4)
      L0_4 = LR
      L0_4 = L0_4.progressBar
      L1_4 = locale
      L2_4 = "taking_light"
      L1_4 = L1_4(L2_4)
      L2_4 = 3000
      L3_4 = true
      L4_4 = {}
      L4_4.dict = "mini@repair"
      L4_4.clip = "fixing_a_ped"
      L4_4.flag = 49
      L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4)
      if not L0_4 then
        return
      end
      L0_4 = TriggerServerEvent
      L1_4 = "lunar_drugscreator:lamps:take"
      L2_4 = A0_2
      L0_4(L1_4, L2_4)
    end
    L10_3.onSelect = L11_3
    function L11_3()
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
    L10_3.canInteract = L11_3
    L9_3[1] = L10_3
    L8_3.options = L9_3
    L9_3 = L0_3.target
    L7_3 = L7_3(L8_3, L9_3)
    L3_2 = L7_3
  end
  L6_2.onEnter = L7_2
  function L7_2()
    local L0_3, L1_3, L2_3
    L1_3 = A0_2
    L0_3 = L2_1
    L0_3 = L0_3[L1_3]
    if L0_3 then
      L1_3 = DoesEntityExist
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = DeleteEntity
        L2_3 = L0_3
        L1_3(L2_3)
        L2_3 = A0_2
        L1_3 = L2_1
        L1_3[L2_3] = nil
      end
    end
    L1_3 = L3_2
    if L1_3 then
      L1_3 = L3_2.remove
      L1_3()
    end
  end
  L6_2.onExit = L7_2
  L5_2 = L5_2(L6_2)
  L4_2[A0_2] = L5_2
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    if L5_2 then
      L7_2 = L5_2
      L6_2 = L5_2.onExit
      L6_2(L7_2)
      L7_2 = L5_2
      L6_2 = L5_2.remove
      L6_2(L7_2)
      L6_2 = L1_1
      L6_2[L4_2] = nil
    end
    L6_2 = L2_1
    L6_2 = L6_2[L4_2]
    if L6_2 then
      L7_2 = DoesEntityExist
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = DeleteEntity
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = L2_1
        L7_2[L4_2] = nil
      end
    end
  end
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L3_1
    L7_2 = L4_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
LampsRoutingBucketChanged = L4_1
L4_1 = SetTimeout
L5_1 = 1000
function L6_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "lunar_drugscreator:lamps:init"
  L0_2(L1_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "lunar_drugscreator:lamps:update"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_1 = A0_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L3_1
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "lunar_drugscreator:lamps:addLamp"
L6_1 = L3_1
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "lunar_drugscreator:lamps:remove"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L2_2 = A0_2
  L3_2 = nil
  L1_2(L2_2, L3_2)
end
L4_1(L5_1, L6_1)
L4_1 = lib
L4_1 = L4_1.callback
L4_1 = L4_1.register
L5_1 = "lunar_drugscreator:lamps:place"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = LR
  L1_2 = L1_2.progressActive
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = IsPedCuffed
    L2_2 = cache
    L2_2 = L2_2.ped
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = IsPedInAnyVehicle
      L2_2 = cache
      L2_2 = L2_2.ped
      L3_2 = true
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        goto lbl_21
      end
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_21::
  L1_2 = CreateObject
  L2_2 = A0_2
  L3_2 = 0.0
  L4_2 = 0.0
  L5_2 = 0.0
  L6_2 = false
  L7_2 = true
  L8_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = GetModelDimensions
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = L3_2.z
  L5_2 = L2_2.z
  L4_2 = L4_2 - L5_2
  L5_2 = DeleteEntity
  L6_2 = L1_2
  L5_2(L6_2)
  L5_2 = GetEntityCoords
  L6_2 = cache
  L6_2 = L6_2.ped
  L5_2 = L5_2(L6_2)
  L6_2 = Utils
  L6_2 = L6_2.createProp
  L7_2 = vector3
  L8_2 = L5_2.x
  L9_2 = L5_2.y
  L10_2 = L5_2.z
  L10_2 = L10_2 - 10.0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = {}
  L8_2.model = A0_2
  L9_2 = vector3
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.rotation = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = nil
  L8_2 = 0.0
  L9_2 = SetInterval
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = lib
    L0_3 = L0_3.raycast
    L0_3 = L0_3.cam
    L1_3 = 17
    L2_3 = 1
    L3_3 = 10.0
    L0_3, L1_3, L2_3 = L0_3(L1_3, L2_3, L3_3)
    if L0_3 then
      L3_3 = GetEntityCoords
      L4_3 = cache
      L4_3 = L4_3.ped
      L3_3 = L3_3(L4_3)
      L4_3 = L2_3 - L3_3
      L4_3 = #L4_3
      if L4_3 <= 3.0 then
        L7_2 = L2_3
      else
        L4_3 = nil
        L7_2 = L4_3
      end
    end
  end
  L11_2 = 0
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = LR
  L10_2 = L10_2.showUI
  L11_2 = locale
  L12_2 = "place_lamp_ui"
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L11_2(L12_2)
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  while true do
    L10_2 = DisableControlAction
    L11_2 = 0
    L12_2 = 24
    L13_2 = true
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = DisableControlAction
    L11_2 = 0
    L12_2 = 25
    L13_2 = true
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = DisableControlAction
    L11_2 = 0
    L12_2 = 105
    L13_2 = true
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = DisableControlAction
    L11_2 = 0
    L12_2 = 73
    L13_2 = true
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = IsDisabledControlJustReleased
    L11_2 = 0
    L12_2 = 24
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 and L7_2 then
      L10_2 = GetEntityCoords
      L11_2 = cache
      L11_2 = L11_2.ped
      L10_2 = L10_2(L11_2)
      L10_2 = L7_2 - L10_2
      L10_2 = #L10_2
      L11_2 = ClearInterval
      L12_2 = L9_2
      L11_2(L12_2)
      L11_2 = LR
      L11_2 = L11_2.hideUI
      L11_2()
      L11_2 = L6_2.remove
      L11_2()
      L11_2 = Utils
      L11_2 = L11_2.makeEntityFaceCoords
      L12_2 = cache
      L12_2 = L12_2.ped
      L13_2 = L7_2
      L11_2(L12_2, L13_2)
      L11_2 = LR
      L11_2 = L11_2.progressBar
      L12_2 = locale
      L13_2 = "placing_light"
      L12_2 = L12_2(L13_2)
      L13_2 = 3000
      L14_2 = true
      L15_2 = {}
      L15_2.dict = "mini@repair"
      L15_2.clip = "fixing_a_ped"
      L15_2.flag = 49
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      if not L11_2 then
        L11_2 = false
        return L11_2
      end
      L11_2 = CreateObject
      L12_2 = A0_2
      L13_2 = L7_2.x
      L14_2 = L7_2.y
      L15_2 = L7_2.z
      L16_2 = false
      L17_2 = true
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L12_2 = SetEntityRotation
      L13_2 = L11_2
      L14_2 = 0.0
      L15_2 = 0.0
      L16_2 = L8_2
      L17_2 = 2
      L18_2 = true
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L12_2 = PlaceObjectOnGroundProperly
      L13_2 = L11_2
      L12_2(L13_2)
      L12_2 = GetEntityCoords
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      L13_2 = GetEntityRotation
      L14_2 = L11_2
      L15_2 = 2
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = DeleteEntity
      L15_2 = L11_2
      L14_2(L15_2)
      L14_2 = true
      L15_2 = L12_2
      L16_2 = L13_2
      return L14_2, L15_2, L16_2
    end
    L10_2 = IsDisabledControlJustReleased
    L11_2 = 0
    L12_2 = 25
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 then
      L10_2 = ClearInterval
      L11_2 = L9_2
      L10_2(L11_2)
      L10_2 = LR
      L10_2 = L10_2.hideUI
      L10_2()
      L10_2 = L6_2.remove
      L10_2()
      L10_2 = false
      return L10_2
    end
    L10_2 = IsDisabledControlJustReleased
    L11_2 = 0
    L12_2 = 14
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 then
      L8_2 = L8_2 + 5.0
    end
    L10_2 = IsDisabledControlJustReleased
    L11_2 = 0
    L12_2 = 15
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 then
      L8_2 = L8_2 - 5.0
    end
    if L7_2 then
      L10_2 = L6_2.get
      L10_2 = L10_2()
      if L10_2 then
        L11_2 = SetEntityVisible
        L12_2 = L10_2
        L13_2 = true
        L14_2 = false
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = SetEntityCoords
        L12_2 = L10_2
        L13_2 = L7_2.x
        L14_2 = L7_2.y
        L15_2 = L7_2.z
        L11_2(L12_2, L13_2, L14_2, L15_2)
        L11_2 = SetEntityAlpha
        L12_2 = L10_2
        L13_2 = 200
        L14_2 = false
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = SetEntityCollision
        L12_2 = L10_2
        L13_2 = false
        L14_2 = false
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = SetEntityRotation
        L12_2 = L10_2
        L13_2 = 0.0
        L14_2 = 0.0
        L15_2 = L8_2
        L11_2(L12_2, L13_2, L14_2, L15_2)
        L11_2 = PlaceObjectOnGroundProperly
        L12_2 = L10_2
        L11_2(L12_2)
        L11_2 = GetEntityCoords
        L12_2 = cache
        L12_2 = L12_2.ped
        L11_2 = L11_2(L12_2)
        L12_2 = L7_2 - L11_2
        L12_2 = #L12_2
        if L12_2 <= 3.0 then
          L13_2 = SetEntityAlpha
          L14_2 = L10_2
          L15_2 = 220
          L16_2 = false
          L13_2(L14_2, L15_2, L16_2)
        else
          L13_2 = SetEntityAlpha
          L14_2 = L10_2
          L15_2 = 90
          L16_2 = false
          L13_2(L14_2, L15_2, L16_2)
        end
      end
    else
      L10_2 = L6_2.get
      L10_2 = L10_2()
      if L10_2 then
        L11_2 = SetEntityVisible
        L12_2 = L10_2
        L13_2 = false
        L14_2 = false
        L11_2(L12_2, L13_2, L14_2)
      end
    end
    L10_2 = Wait
    L11_2 = 0
    L10_2(L11_2)
  end
end
L4_1(L5_1, L6_1)
