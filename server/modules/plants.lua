-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = false
L4_1 = MySQL
L4_1 = L4_1.ready
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  while true do
    L0_2 = ServerConfig
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
  end
  L0_2 = false
  while not L0_2 do
    L1_2 = pcall
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
      L0_3 = MySQL
      L0_3 = L0_3.query
      L0_3 = L0_3.await
      L1_3 = "SELECT * FROM lunar_drugscreator_plants"
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
        L7_3 = L6_3.plantTypeId
        if not L7_3 then
          L7_3 = 1
          L8_3 = ServerConfig
          L8_3 = L8_3.plants
          L8_3 = #L8_3
          L9_3 = 1
          for L10_3 = L7_3, L8_3, L9_3 do
            L11_3 = ServerConfig
            L11_3 = L11_3.plants
            L11_3 = L11_3[L10_3]
            L11_3 = L11_3.seedItem
            L12_3 = L6_3.seedItem
            if L11_3 == L12_3 then
              L6_3.plantTypeId = L10_3
              break
            end
          end
        end
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
L4_1 = CreateThread
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  while true do
    L0_2 = ServerConfig
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
  end
  while true do
    L0_2 = Wait
    L1_2 = ServerConfig
    L1_2 = L1_2.generalSettings
    L1_2 = L1_2.plantInterval
    L1_2 = L1_2 * 60000
    L0_2(L1_2)
    L0_2 = {}
    L1_2 = 0
    L2_2 = {}
    L3_2 = pairs
    L4_2 = L0_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = ServerConfig
      L9_2 = L9_2.plants
      L10_2 = L8_2.plantTypeId
      L9_2 = L9_2[L10_2]
      if L9_2 then
        L10_2 = L9_2.growthDuration
        L11_2 = 1.0
        L10_2 = L11_2 / L10_2
        L11_2 = ServerConfig
        L11_2 = L11_2.generalSettings
        L11_2 = L11_2.plantInterval
        L10_2 = L10_2 * L11_2
        L11_2 = L8_2.sunlight
        L12_2 = L8_2.water
        L11_2 = L11_2 + L12_2
        L12_2 = L8_2.fertilizer
        L11_2 = L11_2 + L12_2
        L11_2 = L11_2 / 3
        L12_2 = L10_2 * L11_2
        L13_2 = math
        L13_2 = L13_2.min
        L14_2 = 1.0
        L15_2 = L8_2.growth
        L15_2 = L15_2 + L12_2
        L13_2 = L13_2(L14_2, L15_2)
        L8_2.growth = L13_2
        L13_2 = L9_2.statsDecrement
        L14_2 = ServerConfig
        L14_2 = L14_2.generalSettings
        L14_2 = L14_2.plantInterval
        L13_2 = L13_2 * L14_2
        L14_2 = math
        L14_2 = L14_2.max
        L15_2 = 0
        L16_2 = L8_2.water
        L16_2 = L16_2 - L13_2
        L14_2 = L14_2(L15_2, L16_2)
        L8_2.water = L14_2
        L14_2 = math
        L14_2 = L14_2.max
        L15_2 = 0
        L16_2 = L8_2.fertilizer
        L16_2 = L16_2 - L13_2
        L14_2 = L14_2(L15_2, L16_2)
        L8_2.fertilizer = L14_2
        L1_2 = L1_2 + 1
        L14_2 = {}
        L15_2 = json
        L15_2 = L15_2.encode
        L16_2 = L8_2
        L15_2 = L15_2(L16_2)
        L16_2 = L7_2
        L14_2[1] = L15_2
        L14_2[2] = L16_2
        L0_2[L1_2] = L14_2
        L2_2[L7_2] = L8_2
      end
    end
    if L1_2 > 0 then
      L3_2 = "UPDATE lunar_drugscreator_plants SET data = ? WHERE id = ?"
      L4_2 = MySQL
      L4_2 = L4_2.prepare
      L4_2 = L4_2.await
      L5_2 = L3_2
      L6_2 = L0_2
      L4_2(L5_2, L6_2)
      L4_2 = TriggerLatentClientEvent
      L5_2 = "lunar_drugscreator:plants:updateChanged"
      L6_2 = -1
      L7_2 = 50000
      L8_2 = L2_2
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
end
L4_1(L5_1)
L4_1 = {}
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:plants:init"
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
  L2_2 = "lunar_drugscreator:plants:update"
  L3_2 = L0_2
  L4_2 = 50000
  L5_2 = L0_1
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L5_1(L6_1, L7_1)
L5_1 = lib
L5_1 = L5_1.callback
L5_1 = L5_1.register
L6_1 = "lunar_drugscreator:plants:getRoutingBucket"
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetPlayerRoutingBucket
  L2_2 = A0_2
  return L1_2(L2_2)
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
    L2_2 = "INSERT INTO lunar_drugscreator_plants (id, data) VALUES (?, ?) ON DUPLICATE KEY UPDATE data = VALUES(data)"
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
    L2_2 = "DELETE FROM lunar_drugscreator_plants WHERE id = ?"
    L3_2 = {}
    L4_2 = A0_2
    L3_2[1] = L4_2
    L1_2(L2_2, L3_2)
  end
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = 0.0
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = nil
    L10_2 = 1
    L11_2 = ServerConfig
    L11_2 = L11_2.lamps
    L11_2 = #L11_2
    L12_2 = 1
    for L13_2 = L10_2, L11_2, L12_2 do
      L14_2 = ServerConfig
      L14_2 = L14_2.lamps
      L14_2 = L14_2[L13_2]
      L14_2 = L14_2.model
      L15_2 = L8_2.model
      if L14_2 == L15_2 then
        L14_2 = ServerConfig
        L14_2 = L14_2.lamps
        L9_2 = L14_2[L13_2]
        break
      end
    end
    if L9_2 then
      L10_2 = L9_2.range
      if not L10_2 then
      else
        L10_2 = A0_2.routingBucket
        L11_2 = L8_2.routingBucket
        if L10_2 == L11_2 then
          L10_2 = L8_2.coords
          L11_2 = A0_2.coords
          L10_2 = L10_2 - L11_2
          L10_2 = #L10_2
          L11_2 = L9_2.range
          if L10_2 <= L11_2 then
            L11_2 = L9_2.ambient
            if L11_2 then
              L11_2 = L9_2.range
              L11_2 = L10_2 / L11_2
              L12_2 = 1.0
              L11_2 = L12_2 - L11_2
              L2_2 = L2_2 + L11_2
            else
              L11_2 = math
              L11_2 = L11_2.rad
              L12_2 = L8_2.rotation
              L12_2 = L12_2.x
              L11_2 = L11_2(L12_2)
              L12_2 = math
              L12_2 = L12_2.rad
              L13_2 = L8_2.rotation
              L13_2 = L13_2.y
              L12_2 = L12_2(L13_2)
              L13_2 = math
              L13_2 = L13_2.rad
              L14_2 = L8_2.rotation
              L14_2 = L14_2.z
              L13_2 = L13_2(L14_2)
              L14_2 = L9_2.headingOffset
              if L14_2 then
                L14_2 = math
                L14_2 = L14_2.rad
                L15_2 = L9_2.headingOffset
                L14_2 = L14_2(L15_2)
                L13_2 = L13_2 + L14_2
              end
              L14_2 = vector3
              L15_2 = math
              L15_2 = L15_2.sin
              L16_2 = L13_2
              L15_2 = L15_2(L16_2)
              L15_2 = -L15_2
              L16_2 = math
              L16_2 = L16_2.cos
              L17_2 = L11_2
              L16_2 = L16_2(L17_2)
              L15_2 = L15_2 * L16_2
              L16_2 = math
              L16_2 = L16_2.cos
              L17_2 = L13_2
              L16_2 = L16_2(L17_2)
              L17_2 = math
              L17_2 = L17_2.cos
              L18_2 = L11_2
              L17_2 = L17_2(L18_2)
              L16_2 = L16_2 * L17_2
              L17_2 = math
              L17_2 = L17_2.sin
              L18_2 = L11_2
              L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2)
              L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
              L15_2 = vector3
              L16_2 = A0_2.coords
              L16_2 = L16_2.x
              L17_2 = L8_2.coords
              L17_2 = L17_2.x
              L16_2 = L16_2 - L17_2
              L17_2 = A0_2.coords
              L17_2 = L17_2.y
              L18_2 = L8_2.coords
              L18_2 = L18_2.y
              L17_2 = L17_2 - L18_2
              L18_2 = A0_2.coords
              L18_2 = L18_2.z
              L19_2 = L8_2.coords
              L19_2 = L19_2.z
              L18_2 = L18_2 - L19_2
              L15_2 = L15_2(L16_2, L17_2, L18_2)
              L16_2 = #L15_2
              if L16_2 > 0 then
                L15_2 = L15_2 / L16_2
              end
              L17_2 = L14_2.x
              L18_2 = L15_2.x
              L17_2 = L17_2 * L18_2
              L18_2 = L14_2.y
              L19_2 = L15_2.y
              L18_2 = L18_2 * L19_2
              L17_2 = L17_2 + L18_2
              L18_2 = L14_2.z
              L19_2 = L15_2.z
              L18_2 = L18_2 * L19_2
              L17_2 = L17_2 + L18_2
              L18_2 = 0.5
              if L17_2 >= L18_2 then
                L18_2 = L9_2.range
                L18_2 = L10_2 / L18_2
                L19_2 = 1.0
                L18_2 = L19_2 - L18_2
                L19_2 = L17_2 - 0.5
                L19_2 = L19_2 / 0.5
                L20_2 = 0.3 * L19_2
                L20_2 = 0.7 + L20_2
                L18_2 = L18_2 * L20_2
                L2_2 = L2_2 + L18_2
              end
            end
          end
        end
      end
    end
  end
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = 1.0
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L6_2.addedLight = 0.0
  end
  L1_2 = {}
  L2_2 = 0
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L0_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L6_1
    L11_2 = L9_2
    L12_2 = A0_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = L9_2.addedLight
    if L10_2 ~= L11_2 then
      L9_2.addedLight = L10_2
      L2_2 = L2_2 + 1
      L11_2 = {}
      L12_2 = json
      L12_2 = L12_2.encode
      L13_2 = L9_2
      L12_2 = L12_2(L13_2)
      L13_2 = L8_2
      L11_2[1] = L12_2
      L11_2[2] = L13_2
      L1_2[L2_2] = L11_2
      L3_2[L8_2] = L9_2
    end
  end
  if L2_2 > 0 then
    L4_2 = "UPDATE lunar_drugscreator_plants SET data = ? WHERE id = ?"
    L5_2 = MySQL
    L5_2 = L5_2.prepare
    L5_2 = L5_2.await
    L6_2 = L4_2
    L7_2 = L1_2
    L5_2(L6_2, L7_2)
    L5_2 = TriggerLatentClientEvent
    L6_2 = "lunar_drugscreator:plants:updateChanged"
    L7_2 = -1
    L8_2 = 50000
    L9_2 = L3_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
