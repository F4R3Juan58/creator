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
L2_1 = {}
L3_1 = false
function L4_1()
  local L0_2, L1_2
  L0_2 = L0_1
  return L0_2
end
GetLamps = L4_1
L4_1 = MySQL
L4_1 = L4_1.ready
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = false
  while not L0_2 do
    L1_2 = pcall
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      L0_3 = MySQL
      L0_3 = L0_3.query
      L0_3 = L0_3.await
      L1_3 = "SELECT * FROM lunar_drugscreator_lamps"
      L0_3 = L0_3(L1_3)
      L1_3 = 1
      L2_3 = #L0_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = L0_3[L4_3]
        L7_3 = L5_3.id
        L6_3 = L0_1
        L8_3 = json
        L8_3 = L8_3.decode
        L9_3 = L5_3.data
        L8_3 = L8_3(L9_3)
        L6_3[L7_3] = L8_3
        L7_3 = L5_3.id
        L6_3 = L0_1
        L6_3 = L6_3[L7_3]
        L7_3 = vector3
        L8_3 = L6_3.coords
        L8_3 = L8_3.x
        L9_3 = L6_3.coords
        L9_3 = L9_3.y
        L10_3 = L6_3.coords
        L10_3 = L10_3.z
        L7_3 = L7_3(L8_3, L9_3, L10_3)
        L6_3.coords = L7_3
        L7_3 = vector3
        L8_3 = L6_3.rotation
        L8_3 = L8_3.x
        L9_3 = L6_3.rotation
        L9_3 = L9_3.y
        L10_3 = L6_3.rotation
        L10_3 = L10_3.z
        L7_3 = L7_3(L8_3, L9_3, L10_3)
        L6_3.rotation = L7_3
      end
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
  L1_2 = true
  L3_1 = L1_2
end
L4_1(L5_1)
L4_1 = {}
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:lamps:init"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = source
  L1_2 = L4_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    return
  end
  L1_2 = L4_1
  L1_2[L0_2] = true
  while true do
    L1_2 = L3_1
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L1_2 = TriggerLatentClientEvent
  L2_2 = "lunar_drugscreator:lamps:update"
  L3_2 = L0_2
  L4_2 = 50000
  L5_2 = L0_1
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = MySQL
    L1_2 = L1_2.insert
    L1_2 = L1_2.await
    L2_2 = "INSERT INTO lunar_drugscreator_lamps (id, data) VALUES (?, ?) ON DUPLICATE KEY UPDATE data = VALUES(data)"
    L3_2 = {}
    L4_2 = A0_2
    L5_2 = json
    L5_2 = L5_2.encode
    L6_2 = L0_1
    L6_2 = L6_2[A0_2]
    L5_2, L6_2 = L5_2(L6_2)
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = MySQL
    L1_2 = L1_2.update
    L1_2 = L1_2.await
    L2_2 = "DELETE FROM lunar_drugscreator_lamps WHERE id = ?"
    L3_2 = {}
    L4_2 = A0_2
    L3_2[1] = L4_2
    L1_2(L2_2, L3_2)
  end
end
L6_1 = RegisterNetEvent
L7_1 = "lunar_drugscreator:lamps:take"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if not L2_2 or not L3_2 then
    return
  end
  L4_2 = L3_2.routingBucket
  L5_2 = GetPlayerRoutingBucket
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  if L4_2 ~= L5_2 then
    return
  end
  L4_2 = nil
  L5_2 = 1
  L6_2 = ServerConfig
  L6_2 = L6_2.lamps
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = ServerConfig
    L9_2 = L9_2.lamps
    L9_2 = L9_2[L8_2]
    L10_2 = L9_2.model
    L11_2 = L9_2.model
    if L10_2 == L11_2 then
      L4_2 = L9_2
    end
  end
  if not L4_2 then
    return
  end
  L5_2 = L0_1
  L5_2[A0_2] = nil
  L6_2 = L2_2
  L5_2 = L2_2.addItem
  L7_2 = L4_2.item
  L8_2 = 1
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L5_1
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = TriggerClientEvent
  L6_2 = "lunar_drugscreator:lamps:remove"
  L7_2 = -1
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = RecalculateAddedLight
  L6_2 = L0_1
  L5_2(L6_2)
  L5_2 = SendLog
  L6_2 = L1_2
  L7_2 = "Picked up lamp %s."
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = L4_2.item
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L6_1(L7_1, L8_1)
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = 1
  L1_2 = ServerConfig
  L1_2 = L1_2.lamps
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = ServerConfig
    L4_2 = L4_2.lamps
    L4_2 = L4_2[L3_2]
    L6_2 = L4_2.item
    L5_2 = L1_1
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
        if not L1_3 then
          return
        end
        L3_3 = L4_2.item
        L2_3 = L2_1
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
      L5_2 = L1_1
      L5_2[L6_2] = true
    end
    L6_2 = L4_2.item
    L5_2 = L2_1
    function L7_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
      L2_3 = A0_3
      L1_3 = A0_3.hasItem
      L3_3 = L4_2.item
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        return
      end
      L1_3 = lib
      L1_3 = L1_3.callback
      L1_3 = L1_3.await
      L2_3 = "lunar_drugscreator:lamps:place"
      L3_3 = A0_3.source
      L4_3 = L4_2.model
      L1_3, L2_3, L3_3 = L1_3(L2_3, L3_3, L4_3)
      if L1_3 then
        L5_3 = A0_3
        L4_3 = A0_3.hasItem
        L6_3 = L4_2.item
        L4_3 = L4_3(L5_3, L6_3)
        if L4_3 then
          goto lbl_22
        end
      end
      do return end
      ::lbl_22::
      L5_3 = A0_3
      L4_3 = A0_3.removeItem
      L6_3 = L4_2.item
      L7_3 = 1
      L4_3(L5_3, L6_3, L7_3)
      L4_3 = L0_1
      L4_3 = #L4_3
      L4_3 = L4_3 + 1
      L5_3 = L0_1
      L6_3 = {}
      L7_3 = L4_2.model
      L6_3.model = L7_3
      L6_3.coords = L2_3
      L6_3.rotation = L3_3
      L7_3 = GetPlayerRoutingBucket
      L8_3 = tostring
      L9_3 = A0_3.source
      L8_3, L9_3 = L8_3(L9_3)
      L7_3 = L7_3(L8_3, L9_3)
      L6_3.routingBucket = L7_3
      L5_3[L4_3] = L6_3
      L5_3 = L5_1
      L6_3 = L4_3
      L5_3(L6_3)
      L5_3 = TriggerClientEvent
      L6_3 = "lunar_drugscreator:lamps:addLamp"
      L7_3 = -1
      L8_3 = L4_3
      L9_3 = L0_1
      L9_3 = L9_3[L4_3]
      L5_3(L6_3, L7_3, L8_3, L9_3)
      L5_3 = RecalculateAddedLight
      L6_3 = L0_1
      L5_3(L6_3)
    end
    L5_2[L6_2] = L7_2
  end
end
L7_1 = {}
L7_1.field = "lamps"
L7_1.reload = L6_1
Lamps = L7_1
