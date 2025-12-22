-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
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
  L0_2 = false
  while not L0_2 do
    L1_2 = pcall
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      L0_3 = MySQL
      L0_3 = L0_3.query
      L0_3 = L0_3.await
      L1_3 = "SELECT * FROM lunar_drugscreator_labs"
      L0_3 = L0_3(L1_3)
      L1_3 = 1
      L2_3 = #L0_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = L0_3[L4_3]
        L6_3 = "%s_%s"
        L7_3 = L6_3
        L6_3 = L6_3.format
        L8_3 = L5_3.index
        L9_3 = L5_3.entranceIndex
        L6_3 = L6_3(L7_3, L8_3, L9_3)
        L7_3 = L1_1
        L8_3 = {}
        L9_3 = L5_3.identifier
        L8_3.identifier = L9_3
        L9_3 = json
        L9_3 = L9_3.decode
        L10_3 = L5_3.keys
        L9_3 = L9_3(L10_3)
        L8_3.keys = L9_3
        L7_3[L6_3] = L8_3
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
L6_1 = "lunar_drugscreator:laboratories:getData"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
  L2_2 = "lunar_drugscreator:laboratories:initData"
  L3_2 = L0_2
  L4_2 = 50000
  L5_2 = L1_1
  L6_2 = L2_1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:laboratories:enter"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = ServerConfig
  L4_2 = L4_2.laboratories
  L4_2 = L4_2[A0_2]
  L5_2 = L4_2.entrances
  L5_2 = L5_2[A1_2]
  L6_2 = "%s_%s"
  L7_2 = L6_2
  L6_2 = L6_2.format
  L8_2 = A0_2
  L9_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L1_1
  L7_2 = L7_2[L6_2]
  if L3_2 and L4_2 and L5_2 then
    L8_2 = Utils
    L8_2 = L8_2.distanceCheck
    L9_2 = L2_2
    L10_2 = L5_2.coords
    L11_2 = 10.0
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    if L8_2 then
      L8_2 = L0_1
      L8_2 = L8_2[L2_2]
      if not L8_2 then
        goto lbl_37
      end
    end
  end
  do return end
  ::lbl_37::
  L9_2 = L3_2
  L8_2 = L3_2.getIdentifier
  L8_2 = L8_2(L9_2)
  L9_2 = L4_2.purchaseable
  if L9_2 then
    L9_2 = L7_2.identifier
    if L9_2 ~= L8_2 then
      L9_2 = lib
      L9_2 = L9_2.table
      L9_2 = L9_2.contains
      L10_2 = L7_2.keys
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        return
      end
    end
  end
  L9_2 = A0_2 - 1
  L9_2 = L9_2 * 50
  L9_2 = 13000 + L9_2
  L9_2 = L9_2 + A1_2
  L10_2 = SetPlayerRoutingBucket
  L11_2 = L2_2
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = L0_1
  L11_2 = "%s_%s"
  L12_2 = L11_2
  L11_2 = L11_2.format
  L13_2 = A0_2
  L14_2 = A1_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L10_2[L2_2] = L11_2
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:laboratories:leave"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = source
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L1_2 = L0_1
    L1_2[L0_2] = nil
    L1_2 = SetPlayerRoutingBucket
    L2_2 = L0_2
    L3_2 = 0
    L1_2(L2_2, L3_2)
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:laboratories:purchase"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = ServerConfig
  L4_2 = L4_2.laboratories
  L4_2 = L4_2[A0_2]
  L5_2 = L4_2.entrances
  L5_2 = L5_2[A1_2]
  if L3_2 and L4_2 then
    L6_2 = Utils
    L6_2 = L6_2.distanceCheck
    L7_2 = L2_2
    L8_2 = L5_2.coords
    L9_2 = 10.0
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      goto lbl_24
    end
  end
  do return end
  ::lbl_24::
  L7_2 = L3_2
  L6_2 = L3_2.getAccountMoney
  L8_2 = L4_2.account
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L5_2.price
  if L6_2 < L7_2 then
    L6_2 = LR
    L6_2 = L6_2.notify
    L7_2 = L2_2
    L8_2 = locale
    L9_2 = "not_enough_"
    L10_2 = L4_2.account
    L9_2 = L9_2 .. L10_2
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    return
  end
  L7_2 = L3_2
  L6_2 = L3_2.removeAccountMoney
  L8_2 = L4_2.account
  L9_2 = L5_2.price
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = "%s_%s"
  L7_2 = L6_2
  L6_2 = L6_2.format
  L8_2 = A0_2
  L9_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L8_2 = L3_2
  L7_2 = L3_2.getIdentifier
  L7_2 = L7_2(L8_2)
  L8_2 = L1_1
  L9_2 = {}
  L9_2.identifier = L7_2
  L10_2 = {}
  L9_2.keys = L10_2
  L8_2[L6_2] = L9_2
  L8_2 = TriggerClientEvent
  L9_2 = "lunar_drugscreator:laboratories:updatePurchased"
  L10_2 = -1
  L11_2 = L1_1
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = MySQL
  L8_2 = L8_2.insert
  L8_2 = L8_2.await
  L9_2 = "INSERT INTO lunar_drugscreator_labs (identifier, `index`, entranceIndex, `keys`) VALUES (?, ?, ?, ?)"
  L10_2 = {}
  L11_2 = L7_2
  L12_2 = A0_2
  L13_2 = A1_2
  L14_2 = json
  L14_2 = L14_2.encode
  L15_2 = {}
  L14_2, L15_2 = L14_2(L15_2)
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L10_2[5] = L15_2
  L8_2(L9_2, L10_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:laboratories:giveKeys"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  if L3_2 and L4_2 then
    L5_2 = L4_2.identifier
    L7_2 = L3_2
    L6_2 = L3_2.getIdentifier
    L6_2 = L6_2(L7_2)
    if L5_2 == L6_2 then
      goto lbl_18
    end
  end
  do return end
  ::lbl_18::
  L5_2 = Framework
  L5_2 = L5_2.getPlayerFromId
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = LR
    L6_2 = L6_2.notify
    L7_2 = L2_2
    L8_2 = locale
    L9_2 = "invalid_server_id"
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    return
  end
  L6_2 = L4_2.keys
  L7_2 = L4_2.keys
  L7_2 = #L7_2
  L7_2 = L7_2 + 1
  L9_2 = L5_2
  L8_2 = L5_2.getIdentifier
  L8_2 = L8_2(L9_2)
  L6_2[L7_2] = L8_2
  L6_2 = LR
  L6_2 = L6_2.notify
  L7_2 = L2_2
  L8_2 = locale
  L9_2 = "keys_given"
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2 = TriggerClientEvent
  L7_2 = "lunar_drugscreator:laboratories:updatePurchased"
  L8_2 = -1
  L9_2 = L1_1
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2.match
  L8_2 = "(%d+)_(%d+)"
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  L8_2 = tonumber
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  L9_2 = tonumber
  L10_2 = L7_2
  L9_2 = L9_2(L10_2)
  L10_2 = MySQL
  L10_2 = L10_2.update
  L10_2 = L10_2.await
  L11_2 = "UPDATE lunar_drugscreator_labs SET `keys` = ? WHERE `index` = ? AND entranceIndex = ?"
  L12_2 = {}
  L13_2 = json
  L13_2 = L13_2.encode
  L14_2 = L4_2.keys
  L13_2 = L13_2(L14_2)
  L14_2 = L8_2
  L15_2 = L9_2
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L10_2(L11_2, L12_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:laboratories:removeKeys"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  if L3_2 and L4_2 then
    L5_2 = L4_2.identifier
    L7_2 = L3_2
    L6_2 = L3_2.getIdentifier
    L6_2 = L6_2(L7_2)
    if L5_2 == L6_2 then
      goto lbl_18
    end
  end
  do return end
  ::lbl_18::
  L5_2 = L4_2.keys
  L5_2 = L5_2[A1_2]
  L6_2 = table
  L6_2 = L6_2.remove
  L7_2 = L4_2.keys
  L8_2 = A1_2
  L6_2(L7_2, L8_2)
  L6_2 = TriggerClientEvent
  L7_2 = "lunar_drugscreator:laboratories:updatePurchased"
  L8_2 = -1
  L9_2 = L1_1
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2.match
  L8_2 = "(%d+)_(%d+)"
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  L8_2 = tonumber
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  L9_2 = tonumber
  L10_2 = L7_2
  L9_2 = L9_2(L10_2)
  L10_2 = MySQL
  L10_2 = L10_2.update
  L10_2 = L10_2.await
  L11_2 = "UPDATE lunar_drugscreator_labs SET `keys` = ? WHERE `index` = ? AND entranceIndex = ?"
  L12_2 = {}
  L13_2 = json
  L13_2 = L13_2.encode
  L14_2 = L4_2.keys
  L13_2 = L13_2(L14_2)
  L14_2 = L8_2
  L15_2 = L9_2
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L10_2(L11_2, L12_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:laboratories:transferOwnership"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L1_1
  L4_2 = L4_2[A0_2]
  if L3_2 and L4_2 then
    L5_2 = L4_2.identifier
    L7_2 = L3_2
    L6_2 = L3_2.getIdentifier
    L6_2 = L6_2(L7_2)
    if L5_2 == L6_2 then
      goto lbl_18
    end
  end
  do return end
  ::lbl_18::
  L5_2 = Framework
  L5_2 = L5_2.getPlayerFromId
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = LR
    L6_2 = L6_2.notify
    L7_2 = L2_2
    L8_2 = locale
    L9_2 = "invalid_server_id"
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2(L9_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    return
  end
  L7_2 = L5_2
  L6_2 = L5_2.getIdentifier
  L6_2 = L6_2(L7_2)
  L4_2.identifier = L6_2
  L6_2 = 1
  L7_2 = L4_2.keys
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L4_2.keys
    L10_2 = L10_2[L9_2]
    L11_2 = L4_2.identifier
    if L10_2 == L11_2 then
      L10_2 = L4_2.keys
      L12_2 = L3_2
      L11_2 = L3_2.getIdentifier
      L11_2 = L11_2(L12_2)
      L10_2[L9_2] = L11_2
    end
  end
  L6_2 = TriggerClientEvent
  L7_2 = "lunar_drugscreator:laboratories:updatePurchased"
  L8_2 = -1
  L9_2 = L1_1
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = LR
  L6_2 = L6_2.notify
  L7_2 = L2_2
  L8_2 = locale
  L9_2 = "ownership_transferred"
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = A0_2
  L6_2 = A0_2.match
  L8_2 = "(%d+)_(%d+)"
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  L8_2 = tonumber
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  L9_2 = tonumber
  L10_2 = L7_2
  L9_2 = L9_2(L10_2)
  L10_2 = MySQL
  L10_2 = L10_2.update
  L10_2 = L10_2.await
  L11_2 = "UPDATE lunar_drugscreator_labs SET identifier = ?, `keys` = ? WHERE `index` = ? AND entranceIndex = ?"
  L12_2 = {}
  L13_2 = L4_2.identifier
  L14_2 = json
  L14_2 = L14_2.encode
  L15_2 = L4_2.keys
  L14_2 = L14_2(L15_2)
  L15_2 = L8_2
  L16_2 = L9_2
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L10_2(L11_2, L12_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:laboratories:sellLaboratory"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerFromId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  L5_2 = A0_2
  L4_2 = A0_2.match
  L6_2 = "(%d+)_(%d+)"
  L4_2, L5_2 = L4_2(L5_2, L6_2)
  L6_2 = tonumber
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L7_2 = tonumber
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L8_2 = ServerConfig
  L8_2 = L8_2.laboratories
  L8_2 = L8_2[L6_2]
  L9_2 = L8_2.entrances
  L9_2 = L9_2[L7_2]
  if L2_2 and L3_2 then
    L10_2 = L3_2.identifier
    L12_2 = L2_2
    L11_2 = L2_2.getIdentifier
    L11_2 = L11_2(L12_2)
    if L10_2 == L11_2 then
      goto lbl_32
    end
  end
  do return end
  ::lbl_32::
  L10_2 = L1_1
  L10_2[A0_2] = nil
  L10_2 = TriggerClientEvent
  L11_2 = "lunar_drugscreator:laboratories:updatePurchased"
  L12_2 = -1
  L13_2 = L1_1
  L10_2(L11_2, L12_2, L13_2)
  L11_2 = L2_2
  L10_2 = L2_2.addAccountMoney
  L12_2 = L8_2.account
  L13_2 = math
  L13_2 = L13_2.ceil
  L14_2 = L9_2.price
  L15_2 = ServerConfig
  L15_2 = L15_2.generalSettings
  L15_2 = L15_2.sellDivisor
  L14_2 = L14_2 / L15_2
  L13_2, L14_2, L15_2 = L13_2(L14_2)
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = LR
  L10_2 = L10_2.notify
  L11_2 = L1_2
  L12_2 = locale
  L13_2 = "laboratory_sold"
  L12_2 = L12_2(L13_2)
  L13_2 = "success"
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = MySQL
  L10_2 = L10_2.query
  L10_2 = L10_2.await
  L11_2 = "DELETE FROM lunar_drugscreator_labs WHERE `index` = ? AND entranceIndex = ?"
  L12_2 = {}
  L13_2 = L6_2
  L14_2 = L7_2
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L10_2(L11_2, L12_2)
end
L5_1(L6_1, L7_1)
L5_1 = MySQL
L5_1 = L5_1.ready
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = Framework
  L0_2 = L0_2.name
  if "es_extended" == L0_2 then
    L0_2 = MySQL
    L0_2 = L0_2.query
    L0_2 = L0_2.await
    L1_2 = "SELECT identifier, firstname, lastname FROM users"
    L0_2 = L0_2(L1_2)
    L1_2 = ipairs
    L2_2 = L0_2
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L8_2 = L6_2.identifier
      L7_2 = L2_1
      L9_2 = L6_2.firstname
      if L9_2 then
        L9_2 = L6_2.firstname
        L10_2 = " "
        L11_2 = L6_2.lastname
        L9_2 = L9_2 .. L10_2 .. L11_2
        if L9_2 then
          goto lbl_26
        end
      end
      L9_2 = "IDENTITY_NOT_WORKING"
      ::lbl_26::
      L7_2[L8_2] = L9_2
    end
  else
    L0_2 = Framework
    L0_2 = L0_2.name
    if "qb-core" == L0_2 then
      L0_2 = MySQL
      L0_2 = L0_2.query
      L0_2 = L0_2.await
      L1_2 = "SELECT citizenid, charinfo FROM players"
      L0_2 = L0_2(L1_2)
      L1_2 = ipairs
      L2_2 = L0_2
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = json
        L7_2 = L7_2.decode
        L8_2 = L6_2.charinfo
        L7_2 = L7_2(L8_2)
        L9_2 = L6_2.citizenid
        L8_2 = L2_1
        L10_2 = L7_2.firstname
        L11_2 = " "
        L12_2 = L7_2.lastname
        L10_2 = L10_2 .. L11_2 .. L12_2
        L8_2[L9_2] = L10_2
      end
    end
  end
end
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "esx:playerLoaded"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2.identifier
  L2_2 = L2_1
  L4_2 = A1_2.get
  L5_2 = "firstName"
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = A1_2.get
    L5_2 = "firstName"
    L4_2 = L4_2(L5_2)
    L5_2 = " "
    L6_2 = A1_2.get
    L7_2 = "lastName"
    L6_2 = L6_2(L7_2)
    L4_2 = L4_2 .. L5_2 .. L6_2
    if L4_2 then
      goto lbl_19
    end
  end
  L4_2 = "IDENTITY_NOT_WORKING"
  ::lbl_19::
  L2_2[L3_2] = L4_2
  L2_2 = TriggerClientEvent
  L3_2 = "lunar_drugscreator:laboratories:addName"
  L4_2 = -1
  L5_2 = A1_2.identifier
  L7_2 = A1_2.identifier
  L6_2 = L2_1
  L6_2 = L6_2[L7_2]
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L5_1(L6_1, L7_1)
L5_1 = AddEventHandler
L6_1 = "QBCore:Server:PlayerLoaded"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.PlayerData
  L2_2 = L1_2.citizenid
  L1_2 = L2_1
  L3_2 = A0_2.PlayerData
  L3_2 = L3_2.charinfo
  L3_2 = L3_2.firstname
  L4_2 = " "
  L5_2 = A0_2.PlayerData
  L5_2 = L5_2.charinfo
  L5_2 = L5_2.lastname
  L3_2 = L3_2 .. L4_2 .. L5_2
  L1_2[L2_2] = L3_2
  L1_2 = TriggerClientEvent
  L2_2 = "lunar_drugscreator:laboratories:addName"
  L3_2 = -1
  L4_2 = A0_2.PlayerData
  L4_2 = L4_2.citizenid
  L5_2 = A0_2.PlayerData
  L6_2 = L5_2.citizenid
  L5_2 = L2_1
  L5_2 = L5_2[L6_2]
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L5_1(L6_1, L7_1)