RecalculateAddedLight = L7_1
L7_1 = RegisterNetEvent
L8_1 = "lunar_drugscreator:plants:harvest"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L4_2 = Utils
    L4_2 = L4_2.distanceCheck
    L5_2 = L1_2
    L6_2 = L3_2.coords
    L7_2 = 5.0
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L4_2 then
      goto lbl_22
    end
  end
  do return end
  ::lbl_22::
  L4_2 = ServerConfig
  L4_2 = L4_2.plants
  L5_2 = L3_2.plantTypeId
  L4_2 = L4_2[L5_2]
  if not L4_2 then
    return
  end
  L5_2 = L0_1
  L5_2[A0_2] = nil
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = L4_2.maxGiveCount
  L7_2 = L3_2.growth
  L6_2 = L6_2 * L7_2
  L5_2 = L5_2(L6_2)
  L7_2 = L2_2
  L6_2 = L2_2.addItem
  L8_2 = L4_2.giveItem
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = L4_2.giveSeedChance
  if L6_2 then
    L6_2 = math
    L6_2 = L6_2.random
    L6_2 = L6_2()
    L7_2 = L4_2.giveSeedChance
    if L6_2 <= L7_2 then
      L7_2 = L2_2
      L6_2 = L2_2.addItem
      L8_2 = L3_2.seedItem
      L9_2 = 1
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L6_2 = L5_1
  L7_2 = A0_2
  L6_2(L7_2)
  L6_2 = TriggerClientEvent
  L7_2 = "lunar_drugscreator:plants:updatePlant"
  L8_2 = -1
  L9_2 = A0_2
  L10_2 = nil
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = SendLog
  L7_2 = L1_2
  L8_2 = "Harvested %s plant."
  L9_2 = L8_2
  L8_2 = L8_2.format
  L10_2 = L4_2.giveItem
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L7_1(L8_1, L9_1)
L7_1 = lib
L7_1 = L7_1.callback
L7_1 = L7_1.register
L8_1 = "lunar_drugscreator:plants:canWater"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L0_1
  L4_2 = L4_2[A1_2]
  if not L4_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = ServerConfig
  L5_2 = L5_2.plants
  L6_2 = L4_2.plantTypeId
  L5_2 = L5_2[L6_2]
  if L5_2 then
    L6_2 = L5_2.waterItem
    if L6_2 then
      L7_2 = L3_2
      L6_2 = L3_2.hasItem
      L8_2 = L5_2.waterItem
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        goto lbl_37
      end
    end
  end
  L6_2 = false
  L7_2 = locale
  L8_2 = "missing_"
  L9_2 = L5_2.waterItem
  L8_2 = L8_2 .. L9_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  do return L6_2, L7_2, L8_2, L9_2 end
  ::lbl_37::
  L6_2 = L4_2.water
  if L6_2 >= 1.0 then
    L6_2 = false
    L7_2 = locale
    L8_2 = "max_water"
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    return L6_2, L7_2, L8_2, L9_2
  end
  L7_2 = L3_2
  L6_2 = L3_2.removeItem
  L8_2 = L5_2.waterItem
  L9_2 = 1
  L6_2(L7_2, L8_2, L9_2)
  L4_2.water = 1.0
  L6_2 = L5_1
  L7_2 = A1_2
  L6_2(L7_2)
  L6_2 = SetTimeout
  L7_2 = ServerConfig
  L7_2 = L7_2.generalSettings
  L7_2 = L7_2.progressDurations
  L7_2 = L7_2.watering
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = TriggerClientEvent
    L1_3 = "lunar_drugscreator:plants:updatePlant"
    L2_3 = -1
    L3_3 = A1_2
    L5_3 = A1_2
    L4_3 = L0_1
    L4_3 = L4_3[L5_3]
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L6_2(L7_2, L8_2)
  L6_2 = true
  return L6_2
