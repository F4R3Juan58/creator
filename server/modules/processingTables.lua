-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = 0
L4_1 = {}
L5_1 = false
L6_1 = MySQL
L6_1 = L6_1.ready
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = false
  while not L0_2 do
    L1_2 = pcall
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
      L0_3 = MySQL
      L0_3 = L0_3.query
      L0_3 = L0_3.await
      L1_3 = "SELECT * FROM lunar_drugscreator_tables"
      L0_3 = L0_3(L1_3)
      L1_3 = 0
      L2_3 = 1
      L3_3 = #L0_3
      L4_3 = 1
      for L5_3 = L2_3, L3_3, L4_3 do
        L6_3 = L0_3[L5_3]
        L7_3 = json
        L7_3 = L7_3.decode
        L8_3 = L6_3.data
        L7_3 = L7_3(L8_3)
        L9_3 = L6_3.id
        L8_3 = L2_1
        L10_3 = {}
        L11_3 = vector3
        L12_3 = L7_3.coords
        L12_3 = L12_3.x
        L13_3 = L7_3.coords
        L13_3 = L13_3.y
        L14_3 = L7_3.coords
        L14_3 = L14_3.z
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L10_3.coords = L11_3
        L11_3 = vector3
        L12_3 = L7_3.rotation
        L12_3 = L12_3.x
        L13_3 = L7_3.rotation
        L13_3 = L13_3.y
        L14_3 = L7_3.rotation
        L14_3 = L14_3.z
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        L10_3.rotation = L11_3
        L11_3 = L7_3.item
        L10_3.item = L11_3
        L11_3 = L7_3.busy
        L10_3.busy = L11_3
        L11_3 = L7_3.routingBucket
        if not L11_3 then
          L11_3 = 0
        end
        L10_3.routingBucket = L11_3
        L8_3[L9_3] = L10_3
        L8_3 = L6_3.id
        if L1_3 < L8_3 then
          L1_3 = L6_3.id
        end
      end
      L3_1 = L1_3
      L2_3 = true
      L5_1 = L2_3
    end
    L1_2, L2_2 = L1_2(L2_2)
    if L1_2 then
      L0_2 = true
    else
      L3_2 = Wait
      L4_2 = 100
      L3_2(L4_2)
    end
  end
end
L6_1(L7_1)
L6_1 = {}
L7_1 = RegisterNetEvent
L8_1 = "lunar_drugscreator:tables:getSpawned"
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = L6_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    return
  end
  L1_2 = L6_1
  L1_2[L0_2] = true
  while true do
    L1_2 = L5_1
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L1_2 = TriggerClientEvent
  L2_2 = "lunar_drugscreator:tables:initSpawned"
  L3_2 = L0_2
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
end
L7_1(L8_1, L9_1)
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2.canCarryItem
    L10_2 = L7_2.name
    L11_2 = type
    L12_2 = L7_2.amount
    L11_2 = L11_2(L12_2)
    if "number" == L11_2 then
      L11_2 = L7_2.amount
      if L11_2 then
        goto lbl_17
      end
    end
    L11_2 = L7_2.amount
    L11_2 = L11_2.max
    ::lbl_17::
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    if not L8_2 then
      L8_2 = false
      return L8_2
    end
  end
  L2_2 = true
  return L2_2
end
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2.getItemCount
    L10_2 = L7_2.name
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L7_2.amount
    if L8_2 < L9_2 then
      L8_2 = false
      return L8_2
    end
  end
  L2_2 = true
  return L2_2
