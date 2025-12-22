-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = math
L0_1 = L0_1.randomseed
L1_1 = os
L1_1 = L1_1.time
L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1 = L1_1()
L0_1(L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1)
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = 0
L4_1 = RegisterNetEvent
L5_1 = "lunar_drugscreator:harvesting:getZones"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = source
  L1_2 = L2_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    return
  end
  L1_2 = L2_1
  L1_2[L0_2] = true
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L1_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = #L1_2
    L8_2 = L8_2 + 1
    L9_2 = {}
    L10_2 = L7_2.coords
    L9_2.coords = L10_2
    L10_2 = L7_2.index
    L9_2.index = L10_2
    L10_2 = L7_2.locationIndex
    L9_2.locationIndex = L10_2
    L9_2.id = L6_2
    L1_2[L8_2] = L9_2
  end
  L2_2 = TriggerLatentClientEvent
  L3_2 = "lunar_drugscreator:harvesting:initZones"
  L4_2 = L0_2
  L5_2 = 50000
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L4_1(L5_1, L6_1)
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  while true do
    L0_2 = ServerConfig
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
  end
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = ClearInterval
    L7_2 = L5_2.interval
    L6_2(L7_2)
    L6_2 = L0_1
    L6_2[L4_2] = nil
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  L1_2 = L0_1
  L0_2(L1_2)
  L0_2 = table
  L0_2 = L0_2.wipe
  L1_2 = L1_1
  L0_2(L1_2)
  L0_2 = TriggerClientEvent
  L1_2 = "lunar_drugscreator:harvesting:reset"
  L2_2 = -1
  L0_2(L1_2, L2_2)
  L0_2 = 1
  L1_2 = ServerConfig
  L1_2 = L1_2.harvestingZones
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = ServerConfig
    L4_2 = L4_2.harvestingZones
    L4_2 = L4_2[L3_2]
    L5_2 = 1
    L6_2 = L4_2.locations
    L6_2 = #L6_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L4_2.locations
      L9_2 = L9_2[L8_2]
      L10_2 = "%s_%s"
      L11_2 = L10_2
      L10_2 = L10_2.format
      L12_2 = L3_2
      L13_2 = L8_2
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L11_2 = SetInterval
      function L12_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
        L1_3 = L10_2
        L0_3 = L0_1
        L0_3 = L0_3[L1_3]
        if L0_3 then
          L1_3 = L10_2
          L0_3 = L0_1
          L0_3 = L0_3[L1_3]
          L0_3 = L0_3.spawnedCount
          L1_3 = L4_2.maxSpawned
          if not (L0_3 >= L1_3) then
            goto lbl_14
          end
        end
        do return end
        ::lbl_14::
        L0_3 = nil
        L1_3 = false
        L2_3 = 0
        L3_3 = 20
        while not L1_3 and L2_3 < L3_3 do
          L2_3 = L2_3 + 1
          L4_3 = L9_2.radius
          L5_3 = vector3
          L6_3 = L9_2.coords
          L6_3 = L6_3.x
          L7_3 = math
          L7_3 = L7_3.random
          L7_3 = L7_3()
          L8_3 = L4_3 * 2
          L7_3 = L7_3 * L8_3
          L7_3 = L7_3 - L4_3
          L6_3 = L6_3 + L7_3
          L7_3 = L9_2.coords
          L7_3 = L7_3.y
          L8_3 = math
          L8_3 = L8_3.random
          L8_3 = L8_3()
          L9_3 = L4_3 * 2
          L8_3 = L8_3 * L9_3
          L8_3 = L8_3 - L4_3
          L7_3 = L7_3 + L8_3
          L8_3 = L9_2.coords
          L8_3 = L8_3.z
          L5_3 = L5_3(L6_3, L7_3, L8_3)
          L0_3 = L5_3
          L1_3 = true
          L5_3 = pairs
          L6_3 = L1_1
          L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
          for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
            L11_3 = L10_3.zoneId
            L12_3 = L10_2
            if L11_3 == L12_3 then
              L11_3 = L0_3.xy
              L12_3 = L10_3.coords
              L12_3 = L12_3.xy
              L11_3 = L11_3 - L12_3
              L11_3 = #L11_3
              if L11_3 < 1.0 then
                L1_3 = false
                break
              end
            end
          end
        end
        if not L1_3 then
          return
        end
        L4_3 = L3_1
        L4_3 = L4_3 + 1
        L3_1 = L4_3
        L4_3 = L3_1
        L5_3 = L1_1
        L6_3 = {}
        L6_3.coords = L0_3
        L7_3 = L3_2
        L6_3.index = L7_3
        L7_3 = L8_2
        L6_3.locationIndex = L7_3
        L7_3 = L10_2
        L6_3.zoneId = L7_3
        L5_3[L4_3] = L6_3
        L6_3 = L10_2
        L5_3 = L0_1
        L5_3 = L5_3[L6_3]
        L6_3 = L5_3.spawnedCount
        L6_3 = L6_3 + 1
        L5_3.spawnedCount = L6_3
        L5_3 = TriggerClientEvent
        L6_3 = "lunar_drugscreator:harvesting:spawn"
        L7_3 = -1
        L8_3 = L0_3
        L9_3 = L3_2
        L10_3 = L8_2
        L11_3 = L4_3
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      end
      L13_2 = L9_2.interval
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = L0_1
      L13_2 = {}
      L13_2.interval = L11_2
      L14_2 = L9_2.coords
      L13_2.coords = L14_2
      L13_2.index = L3_2
      L13_2.locationIndex = L8_2
      L13_2.zone = L4_2
      L13_2.spawnedCount = 0
      L12_2[L10_2] = L13_2
    end
  end