end
L7_1(L8_1, L9_1)
L7_1 = lib
L7_1 = L7_1.callback
L7_1 = L7_1.register
L8_1 = "lunar_drugscreator:plants:canFertilize"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L0_1
  L4_2 = L4_2[A1_2]
  if not L4_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = ServerConfig
  L5_2 = L5_2.plants
  L6_2 = L4_2.plantTypeId
  L5_2 = L5_2[L6_2]
  if L5_2 then
    L6_2 = L5_2.fertilizerItem
    if L6_2 then
      L7_2 = L3_2
      L6_2 = L3_2.hasItem
      L8_2 = L5_2.fertilizerItem
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        goto lbl_37
      end
    end
  end
  L6_2 = false
  L7_2 = locale
  L8_2 = "missing_"
  L9_2 = L5_2.fertilizerItem
  L8_2 = L8_2 .. L9_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  do return L6_2, L7_2, L8_2, L9_2 end
  ::lbl_37::
  L6_2 = L4_2.fertilizer
  if L6_2 >= 1.0 then
    L6_2 = false
    L7_2 = locale
    L8_2 = "max_fertilizer"
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    return L6_2, L7_2, L8_2, L9_2
  end
  L7_2 = L3_2
  L6_2 = L3_2.removeItem
  L8_2 = L5_2.fertilizerItem
  L9_2 = 1
  L6_2(L7_2, L8_2, L9_2)
  L4_2.fertilizer = 1.0
  L6_2 = L5_1
  L7_2 = A1_2
  L6_2(L7_2)
  L6_2 = SetTimeout
  L7_2 = ServerConfig
  L7_2 = L7_2.generalSettings
  L7_2 = L7_2.progressDurations
  L7_2 = L7_2.fertilizing
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = TriggerClientEvent
    L1_3 = "lunar_drugscreator:plants:updatePlant"
    L2_3 = -1
    L3_3 = A1_2
    L5_3 = A1_2
    L4_3 = L0_1
    L4_3 = L4_3[L5_3]
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L6_2(L7_2, L8_2)
  L6_2 = true
  return L6_2
