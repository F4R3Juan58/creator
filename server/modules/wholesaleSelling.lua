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
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = ServerConfig
  L3_2 = L3_2.wholesaleSettings
  L3_2 = L3_2.items
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2.getItemCount
    L10_2 = L7_2.name
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L7_2.amount
    L9_2 = L9_2.min
    if L8_2 >= L9_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2
      L11_2 = {}
      L12_2 = L7_2.name
      L11_2.name = L12_2
      L11_2.maxCount = L8_2
      L12_2 = L7_2.price
      L11_2.price = L12_2
      L12_2 = L7_2.amount
      L11_2.amount = L12_2
      L9_2(L10_2, L11_2)
    end
  end
  return L1_2
end
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = TriggerClientEvent
  L3_2 = "lunar_drugscreator:wholesale:started"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = ServerConfig
  L3_2 = L3_2.wholesaleSettings
  L3_2 = L3_2.clientInterval
  L3_2 = L3_2.min
  L4_2 = ServerConfig
  L4_2 = L4_2.wholesaleSettings
  L4_2 = L4_2.clientInterval
  L4_2 = L4_2.max
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = L3_1
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = #L4_2
  if 0 == L5_2 then
    L5_2 = L0_1
    L5_2[A0_2] = nil
    L5_2 = TriggerClientEvent
    L6_2 = "lunar_drugscreator:wholesale:stop"
    L7_2 = A0_2
    L8_2 = true
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = SetTimeout
  L6_2 = L2_2 * 1000
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = A0_2
    L0_3 = L0_1
    L0_3 = L0_3[L1_3]
    if not L0_3 then
      return
    end
    L0_3 = Framework
    L0_3 = L0_3.getPlayerFromId
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      return
    end
    L1_3 = L3_1
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L2_3 = #L1_3
    if 0 == L2_3 then
      L2_3 = LR
      L2_3 = L2_3.notify
      L3_3 = A0_2
      L4_3 = locale
      L5_3 = "no_items_to_sell"
      L4_3 = L4_3(L5_3)
      L5_3 = "error"
      L2_3(L3_3, L4_3, L5_3)
      L3_3 = A0_2
      L2_3 = L0_1
      L2_3[L3_3] = nil
      return
    end
    L2_3 = Utils
    L2_3 = L2_3.randomFromTable
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L3_3 = math
    L3_3 = L3_3.min
    L4_3 = L2_3.maxCount
    L5_3 = L2_3.amount
    L5_3 = L5_3.max
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = math
    L4_3 = L4_3.random
    L5_3 = L2_3.amount
    L5_3 = L5_3.min
    L6_3 = L3_3
    L4_3 = L4_3(L5_3, L6_3)
    L5_3 = {}
    L6_3 = L2_3.name
    L5_3.name = L6_3
    L5_3.count = L4_3
    L6_3 = math
    L6_3 = L6_3.random
    L7_3 = L2_3.price
    L7_3 = L7_3.min
    L8_3 = L2_3.price
    L8_3 = L8_3.max
    L6_3 = L6_3(L7_3, L8_3)
    L5_3.price = L6_3
    L7_3 = A0_2
    L6_3 = L1_1
    L6_3[L7_3] = L5_3
    L6_3 = TriggerClientEvent
    L7_3 = "lunar_drugscreator:wholesale:offer"
    L8_3 = A0_2
    L9_3 = L5_3.name
    L10_3 = L5_3.count
    L11_3 = L5_3.price
    L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
  end
  L5_2(L6_2, L7_2)