end
L5_1 = {}
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = L6_2.amount
    L7_2 = L7_2.max
    if not L7_2 then
      L7_2 = L6_2.amount
    end
    L9_2 = A0_2
    L8_2 = A0_2.canCarryItem
    L10_2 = L6_2.name
    L11_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    if not L8_2 then
      L8_2 = false
      return L8_2
    end
  end
  L2_2 = true
  return L2_2
end
L7_1 = lib
L7_1 = L7_1.callback
L7_1 = L7_1.register
L8_1 = "lunar_drugscreator:harvesting:startHarvesting"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L3_2 = L3_2[A1_2]
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L5_2 = L3_2.zoneId
  L4_2 = L0_1
  L4_2 = L4_2[L5_2]
  if L2_2 then
    L5_2 = L5_1
    L5_2 = L5_2[A0_2]
    if not L5_2 and L4_2 then
      L5_2 = L3_2.coords
      L5_2 = L5_2.xy
      L6_2 = GetEntityCoords
      L7_2 = GetPlayerPed
      L8_2 = A0_2
      L7_2, L8_2 = L7_2(L8_2)
      L6_2 = L6_2(L7_2, L8_2)
      L6_2 = L6_2.xy
      L5_2 = L5_2 - L6_2
      L5_2 = #L5_2
      if not (L5_2 > 10.0) then
        goto lbl_37
      end
    end
  end
  L5_2 = false
  do return L5_2 end
  ::lbl_37::
  L5_2 = L6_1
  L6_2 = L2_2
  L7_2 = L4_2.zone
  L7_2 = L7_2.giveItems
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = L5_1
  L5_2[A0_2] = true
  L5_2 = SetTimeout
  L6_2 = L4_2.zone
  L6_2 = L6_2.duration
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = A0_2
    L0_3 = L5_1
    L0_3 = L0_3[L1_3]
    if L0_3 then
      L1_3 = A1_2
      L0_3 = L1_1
      L0_3 = L0_3[L1_3]
      if L0_3 then
        goto lbl_15
      end
    end
    L1_3 = A0_2
    L0_3 = L5_1
    L0_3[L1_3] = nil
    do return end
    ::lbl_15::
    L1_3 = A1_2
    L0_3 = L1_1
    L0_3[L1_3] = nil
    L1_3 = A0_2
    L0_3 = L5_1
    L0_3[L1_3] = nil
    L0_3 = {}
    L1_3 = 1
    L2_3 = L4_2.zone
    L2_3 = L2_3.giveItems
    L2_3 = #L2_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = L4_2.zone
      L5_3 = L5_3.giveItems
      L5_3 = L5_3[L4_3]
      L6_3 = math
      L6_3 = L6_3.random
      L7_3 = L5_3.amount
      L7_3 = L7_3.min
      L8_3 = L5_3.amount
      L8_3 = L8_3.max
      L6_3 = L6_3(L7_3, L8_3)
      L7_3 = L2_2
      L8_3 = L7_3
      L7_3 = L7_3.addItem
      L9_3 = L5_3.name
      L10_3 = L6_3
      L7_3(L8_3, L9_3, L10_3)
      L7_3 = #L0_3
      L7_3 = L7_3 + 1
      L8_3 = "%sx %s"
      L9_3 = L8_3
      L8_3 = L8_3.format
      L10_3 = L6_3
      L11_3 = L5_3.name
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      L0_3[L7_3] = L8_3
    end
    L1_3 = L4_2
    if L1_3 then
      L1_3 = L3_2
      if L1_3 then
        L2_3 = L3_2.zoneId
        L1_3 = L0_1
        L1_3 = L1_3[L2_3]
        L2_3 = L1_3.spawnedCount
        L2_3 = L2_3 - 1
        L1_3.spawnedCount = L2_3
      end
    end
    L1_3 = TriggerClientEvent
    L2_3 = "lunar_drugscreator:harvesting:remove"
    L3_3 = -1
    L4_3 = A1_2
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = SendLog
    L2_3 = A0_2
    L3_3 = "Harvested %s in harvesting zone."
    L4_3 = L3_3
    L3_3 = L3_3.format
    L5_3 = table
    L5_3 = L5_3.concat
    L6_3 = L0_3
    L7_3 = ", "
    L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L5_3(L6_3, L7_3)
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
  end
  L5_2(L6_2, L7_2)
  L5_2 = true
  return L5_2
end
L7_1(L8_1, L9_1)
L7_1 = {}
L7_1.field = "harvestingZones"
L7_1.reload = L4_1
HarvestingZones = L7_1