end
L7_1(L8_1, L9_1)
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 0
  L3_2 = pairs
  L4_2 = L0_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.ownerIdentifier
    if L9_2 == A0_2 then
      L9_2 = L8_2.plantTypeId
      if L9_2 == A1_2 then
        L2_2 = L2_2 + 1
      end
    end
  end
  return L2_2
end
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = ServerConfig
  L2_2 = L2_2.plants
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.seedItem
    L7_2 = L0_2[L7_2]
    if not L7_2 then
      L7_2 = L6_2.seedItem
      L8_2 = {}
      L0_2[L7_2] = L8_2
    end
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L6_2.seedItem
    L8_2 = L0_2[L8_2]
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2.seedItem
    L7_2 = L1_1
    L7_2 = L7_2[L8_2]
    if not L7_2 then
      L7_2 = Framework
      L7_2 = L7_2.registerUsableItem
      L8_2 = L6_2.seedItem
      function L9_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3
        L1_3 = Framework
        L1_3 = L1_3.getPlayerFromId
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          return
        end
        L3_3 = L6_2.seedItem
        L2_3 = L2_1
        L2_3 = L2_3[L3_3]
        if not L2_3 then
          return
        end
        L3_3 = L2_3
        L4_3 = L1_3
        L3_3(L4_3)
      end
      L7_2(L8_2, L9_2)
      L8_2 = L6_2.seedItem
      L7_2 = L1_1
      L7_2[L8_2] = true
    end
  end
  L1_2 = pairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L2_1
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3
      L2_3 = A0_3
      L1_3 = A0_3.hasItem
      L3_3 = L5_2
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        return
      end
      L1_3 = {}
      L2_3 = nil
      L3_3 = nil
      L4_3 = ipairs
      L5_3 = L6_2
      L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
      for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
        L10_3 = ServerConfig
        L10_3 = L10_3.plants
        L10_3 = L10_3[L9_3]
        L11_3 = true
        L12_3 = {}
        L13_3 = L10_3.requiredItems
        if L13_3 then
          L13_3 = L10_3.requiredItems
          L13_3 = #L13_3
          if L13_3 > 0 then
            L13_3 = ipairs
            L14_3 = L10_3.requiredItems
            L13_3, L14_3, L15_3, L16_3 = L13_3(L14_3)
            for L17_3, L18_3 in L13_3, L14_3, L15_3, L16_3 do
              L20_3 = A0_3
              L19_3 = A0_3.getItemCount
              L21_3 = L18_3.name
              L19_3 = L19_3(L20_3, L21_3)
              L20_3 = L18_3.amount
              if L19_3 < L20_3 then
                L11_3 = false
                L19_3 = table
                L19_3 = L19_3.insert
                L20_3 = L12_3
                L21_3 = L18_3.name
                L19_3(L20_3, L21_3)
                if not L2_3 then
                  L2_3 = L18_3.name
                  L3_3 = L9_3
                end
              end
            end
            if not L11_3 then
              L1_3[L9_3] = L12_3
          end
        end
        else
          L13_3 = L10_3.maxPerPlayer
          if L13_3 then
            L14_3 = A0_3
            L13_3 = A0_3.getIdentifier
            L13_3 = L13_3(L14_3)
            L14_3 = L7_1
            L15_3 = L13_3
            L16_3 = L9_3
            L14_3 = L14_3(L15_3, L16_3)
            L15_3 = L10_3.maxPerPlayer
            if L14_3 >= L15_3 then
              L15_3 = LR
              L15_3 = L15_3.notify
              L16_3 = A0_3.source
              L17_3 = locale
              L18_3 = "max_plants_reached"
              L17_3 = L17_3(L18_3)
              L18_3 = "error"
              L15_3(L16_3, L17_3, L18_3)
              return
            end
          end
          L13_3 = lib
          L13_3 = L13_3.callback
          L13_3 = L13_3.await
          L14_3 = "lunar_drugscreator:plants:plant"
          L15_3 = A0_3.source
          L16_3 = L5_2
          L17_3 = L9_3
          L13_3, L14_3, L15_3, L16_3 = L13_3(L14_3, L15_3, L16_3, L17_3)
          if L13_3 then
            L18_3 = A0_3
            L17_3 = A0_3.hasItem
            L19_3 = L5_2
            L17_3 = L17_3(L18_3, L19_3)
            if not L17_3 then
              return
            end
            L17_3 = L10_3.requiredItems
            if L17_3 then
              L17_3 = L10_3.requiredItems
              L17_3 = #L17_3
              if L17_3 > 0 then
                L17_3 = ipairs
                L18_3 = L10_3.requiredItems
                L17_3, L18_3, L19_3, L20_3 = L17_3(L18_3)
                for L21_3, L22_3 in L17_3, L18_3, L19_3, L20_3 do
                  L24_3 = A0_3
                  L23_3 = A0_3.getItemCount
                  L25_3 = L22_3.name
                  L23_3 = L23_3(L24_3, L25_3)
                  L24_3 = L22_3.amount
                  if L23_3 < L24_3 then
                    return
                  end
                  L23_3 = L22_3.removeAfterUse
                  if L23_3 then
                    L24_3 = A0_3
                    L23_3 = A0_3.removeItem
                    L25_3 = L22_3.name
                    L26_3 = L22_3.amount
                    L23_3(L24_3, L25_3, L26_3)
                  end
                end
              end
            end
            L18_3 = A0_3
            L17_3 = A0_3.removeItem
            L19_3 = L5_2
            L20_3 = 1
            L17_3(L18_3, L19_3, L20_3)
            L17_3 = L0_1
            L17_3 = #L17_3
            L17_3 = L17_3 + 1
            L18_3 = GetPlayerRoutingBucket
            L19_3 = tostring
            L20_3 = A0_3.source
            L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3 = L19_3(L20_3)
            L18_3 = L18_3(L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
            L19_3 = {}
            L20_3 = L5_2
            L19_3.seedItem = L20_3
            L19_3.plantTypeId = L9_3
            L19_3.coords = L14_3
            L19_3.rotation = L15_3
            L19_3.sunlight = L16_3
            L19_3.growth = 0
            L19_3.water = 0
            L19_3.fertilizer = 0
            L19_3.routingBucket = L18_3
            L19_3.addedLight = 0
            L21_3 = A0_3
            L20_3 = A0_3.getIdentifier
            L20_3 = L20_3(L21_3)
            L19_3.ownerIdentifier = L20_3
            L20_3 = L6_1
            L21_3 = L19_3
            L22_3 = GetLamps
            L22_3, L23_3, L24_3, L25_3, L26_3 = L22_3()
            L20_3 = L20_3(L21_3, L22_3, L23_3, L24_3, L25_3, L26_3)
            L19_3.addedLight = L20_3
            L20_3 = L0_1
            L20_3[L17_3] = L19_3
            L20_3 = L5_1
            L21_3 = L17_3
            L20_3(L21_3)
            L20_3 = TriggerClientEvent
            L21_3 = "lunar_drugscreator:plants:updatePlant"
            L22_3 = -1
            L23_3 = L17_3
            L24_3 = L0_1
            L24_3 = L24_3[L17_3]
            L20_3(L21_3, L22_3, L23_3, L24_3)
            return
          end
        end
      end
      if L2_3 then
        L4_3 = LR
        L4_3 = L4_3.notify
        L5_3 = A0_3.source
        L6_3 = locale
        L7_3 = "missing_"
        L8_3 = L2_3
        L7_3 = L7_3 .. L8_3
        L6_3 = L6_3(L7_3)
        L7_3 = "error"
        L4_3(L5_3, L6_3, L7_3)
      end
    end
    L7_2[L5_2] = L8_2
  end
end
L9_1 = {}
L9_1.field = "plants"
L9_1.reload = L8_1
Plants = L9_1