end
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:wholesale:accept"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = source
  L1_2 = Framework
  L1_2 = L1_2.getPlayerFromId
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L0_1
    L2_2 = L2_2[L0_2]
    if L2_2 then
      L2_2 = L1_1
      L2_2 = L2_2[L0_2]
      if L2_2 then
        L2_2 = lib
        L2_2 = L2_2.table
        L2_2 = L2_2.contains
        L3_2 = L2_1
        L4_2 = L0_2
        L2_2 = L2_2(L3_2, L4_2)
        if not L2_2 then
          goto lbl_25
        end
      end
    end
  end
  do return end
  ::lbl_25::
  L2_2 = nil
  repeat
    L3_2 = math
    L3_2 = L3_2.random
    L4_2 = 1
    L5_2 = ServerConfig
    L5_2 = L5_2.wholesaleSettings
    L5_2 = L5_2.locations
    L5_2 = #L5_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
    L3_2 = L2_1
    L3_2 = L3_2[L2_2]
  until not L3_2
  L3_2 = L2_1
  L3_2[L2_2] = L0_2
  L3_2 = TriggerClientEvent
  L4_2 = "lunar_drugscreator:wholesale:mission"
  L5_2 = L0_2
  L6_2 = L2_2
  L7_2 = math
  L7_2 = L7_2.random
  L8_2 = 1
  L9_2 = 3
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:wholesale:decline"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = source
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2[L0_2]
    if L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L1_2 = L1_1
  L1_2[L0_2] = nil
  L1_2 = L4_1
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = L2_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 == L0_2 then
      L7_2 = L2_1
      L7_2[L5_2] = nil
    end
  end
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:wholesale:completeOffer"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = source
  L1_2 = Framework
  L1_2 = L1_2.getPlayerFromId
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1
  L2_2 = L2_2[L0_2]
  if L1_2 then
    L3_2 = L0_1
    L3_2 = L3_2[L0_2]
    if L3_2 and L2_2 then
      goto lbl_17
    end
  end
  do return end
  ::lbl_17::
  L3_2 = L2_2.price
  L4_2 = L2_2.count
  L3_2 = L3_2 * L4_2
  L5_2 = L1_2
  L4_2 = L1_2.getItemCount
  L6_2 = L2_2.name
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L2_2.count
  if L4_2 < L5_2 then
    L4_2 = LR
    L4_2 = L4_2.notify
    L5_2 = L0_2
    L6_2 = locale
    L7_2 = "missing_items"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = L1_1
  L4_2[L0_2] = nil
  L5_2 = L1_2
  L4_2 = L1_2.removeItem
  L6_2 = L2_2.name
  L7_2 = L2_2.count
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L1_2
  L4_2 = L1_2.addAccountMoney
  L6_2 = ServerConfig
  L6_2 = L6_2.wholesaleSettings
  L6_2 = L6_2.account
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Stats
  L4_2 = L4_2.addSold
  L5_2 = L2_2.name
  L6_2 = L2_2.count
  L4_2(L5_2, L6_2)
  L4_2 = L4_1
  L5_2 = L0_2
  L4_2(L5_2)
  L4_2 = pairs
  L5_2 = L2_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    if L9_2 == L0_2 then
      L10_2 = L2_1
      L10_2[L8_2] = nil
    end
  end
end
L5_1(L6_1, L7_1)
L5_1 = false
L6_1 = {}
function L7_1()
  local L0_2, L1_2, L2_2
  L0_2 = ServerConfig
  L0_2 = L0_2.wholesaleSettings
  L0_2 = L0_2.enabled
  if not L0_2 then
    return
  end
  L0_2 = L5_1
  if L0_2 then
    return
  end
  L0_2 = true
  L5_1 = L0_2
  L0_2 = Framework
  L0_2 = L0_2.registerUsableItem
  L1_2 = ServerConfig
  L1_2 = L1_2.wholesaleSettings
  L1_2 = L1_2.phoneItem
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = Framework
    L1_3 = L1_3.getPlayerFromId
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      return
    end
    L2_3 = GetVehiclePedIsIn
    L3_3 = GetPlayerPed
    L4_3 = A0_3
    L3_3 = L3_3(L4_3)
    L4_3 = false
    L2_3 = L2_3(L3_3, L4_3)
    if 0 ~= L2_3 then
      return
    end
    L2_3 = L0_1
    L2_3 = L2_3[A0_3]
    if L2_3 then
      L2_3 = LR
      L2_3 = L2_3.notify
      L3_3 = A0_3
      L4_3 = locale
      L5_3 = "cancelled_wholesale"
      L4_3, L5_3, L6_3 = L4_3(L5_3)
      L2_3(L3_3, L4_3, L5_3, L6_3)
      L2_3 = TriggerClientEvent
      L3_3 = "lunar_drugscreator:wholesale:stop"
      L4_3 = A0_3
      L5_3 = false
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = L0_1
      L2_3[A0_3] = nil
      return
    end
    L2_3 = L3_1
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L3_3 = #L2_3
    if 0 == L3_3 then
      L3_3 = LR
      L3_3 = L3_3.notify
      L4_3 = A0_3
      L5_3 = locale
      L6_3 = "no_items_to_sell"
      L5_3 = L5_3(L6_3)
      L6_3 = "error"
      L3_3(L4_3, L5_3, L6_3)
      return
    end
    L3_3 = L0_1
    L3_3[A0_3] = true
    L3_3 = L4_1
    L4_3 = A0_3
    L5_3 = true
    L3_3(L4_3, L5_3)
  end
  L0_2(L1_2, L2_2)
end
L6_1.reload = L7_1
WholesaleSelling = L6_1
