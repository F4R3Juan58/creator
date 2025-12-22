-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = {}
L1_1 = {}
L2_1 = false
L3_1 = {}
L4_1 = NewLoadSceneStart
L5_1 = 1391.9767
L6_1 = 3606.1577
L7_1 = 38.9419
L8_1 = 0
L9_1 = 0
L10_1 = 0
L11_1 = 50.0
L12_1 = 0
L4_1(L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1)
L4_1 = AddEventHandler
L5_1 = "onResourceStop"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = 1
  L2_2 = L0_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_1
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = L0_1
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.onExit
      L5_2(L6_2)
      L5_2 = L0_1
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.remove
      L5_2(L6_2)
    end
    L5_2 = L1_1
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = DeleteEntity
      L6_2 = L1_1
      L6_2 = L6_2[L4_2]
      L5_2(L6_2)
    end
  end
end
L4_1(L5_1, L6_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.spawnIndex
  L2_2 = A0_2.recipeIndex
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "lunar_drugscreator:tables:startProcessing"
  L5_2 = false
  L6_2 = L1_2
  L7_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L4_2 = LR
    L4_2 = L4_2.notify
    L5_2 = locale
    L6_2 = "missing_items"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L4_2(L5_2, L6_2)
    return
  end
end
L5_1 = lib
L5_1 = L5_1.callback
L5_1 = L5_1.register
L6_1 = "lunar_drugscreator:tables:animate"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = nil
  L3_2 = 1
  L4_2 = ServerConfig
  L4_2 = L4_2.processingTables
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = ServerConfig
    L7_2 = L7_2.processingTables
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.item
    if L7_2 == A0_2 then
      L7_2 = ServerConfig
      L7_2 = L7_2.processingTables
      L2_2 = L7_2[L6_2]
    end
  end
  L3_2 = L2_2.recipes
  L3_2 = L3_2[A1_2]
  if not L2_2 or not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = true
  L2_1 = L4_2
  L4_2 = FreezeEntityPosition
  L5_2 = cache
  L5_2 = L5_2.ped
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = L2_2.animation
  L4_2 = L4_2.dict
  if not L4_2 then
    L4_2 = L2_2.animation
    L4_2 = L4_2.scenario
    if not L4_2 then
      goto lbl_44
    end
  end
  L4_2 = L2_2.animation
  ::lbl_44::
  if not L4_2 then
    L4_2 = nil
  end
  L5_2 = L2_2.animationProp
  if L5_2 then
    L5_2 = L5_2.model
  end
  if L5_2 then
    L5_2 = IsModelValid
    L6_2 = L2_2.animationProp
    L6_2 = L6_2.model
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = L2_2.animationProp
      if L5_2 then
        goto lbl_61
      end
    end
  end
  L5_2 = nil
  ::lbl_61::
  L6_2 = LR
  L6_2 = L6_2.progressBar
  L7_2 = L3_2.progress
  if not L7_2 then
    L7_2 = locale
    L8_2 = "processing"
    L7_2 = L7_2(L8_2)
  end
  L8_2 = L3_2.duration
  L9_2 = true
  L10_2 = L4_2
  L11_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = ClearPedTasks
  L8_2 = cache
  L8_2 = L8_2.ped
  L7_2(L8_2)
  L7_2 = FreezeEntityPosition
  L8_2 = cache
  L8_2 = L8_2.ped
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = false
  L2_1 = L7_2
  return L6_2
end
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = A0_2
  L1_2 = L3_2.item
  L2_2 = L3_2.spawnIndex
  L3_2 = nil
  L4_2 = 1
  L5_2 = ServerConfig
  L5_2 = L5_2.processingTables
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = ServerConfig
    L8_2 = L8_2.processingTables
    L8_2 = L8_2[L7_2]
    L8_2 = L8_2.item
    if L8_2 == L1_2 then
      L8_2 = ServerConfig
      L8_2 = L8_2.processingTables
      L3_2 = L8_2[L7_2]
    end
  end
  L4_2 = {}
  L5_2 = 1
  L6_2 = L3_2.recipes
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L3_2.recipes
    L9_2 = L9_2[L8_2]
    L10_2 = {}
    L11_2 = 1
    L12_2 = L9_2.requiredItems
    L12_2 = #L12_2
    L13_2 = 1
    for L14_2 = L11_2, L12_2, L13_2 do
      L15_2 = L9_2.requiredItems
      L15_2 = L15_2[L14_2]
      L16_2 = "%sx %s"
      L17_2 = L16_2
      L16_2 = L16_2.format
      L18_2 = L15_2.amount
      L19_2 = Utils
      L19_2 = L19_2.getItemLabel
      L20_2 = L15_2.name
      L19_2, L20_2 = L19_2(L20_2)
      L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
      L10_2[L14_2] = L16_2
    end
    L11_2 = {}
    L12_2 = Utils
    L12_2 = L12_2.getItemLabel
    L13_2 = L9_2.giveItems
    L13_2 = L13_2[1]
    L13_2 = L13_2.name
    L12_2 = L12_2(L13_2)
    L11_2.title = L12_2
    L12_2 = locale
    L13_2 = "required_items"
    L14_2 = table
    L14_2 = L14_2.concat
    L15_2 = L10_2
    L16_2 = ", "
    L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2(L15_2, L16_2)
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L11_2.description = L12_2
    L12_2 = Editable
    L12_2 = L12_2.getInventoryIcon
    L13_2 = L9_2.giveItems
    L13_2 = L13_2[1]
    L13_2 = L13_2.name
    L12_2 = L12_2(L13_2)
    L11_2.icon = L12_2
    L12_2 = L4_1
    L11_2.onSelect = L12_2
    L12_2 = {}
    L12_2.data = L3_2
    L12_2.spawnIndex = L2_2
    L12_2.recipeIndex = L8_2
    L11_2.args = L12_2
    L4_2[L8_2] = L11_2
  end
  L5_2 = lib
  L5_2 = L5_2.registerContext
  L6_2 = {}
  L6_2.id = "recipes"
  L7_2 = locale
  L8_2 = "recipes"
  L7_2 = L7_2(L8_2)
  L6_2.title = L7_2
  L6_2.options = L4_2
  L5_2(L6_2)
  L5_2 = lib
  L5_2 = L5_2.showContext
  L6_2 = "recipes"
  L5_2(L6_2)
end
L6_1 = RegisterNetEvent
L7_1 = "lunar_drugscreator:tables:remove"
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
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
    L1_2 = L3_1
    L1_2[A0_2] = nil
  end
end
L6_1(L7_1, L8_1)
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  while true do
    L5_2 = ServerConfig
    if L5_2 then
      break
    end
    L5_2 = Wait
    L6_2 = 100
    L5_2(L6_2)
  end
  L5_2 = nil
  L6_2 = nil
  L7_2 = nil
  L8_2 = 1
  L9_2 = ServerConfig
  L9_2 = L9_2.processingTables
  L9_2 = #L9_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = ServerConfig
    L12_2 = L12_2.processingTables
    L12_2 = L12_2[L11_2]
    L12_2 = L12_2.item
    if L12_2 == A0_2 then
      L12_2 = ServerConfig
      L12_2 = L12_2.processingTables
      L7_2 = L12_2[L11_2]
    end
  end
  L8_2 = L0_1
  L9_2 = lib
  L9_2 = L9_2.points
  L9_2 = L9_2.new
  L10_2 = {}
  L10_2.coords = A2_2
  L10_2.distance = 100.0
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = lib
    L0_3 = L0_3.requestModel
    L1_3 = L7_2.model
    L0_3(L1_3)
    L0_3 = CreateObjectNoOffset
    L1_3 = L7_2.model
    L2_3 = A2_2.x
    L3_3 = A2_2.y
    L4_3 = A2_2.z
    L5_3 = false
    L6_3 = false
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
    L5_2 = L0_3
    L1_3 = A1_2
    L0_3 = L1_1
    L2_3 = L5_2
    L0_3[L1_3] = L2_3
    L0_3 = Wait
    L1_3 = 0
    L0_3(L1_3)
    L0_3 = FreezeEntityPosition
    L1_3 = L5_2
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = SetEntityRotation
    L1_3 = L5_2
    L2_3 = A3_2.x
    L3_3 = A3_2.y
    L4_3 = A3_2.z
    L0_3(L1_3, L2_3, L3_3, L4_3)
    L0_3 = L7_2.interactionOffset
    if not L0_3 then
      L0_3 = vector3
      L1_3 = 0.0
      L2_3 = 0.0
      L3_3 = 0.0
      L0_3 = L0_3(L1_3, L2_3, L3_3)
    end
    L1_3 = Utils
    L1_3 = L1_3.createInteractionPoint
    L2_3 = {}
    L3_3 = GetOffsetFromEntityInWorldCoords
    L4_3 = L5_2
    L5_3 = L0_3.x
    L6_3 = L0_3.y
    L7_3 = L0_3.z
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
    L2_3.coords = L3_3
    L3_3 = L7_2.radius
    L2_3.radius = L3_3
    L3_3 = {}
    L4_3 = {}
    L5_3 = locale
    L6_3 = "recipes"
    L5_3 = L5_3(L6_3)
    L4_3.label = L5_3
    L4_3.icon = "book"
    L5_3 = L5_1
    L4_3.onSelect = L5_3
    L5_3 = {}
    L6_3 = L7_2.item
    L5_3.item = L6_3
    L6_3 = A1_2
    L5_3.spawnIndex = L6_3
    L4_3.args = L5_3
    function L5_3()
      local L0_4, L1_4, L2_4
      L0_4 = L2_1
      L0_4 = IsPedInAnyVehicle
      L1_4 = cache
      L1_4 = L1_4.ped
      L2_4 = true
      L0_4 = L0_4(L1_4, L2_4)
      L0_4 = not L0_4 and L0_4
      return L0_4
    end
    L4_3.canInteract = L5_3
    L5_3 = {}
    L6_3 = locale
    L7_3 = "take"
    L6_3 = L6_3(L7_3)
    L5_3.label = L6_3
    L5_3.icon = "hand"
    function L6_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = Utils
      L0_4 = L0_4.makeEntityFaceEntity
      L1_4 = cache
      L1_4 = L1_4.ped
      L2_4 = L5_2
      L0_4(L1_4, L2_4)
      L0_4 = LR
      L0_4 = L0_4.progressBar
      L1_4 = locale
      L2_4 = "taking"
      L1_4 = L1_4(L2_4)
      L2_4 = L7_2.duration
      L3_4 = false
      L4_4 = {}
      L4_4.dict = "mini@repair"
      L4_4.clip = "fixing_a_ped"
      L4_4.flag = 1
      L0_4 = L0_4(L1_4, L2_4, L3_4, L4_4)
      if L0_4 then
        L0_4 = TriggerServerEvent
        L1_4 = "lunar_drugscreator:tables:take"
        L2_4 = A1_2
        L0_4(L1_4, L2_4)
      end
    end
    L5_3.onSelect = L6_3
    function L6_3()
      local L0_4, L1_4, L2_4
      L0_4 = L2_1
      L0_4 = IsPedInAnyVehicle
      L1_4 = cache
      L1_4 = L1_4.ped
      L2_4 = true
      L0_4 = L0_4(L1_4, L2_4)
      L0_4 = not L0_4 and L0_4
      return L0_4
    end
    L5_3.canInteract = L6_3
    L6_3 = {}
    L7_3 = locale
    L8_3 = "cancel"
    L7_3 = L7_3(L8_3)
    L6_3.label = L7_3
    L6_3.icon = "circle-xmark"
    function L7_3()
      local L0_4, L1_4
      L0_4 = LR
      L0_4 = L0_4.progressActive
      L0_4 = L0_4()
      if L0_4 then
        L0_4 = LR
        L0_4 = L0_4.cancelProgress
        L0_4()
      end
    end
    L6_3.onSelect = L7_3
    function L7_3()
      local L0_4, L1_4
      L0_4 = L2_1
      return L0_4
    end
    L6_3.canInteract = L7_3
    L3_3[1] = L4_3
    L3_3[2] = L5_3
    L3_3[3] = L6_3
    L2_3.options = L3_3
    L3_3 = L7_2.target
    L1_3 = L1_3(L2_3, L3_3)
    L6_2 = L1_3
  end
  L10_2.onEnter = L11_2
  function L11_2()
    local L0_3, L1_3
    L0_3 = DoesEntityExist
    L1_3 = L5_2
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = DeleteEntity
      L1_3 = L5_2
      L0_3(L1_3)
      L1_3 = A1_2
      L0_3 = L1_1
      L0_3[L1_3] = nil
    end
    L0_3 = L6_2
    if L0_3 then
      L0_3 = L6_2.remove
      L0_3()
    end
  end
  L10_2.onExit = L11_2
  L9_2 = L9_2(L10_2)
  L8_2[A1_2] = L9_2
end
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if A1_2 then
    L3_2 = A1_2.routingBucket
    L4_2 = RoutingBucket
    if L3_2 == L4_2 then
      goto lbl_18
    end
  end
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.onExit
    L3_2(L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.remove
    L3_2(L4_2)
    L3_2 = L0_1
    L3_2[A0_2] = nil
  end
  do return end
  ::lbl_18::
  if L2_2 then
    return
  end
  L3_2 = L6_1
  L4_2 = A1_2.item
  L5_2 = A0_2
  L6_2 = A1_2.coords
  L7_2 = A1_2.rotation
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L8_1 = RegisterNetEvent
L9_1 = "lunar_drugscreator:tables:spawn"
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = L3_1
  L6_2 = {}
  L6_2.item = A0_2
  L6_2.coords = A2_2
  L6_2.rotation = A3_2
  L6_2.routingBucket = A4_2
  L5_2[A1_2] = L6_2
  L5_2 = L7_1
  L6_2 = A1_2
  L7_2 = L3_1
  L7_2 = L7_2[A1_2]
  L5_2(L6_2, L7_2)
end
L8_1(L9_1, L10_1)
L8_1 = SetTimeout
L9_1 = 500
function L10_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "lunar_drugscreator:tables:getSpawned"
  L0_2(L1_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "lunar_drugscreator:tables:initSpawned"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_1 = A0_2
  while true do
    L1_2 = ServerConfig
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L1_2 = pairs
  L2_2 = L3_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L7_1
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L8_1(L9_1, L10_1)
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    if L5_2 then
      L7_2 = L5_2
      L6_2 = L5_2.onExit
      L6_2(L7_2)
      L7_2 = L5_2
      L6_2 = L5_2.remove
      L6_2(L7_2)
      L6_2 = L0_1
      L6_2[L4_2] = nil
    end
  end
  L0_2 = pairs
  L1_2 = L3_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L7_1
    L7_2 = L4_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
TablesRoutingBucketChanged = L8_1
L8_1 = lib
L8_1 = L8_1.callback
L8_1 = L8_1.register
L9_1 = "lunar_drugscreator:tables:getPlaceCoords"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = ServerConfig
  L1_2 = L1_2.processingTables
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L2_2 = LR
    L2_2 = L2_2.notify
    L3_2 = locale
    L4_2 = "invalid_table"
    L3_2 = L3_2(L4_2)
    L4_2 = "error"
    L2_2(L3_2, L4_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = ServerConfig
  L2_2 = L2_2.generalSettings
  L2_2 = L2_2.betterTablePlacing
  if not L2_2 then
    L2_2 = GetOffsetFromEntityInWorldCoords
    L3_2 = cache
    L3_2 = L3_2.ped
    L4_2 = 0.0
    L5_2 = 1.0
    L6_2 = 0.0
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = GetGroundZFor_3dCoord
    L4_2 = L2_2.x
    L5_2 = L2_2.y
    L6_2 = L2_2.z
    L7_2 = true
    L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L5_2 = L2_2.z
    L5_2 = L5_2 - L4_2
    L6_2 = 1.5
    if L5_2 > L6_2 then
      L5_2 = LR
      L5_2 = L5_2.notify
      L6_2 = locale
      L7_2 = "cannot_place"
      L6_2 = L6_2(L7_2)
      L7_2 = "error"
      L5_2(L6_2, L7_2)
      L5_2 = false
      return L5_2
    end
    L5_2 = lib
    L5_2 = L5_2.requestModel
    L6_2 = L1_2.model
    L5_2(L6_2)
    L5_2 = CreateObjectNoOffset
    L6_2 = L1_2.model
    L7_2 = L2_2.x
    L8_2 = L2_2.y
    L9_2 = L4_2
    L10_2 = false
    L11_2 = false
    L12_2 = false
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L6_2 = SetEntityVisible
    L7_2 = L5_2
    L8_2 = false
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = SetEntityCollision
    L7_2 = L5_2
    L8_2 = false
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = FreezeEntityPosition
    L7_2 = L5_2
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = GetEntityHeading
    L7_2 = cache
    L7_2 = L7_2.ped
    L6_2 = L6_2(L7_2)
    L7_2 = SetEntityHeading
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = PlaceObjectOnGroundProperly
    L8_2 = L5_2
    L7_2(L8_2)
    L7_2 = LR
    L7_2 = L7_2.progressBar
    L8_2 = locale
    L9_2 = "placing"
    L8_2 = L8_2(L9_2)
    L9_2 = L1_2.duration
    L10_2 = false
    L11_2 = {}
    L11_2.dict = "mini@repair"
    L11_2.clip = "fixing_a_ped"
    L11_2.flag = 1
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    if not L7_2 then
      L7_2 = DeleteEntity
      L8_2 = L5_2
      L7_2(L8_2)
      L7_2 = false
      return L7_2
    end
    L7_2 = GetEntityCoords
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = GetEntityRotation
    L9_2 = L5_2
    L10_2 = 2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = DeleteEntity
    L10_2 = L5_2
    L9_2(L10_2)
    L9_2 = true
    L10_2 = L7_2
    L11_2 = L8_2
    return L9_2, L10_2, L11_2
  end
  L2_2 = LR
  L2_2 = L2_2.progressActive
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = IsPedCuffed
    L3_2 = cache
    L3_2 = L3_2.ped
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = IsPedInAnyVehicle
      L3_2 = cache
      L3_2 = L3_2.ped
      L4_2 = true
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        goto lbl_140
      end
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_140::
  L2_2 = CreateObject
  L3_2 = L1_2.model
  L4_2 = 0.0
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = false
  L8_2 = true
  L9_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = GetModelDimensions
  L4_2 = L2_2
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = L4_2.z
  L6_2 = L3_2.z
  L5_2 = L5_2 - L6_2
  L6_2 = DeleteEntity
  L7_2 = L2_2
  L6_2(L7_2)
  L6_2 = GetEntityCoords
  L7_2 = cache
  L7_2 = L7_2.ped
  L6_2 = L6_2(L7_2)
  L7_2 = Utils
  L7_2 = L7_2.createProp
  L8_2 = vector3
  L9_2 = L6_2.x
  L10_2 = L6_2.y
  L11_2 = L6_2.z
  L11_2 = L11_2 - 10.0
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = {}
  L10_2 = L1_2.model
  L9_2.model = L10_2
  L10_2 = vector3
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0.0
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2.rotation = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = nil
  L9_2 = 0.0
  L10_2 = false
  L11_2 = SetInterval
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = lib
    L0_3 = L0_3.raycast
    L0_3 = L0_3.cam
    L1_3 = 17
    L2_3 = 1
    L3_3 = 10.0
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3, L2_3, L3_3)
    if L0_3 then
      L4_3 = GetEntityCoords
      L5_3 = cache
      L5_3 = L5_3.ped
      L4_3 = L4_3(L5_3)
      L5_3 = L2_3 - L4_3
      L5_3 = #L5_3
      L6_3 = math
      L6_3 = L6_3.acos
      L7_3 = L3_3.z
      L6_3 = L6_3(L7_3)
      L6_3 = L6_3 * 180
      L7_3 = math
      L7_3 = L7_3.pi
      L6_3 = L6_3 / L7_3
      if L5_3 <= 3.0 and (L6_3 <= 55.0 or L6_3 ~= L6_3) then
        L8_2 = L2_3
        L7_3 = true
        L10_2 = L7_3
      else
        L7_3 = nil
        L8_2 = L7_3
        L7_3 = false
        L10_2 = L7_3
      end
    end
  end
  L13_2 = 0
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = LR
  L12_2 = L12_2.showUI
  L13_2 = locale
  L14_2 = "place_table_ui"
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L13_2(L14_2)
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  while true do
    L12_2 = DisableControlAction
    L13_2 = 0
    L14_2 = 24
    L15_2 = true
    L12_2(L13_2, L14_2, L15_2)
    L12_2 = DisableControlAction
    L13_2 = 0
    L14_2 = 25
    L15_2 = true
    L12_2(L13_2, L14_2, L15_2)
    L12_2 = DisableControlAction
    L13_2 = 0
    L14_2 = 105
    L15_2 = true
    L12_2(L13_2, L14_2, L15_2)
    L12_2 = DisableControlAction
    L13_2 = 0
    L14_2 = 73
    L15_2 = true
    L12_2(L13_2, L14_2, L15_2)
    L12_2 = IsDisabledControlJustReleased
    L13_2 = 0
    L14_2 = 24
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 and L8_2 and L10_2 then
      L12_2 = ClearInterval
      L13_2 = L11_2
      L12_2(L13_2)
      L12_2 = LR
      L12_2 = L12_2.hideUI
      L12_2()
      L12_2 = L7_2.remove
      L12_2()
      L12_2 = Utils
      L12_2 = L12_2.makeEntityFaceCoords
      L13_2 = cache
      L13_2 = L13_2.ped
      L14_2 = L8_2
      L12_2(L13_2, L14_2)
      L12_2 = LR
      L12_2 = L12_2.progressBar
      L13_2 = locale
      L14_2 = "placing"
      L13_2 = L13_2(L14_2)
      L14_2 = L1_2.duration
      L15_2 = true
      L16_2 = {}
      L16_2.dict = "mini@repair"
      L16_2.clip = "fixing_a_ped"
      L16_2.flag = 49
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
      if not L12_2 then
        L12_2 = false
        return L12_2
      end
      L12_2 = CreateObject
      L13_2 = L1_2.model
      L14_2 = L8_2.x
      L15_2 = L8_2.y
      L16_2 = L8_2.z
      L17_2 = false
      L18_2 = true
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L13_2 = SetEntityRotation
      L14_2 = L12_2
      L15_2 = 0.0
      L16_2 = 0.0
      L17_2 = L9_2
      L18_2 = 2
      L19_2 = true
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L13_2 = PlaceObjectOnGroundProperly
      L14_2 = L12_2
      L13_2(L14_2)
      L13_2 = GetEntityCoords
      L14_2 = L12_2
      L13_2 = L13_2(L14_2)
      L14_2 = GetEntityRotation
      L15_2 = L12_2
      L16_2 = 2
      L14_2 = L14_2(L15_2, L16_2)
      L15_2 = DeleteEntity
      L16_2 = L12_2
      L15_2(L16_2)
      L15_2 = true
      L16_2 = L13_2
      L17_2 = L14_2
      return L15_2, L16_2, L17_2
    end
    L12_2 = IsDisabledControlJustReleased
    L13_2 = 0
    L14_2 = 25
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 then
      L12_2 = ClearInterval
      L13_2 = L11_2
      L12_2(L13_2)
      L12_2 = LR
      L12_2 = L12_2.hideUI
      L12_2()
      L12_2 = L7_2.remove
      L12_2()
      L12_2 = false
      return L12_2
    end
    L12_2 = IsDisabledControlJustReleased
    L13_2 = 0
    L14_2 = 14
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 then
      L9_2 = L9_2 + 5.0
    end
    L12_2 = IsDisabledControlJustReleased
    L13_2 = 0
    L14_2 = 15
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 then
      L9_2 = L9_2 - 5.0
    end
    if L8_2 and L10_2 then
      L12_2 = L7_2.get
      L12_2 = L12_2()
      if L12_2 then
        L13_2 = SetEntityVisible
        L14_2 = L12_2
        L15_2 = true
        L16_2 = false
        L13_2(L14_2, L15_2, L16_2)
        L13_2 = SetEntityCoords
        L14_2 = L12_2
        L15_2 = L8_2.x
        L16_2 = L8_2.y
        L17_2 = L8_2.z
        L13_2(L14_2, L15_2, L16_2, L17_2)
        L13_2 = SetEntityAlpha
        L14_2 = L12_2
        L15_2 = 220
        L16_2 = false
        L13_2(L14_2, L15_2, L16_2)
        L13_2 = SetEntityCollision
        L14_2 = L12_2
        L15_2 = false
        L16_2 = false
        L13_2(L14_2, L15_2, L16_2)
        L13_2 = SetEntityRotation
        L14_2 = L12_2
        L15_2 = 0.0
        L16_2 = 0.0
        L17_2 = L9_2
        L13_2(L14_2, L15_2, L16_2, L17_2)
        L13_2 = PlaceObjectOnGroundProperly
        L14_2 = L12_2
        L13_2(L14_2)
      end
    else
      L12_2 = L7_2.get
      L12_2 = L12_2()
      if L12_2 then
        L13_2 = SetEntityVisible
        L14_2 = L12_2
        L15_2 = false
        L16_2 = false
        L13_2(L14_2, L15_2, L16_2)
      end
    end
    L12_2 = Wait
    L13_2 = 0
    L12_2(L13_2)
  end
end
L8_1(L9_1, L10_1)