end
L9_1 = lib
L9_1 = L9_1.callback
L9_1 = L9_1.register
L10_1 = "lunar_drugscreator:tables:startProcessing"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L2_1
  L4_2 = L4_2[A1_2]
  if not L3_2 or not L4_2 then
    return
  end
  L5_2 = nil
  L6_2 = 1
  L7_2 = ServerConfig
  L7_2 = L7_2.processingTables
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = ServerConfig
    L10_2 = L10_2.processingTables
    L10_2 = L10_2[L9_2]
    L10_2 = L10_2.item
    L11_2 = L4_2.item
    if L10_2 == L11_2 then
      L10_2 = ServerConfig
      L10_2 = L10_2.processingTables
      L5_2 = L10_2[L9_2]
      break
    end
  end
  if not L5_2 then
    L6_2 = false
    return L6_2
  end
  L6_2 = L5_2.recipes
  L6_2 = L6_2[A2_2]
  L7_2 = L7_1
  L8_2 = L3_2
  L9_2 = L6_2.giveItems
  L7_2 = L7_2(L8_2, L9_2)
  if not L7_2 then
    L7_2 = false
    return L7_2
  end
  L7_2 = L8_1
  L8_2 = L3_2
  L9_2 = L6_2.requiredItems
  L7_2 = L7_2(L8_2, L9_2)
  if not L7_2 then
    L7_2 = false
    L8_2 = locale
    L9_2 = "missing_items"
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    return L7_2, L8_2, L9_2, L10_2, L11_2
  end
  L7_2 = L5_2.blockMultipleUsers
  if L7_2 then
    L7_2 = L4_2.busy
    if L7_2 then
      L7_2 = false
      L8_2 = locale
      L9_2 = "someone_processing"
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      return L7_2, L8_2, L9_2, L10_2, L11_2
    end
  end
  L7_2 = L4_1
  L7_2 = L7_2[A0_2]
  if L7_2 then
    L7_2 = false
    L8_2 = locale
    L9_2 = "already_processing"
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    return L7_2, L8_2, L9_2, L10_2, L11_2
  end
  L7_2 = L4_1
  L7_2[A0_2] = true
  L4_2.busy = true
  L7_2 = CreateThread
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = lib
    L0_3 = L0_3.callback
    L0_3 = L0_3.await
    L1_3 = "lunar_drugscreator:tables:animate"
    L2_3 = A0_2
    L3_3 = L4_2.item
    L4_3 = A2_2
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    if L0_3 then
      L1_3 = L7_1
      L2_3 = L3_2
      L3_3 = L6_2.giveItems
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L2_3 = A0_2
        L1_3 = L4_1
        L1_3[L2_3] = nil
        L4_2.busy = false
        return
      end
      L1_3 = L8_1
      L2_3 = L3_2
      L3_3 = L6_2.requiredItems
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L2_3 = A0_2
        L1_3 = L4_1
        L1_3[L2_3] = nil
        L4_2.busy = false
        return
      end
      L1_3 = 1
      L2_3 = L6_2.requiredItems
      L2_3 = #L2_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = L6_2.requiredItems
        L5_3 = L5_3[L4_3]
        L6_3 = L3_2
        L7_3 = L6_3
        L6_3 = L6_3.removeItem
        L8_3 = L5_3.name
        L9_3 = L5_3.amount
        L6_3(L7_3, L8_3, L9_3)
      end
      L1_3 = {}
      L2_3 = 1
      L3_3 = L6_2.giveItems
      L3_3 = #L3_3
      L4_3 = 1
      for L5_3 = L2_3, L3_3, L4_3 do
        L6_3 = L6_2.giveItems
        L6_3 = L6_3[L5_3]
        L7_3 = math
        L7_3 = L7_3.random
        L8_3 = L6_3.amount
        L8_3 = L8_3.min
        L9_3 = L6_3.amount
        L9_3 = L9_3.max
        L7_3 = L7_3(L8_3, L9_3)
        L8_3 = L3_2
        L9_3 = L8_3
        L8_3 = L8_3.addItem
        L10_3 = L6_3.name
        L11_3 = L7_3
        L8_3(L9_3, L10_3, L11_3)
        L8_3 = #L1_3
        L8_3 = L8_3 + 1
        L9_3 = "%sx %s"
        L10_3 = L9_3
        L9_3 = L9_3.format
        L11_3 = L7_3
        L12_3 = L6_3.name
        L9_3 = L9_3(L10_3, L11_3, L12_3)
        L1_3[L8_3] = L9_3
        L8_3 = Stats
        L8_3 = L8_3.addProcessed
        L9_3 = L6_3.name
        L10_3 = L7_3
        L8_3(L9_3, L10_3)
      end
      L2_3 = SendLog
      L3_3 = A0_2
      L4_3 = "Crafted %s with %s processing table."
      L5_3 = L4_3
      L4_3 = L4_3.format
      L6_3 = table
      L6_3 = L6_3.concat
      L7_3 = L1_3
      L8_3 = ", "
      L6_3 = L6_3(L7_3, L8_3)
      L7_3 = L4_2.item
      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L4_3(L5_3, L6_3, L7_3)
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    end
    L2_3 = A0_2
    L1_3 = L4_1
    L1_3[L2_3] = nil
    L4_2.busy = false
  end
  L7_2(L8_2)
  L7_2 = true
  return L7_2
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "lunar_drugscreator:tables:take"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1
  L3_2 = L3_2[A0_2]
  if L2_2 and L3_2 then
    L4_2 = Utils
    L4_2 = L4_2.distanceCheck
    L5_2 = L1_2
    L6_2 = L3_2.coords
    L7_2 = 5.0
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L4_2 then
      goto lbl_21
    end
  end
  do return end
  ::lbl_21::
  L4_2 = L3_2.busy
  if L4_2 then
    L4_2 = LR
    L4_2 = L4_2.notify
    L5_2 = L1_2
    L6_2 = locale
    L7_2 = "someone_processing"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = L2_1
  L4_2[A0_2] = nil
  L5_2 = L2_2
  L4_2 = L2_2.addItem
  L6_2 = L3_2.item
  L7_2 = 1
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = TriggerClientEvent
  L5_2 = "lunar_drugscreator:tables:remove"
  L6_2 = -1
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = MySQL
  L4_2 = L4_2.update
  L4_2 = L4_2.await
  L5_2 = "DELETE FROM lunar_drugscreator_tables WHERE id = ?"
  L6_2 = {}
  L7_2 = A0_2
  L6_2[1] = L7_2
  L4_2(L5_2, L6_2)
