-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = {}
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = 1
  L1_2 = ServerConfig
  L1_2 = L1_2.consumables
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = ServerConfig
    L4_2 = L4_2.consumables
    L4_2 = L4_2[L3_2]
    L5_2 = L4_2.name
    L6_2 = L0_1
    L6_2 = L6_2[L5_2]
    if not L6_2 then
      L6_2 = Framework
      L6_2 = L6_2.registerUsableItem
      L7_2 = L5_2
      function L8_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3
        L1_3 = Framework
        L1_3 = L1_3.getPlayerFromId
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        if L1_3 then
          L3_3 = L1_3
          L2_3 = L1_3.hasItem
          L4_3 = L5_2
          L2_3 = L2_3(L3_3, L4_3)
          if L2_3 then
            goto lbl_13
          end
        end
        do return end
        ::lbl_13::
        L3_3 = L5_2
        L2_3 = L1_1
        L2_3 = L2_3[L3_3]
        if not L2_3 then
          return
        end
        L3_3 = L2_3
        L4_3 = L1_3
        L3_3(L4_3)
      end
      L6_2(L7_2, L8_2)
      L6_2 = L0_1
      L6_2[L5_2] = true
    end
    L6_2 = L1_1
    function L7_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L2_3 = A0_3
      L1_3 = A0_3.hasItem
      L3_3 = L5_2
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        return
      end
      L2_3 = A0_3
      L1_3 = A0_3.removeItem
      L3_3 = L5_2
      L4_3 = 1
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = TriggerClientEvent
      L2_3 = "lunar_drugscreator:consumables:consume"
      L3_3 = A0_3.source
      L4_3 = L3_2
      L1_3(L2_3, L3_3, L4_3)
    end
    L6_2[L5_2] = L7_2
  end
end
L3_1 = {}
L3_1.field = "consumables"
L3_1.reload = L2_1
Consumables = L3_1
