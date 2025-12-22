-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1
L0_1 = lib
L0_1 = L0_1.callback
L0_1 = L0_1.register
L1_1 = "lunar_drugscreator:supplier:buyItem"
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = Framework
  L5_2 = L5_2.getPlayerFromId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = ServerConfig
  L6_2 = L6_2.suppliers
  L6_2 = L6_2[A1_2]
  L7_2 = L6_2.items
  L7_2 = L7_2[A3_2]
  if L5_2 and L6_2 and L7_2 and not (A4_2 <= 0) then
    L8_2 = Utils
    L8_2 = L8_2.distanceCheck
    L9_2 = L5_2.source
    L10_2 = L6_2.locations
    L10_2 = L10_2[A2_2]
    L11_2 = 5.0
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    if L8_2 then
      L9_2 = L5_2
      L8_2 = L5_2.canCarryItem
      L10_2 = L7_2.name
      L11_2 = A4_2
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      if L8_2 then
        goto lbl_35
      end
    end
  end
  L8_2 = false
  do return L8_2 end
  ::lbl_35::
  L8_2 = L7_2.price
  L8_2 = L8_2 * A4_2
  L10_2 = L5_2
  L9_2 = L5_2.getAccountMoney
  L11_2 = L6_2.account
  L9_2 = L9_2(L10_2, L11_2)
  if L8_2 > L9_2 then
    L9_2 = false
    L10_2 = locale
    L11_2 = "not_enough_"
    L12_2 = L6_2.account
    L11_2 = L11_2 .. L12_2
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    return L9_2, L10_2, L11_2, L12_2
  end
  L9_2 = SetTimeout
  L10_2 = 1000
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L5_2
    L1_3 = L0_3
    L0_3 = L0_3.removeAccountMoney
    L2_3 = L6_2.account
    L3_3 = L8_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = SetTimeout
    L1_3 = 2000
    function L2_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
      L0_4 = L5_2
      L1_4 = L0_4
      L0_4 = L0_4.addItem
      L2_4 = L7_2.name
      L3_4 = A4_2
      L0_4(L1_4, L2_4, L3_4)
      L0_4 = SendLog
      L1_4 = A0_2
      L2_4 = "Bought %sx %s from supplier."
      L3_4 = L2_4
      L2_4 = L2_4.format
      L4_4 = A4_2
      L5_4 = L7_2.name
      L2_4, L3_4, L4_4, L5_4 = L2_4(L3_4, L4_4, L5_4)
      L0_4(L1_4, L2_4, L3_4, L4_4, L5_4)
    end
    L0_3(L1_3, L2_3)
  end
  L9_2(L10_2, L11_2)
  L9_2 = true
  return L9_2
end
L0_1(L1_1, L2_1)