end
L9_1(L10_1, L11_1)
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = 1
  L1_2 = ServerConfig
  L1_2 = L1_2.processingTables
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = ServerConfig
    L4_2 = L4_2.processingTables
    L4_2 = L4_2[L3_2]
    L6_2 = L4_2.item
    L5_2 = L0_1
    L5_2 = L5_2[L6_2]
    if not L5_2 then
      L5_2 = Framework
      L5_2 = L5_2.registerUsableItem
      L6_2 = L4_2.item
      function L7_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3
        L1_3 = Framework
        L1_3 = L1_3.getPlayerFromId
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        if L1_3 then
          L3_3 = L1_3
          L2_3 = L1_3.hasItem
          L4_3 = L4_2.item
          L2_3 = L2_3(L3_3, L4_3)
          if L2_3 then
            goto lbl_13
          end
        end
        do return end
        ::lbl_13::
        L3_3 = L4_2.item
        L2_3 = L1_1
        L2_3 = L2_3[L3_3]
        if not L2_3 then
          return
        end
        L3_3 = L2_3
        L4_3 = L1_3
        L3_3(L4_3)
      end
      L5_2(L6_2, L7_2)
      L6_2 = L4_2.item
      L5_2 = L0_1
      L5_2[L6_2] = true
    end
    L6_2 = L4_2.item
    L5_2 = L1_1
    function L7_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
      L1_3 = lib
      L1_3 = L1_3.callback
      L1_3 = L1_3.await
      L2_3 = "lunar_drugscreator:tables:getPlaceCoords"
      L3_3 = A0_3.source
      L4_3 = L3_2
      L1_3, L2_3, L3_3 = L1_3(L2_3, L3_3, L4_3)
      if L1_3 then
        L5_3 = A0_3
        L4_3 = A0_3.hasItem
        L6_3 = L4_2.item
        L4_3 = L4_3(L5_3, L6_3)
        if L4_3 then
          goto lbl_16
        end
      end
      do return end
      ::lbl_16::
      L5_3 = A0_3
      L4_3 = A0_3.removeItem
      L6_3 = L4_2.item
      L7_3 = 1
      L4_3(L5_3, L6_3, L7_3)
      L4_3 = L3_1
      L4_3 = L4_3 + 1
      L3_1 = L4_3
      L5_3 = L3_1
      L4_3 = L2_1
      L6_3 = {}
      L6_3.coords = L2_3
      L6_3.rotation = L3_3
      L7_3 = L4_2.item
      L6_3.item = L7_3
      L6_3.busy = false
      L7_3 = GetPlayerRoutingBucket
      L8_3 = tostring
      L9_3 = A0_3.source
      L8_3, L9_3, L10_3, L11_3, L12_3 = L8_3(L9_3)
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
      L6_3.routingBucket = L7_3
      L4_3[L5_3] = L6_3
      L5_3 = L3_1
      L4_3 = L2_1
      L4_3 = L4_3[L5_3]
      L5_3 = GetPlayerRoutingBucket
      L6_3 = tostring
      L7_3 = A0_3.source
      L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L6_3(L7_3)
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L4_3.routingBucket = L5_3
      L4_3 = TriggerClientEvent
      L5_3 = "lunar_drugscreator:tables:spawn"
      L6_3 = -1
      L7_3 = L4_2.item
      L8_3 = L3_1
      L9_3 = L2_3
      L10_3 = L3_3
      L12_3 = L3_1
      L11_3 = L2_1
      L11_3 = L11_3[L12_3]
      L11_3 = L11_3.routingBucket
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      L4_3 = MySQL
      L4_3 = L4_3.insert
      L4_3 = L4_3.await
      L5_3 = "INSERT INTO lunar_drugscreator_tables (id, data) VALUES (?, ?)"
      L6_3 = {}
      L7_3 = L3_1
      L8_3 = json
      L8_3 = L8_3.encode
      L10_3 = L3_1
      L9_3 = L2_1
      L9_3 = L9_3[L10_3]
      L8_3, L9_3, L10_3, L11_3, L12_3 = L8_3(L9_3)
      L6_3[1] = L7_3
      L6_3[2] = L8_3
      L6_3[3] = L9_3
      L6_3[4] = L10_3
      L6_3[5] = L11_3
      L6_3[6] = L12_3
      L4_3(L5_3, L6_3)
    end
    L5_2[L6_2] = L7_2
  end
end
L10_1 = {}
L10_1.field = "processingTables"
L10_1.reload = L9_1
ProcessingTables = L10_1
