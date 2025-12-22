-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
L1_1 = {}
L2_1 = false
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = A0_2.index
  L2_2 = A0_2.locationIndex
  L3_2 = L0_1
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2[L2_2]
  L4_2 = ServerConfig
  L4_2 = L4_2.suppliers
  L4_2 = L4_2[L1_2]
  L5_2 = {}
  L6_2 = nil
  L7_2 = nil
  L8_2 = L2_1
  if L8_2 then
    return
  end
  L8_2 = true
  L2_1 = L8_2
  L8_2 = 1
  L9_2 = L4_2.items
  L9_2 = #L9_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L4_2.items
    L12_2 = L12_2[L11_2]
    L13_2 = {}
    L14_2 = L12_2.name
    L13_2.name = L14_2
    L14_2 = Utils
    L14_2 = L14_2.getItemLabel
    L15_2 = L12_2.name
    L14_2 = L14_2(L15_2)
    L13_2.label = L14_2
    L14_2 = L12_2.price
    L13_2.price = L14_2
    L14_2 = Editable
    L14_2 = L14_2.getInventoryIcon
    L15_2 = L12_2.name
    L14_2 = L14_2(L15_2)
    L13_2.imageUrl = L14_2
    L5_2[L11_2] = L13_2
  end
  L8_2 = exports
  L8_2 = L8_2.lunar_bridge
  L9_2 = L8_2
  L8_2 = L8_2.openPedInteractionMenu
  L10_2 = L3_2.get
  L10_2 = L10_2()
  L11_2 = {}
  L12_2 = L4_2.label
  L11_2.name = L12_2
  L12_2 = locale
  L13_2 = "supplier"
  L12_2 = L12_2(L13_2)
  L11_2.specifier = L12_2
  L12_2 = {}
  L13_2 = locale
  L14_2 = "supplier_greeting"
  L13_2 = L13_2(L14_2)
  L12_2.question = L13_2
  L13_2 = {}
  L14_2 = {}
  L14_2.id = "pos_buy"
  L15_2 = locale
  L16_2 = "supplier_yes_show"
  L15_2 = L15_2(L16_2)
  L14_2.label = L15_2
  L14_2.icon = "shopping-cart"
  L15_2 = {}
  L15_2.id = "neg_stop"
  L16_2 = locale
  L17_2 = "supplier_no_thanks"
  L16_2 = L16_2(L17_2)
  L15_2.label = L16_2
  L15_2.icon = "circle-xmark"
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L12_2.answers = L13_2
  function L13_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    if A0_3 then
      L1_3 = A0_3.id
      if "neg_stop" ~= L1_3 then
        goto lbl_9
      end
    end
    L1_3 = false
    L2_1 = L1_3
    do return end
    ::lbl_9::
    L1_3 = A0_3.id
    if "pos_confirm_purchase" == L1_3 then
      L1_3 = CreateThread
      function L2_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4
        L0_4 = nil
        L1_4 = 1
        L2_4 = L4_2.items
        L2_4 = #L2_4
        L3_4 = 1
        for L4_4 = L1_4, L2_4, L3_4 do
          L5_4 = L4_2.items
          L5_4 = L5_4[L4_4]
          L5_4 = L5_4.name
          L6_4 = L6_2
          if L5_4 == L6_4 then
            L0_4 = L4_4
            break
          end
        end
        L1_4 = lib
        L1_4 = L1_4.callback
        L1_4 = L1_4.await
        L2_4 = "lunar_drugscreator:supplier:buyItem"
        L3_4 = false
        L4_4 = L1_2
        L5_4 = L2_2
        L6_4 = L0_4
        L7_4 = L7_2
        L1_4, L2_4 = L1_4(L2_4, L3_4, L4_4, L5_4, L6_4, L7_4)
        if not L1_4 then
          L3_4 = LR
          L3_4 = L3_4.notify
          L4_4 = L2_4
          L5_4 = "error"
          L3_4(L4_4, L5_4)
          L3_4 = false
          L2_1 = L3_4
          return
        end
        L3_4 = L3_2.get
        L3_4 = L3_4()
        if not L3_4 then
          return
        end
        L4_4 = CreateThread
        function L5_4()
          local L0_5, L1_5, L2_5, L3_5
          L0_5 = LR
          L0_5 = L0_5.progressBar
          L1_5 = locale
          L2_5 = "supplier_completing_transaction"
          L1_5 = L1_5(L2_5)
          L2_5 = 3000
          L3_5 = false
          L0_5(L1_5, L2_5, L3_5)
        end
        L4_4(L5_4)
        L4_4 = lib
        L4_4 = L4_4.requestAnimDict
        L5_4 = "mp_common"
        L4_4(L5_4)
        L4_4 = ClearPedTasks
        L5_4 = L3_4
        L4_4(L5_4)
        L4_4 = TaskPlayAnim
        L5_4 = cache
        L5_4 = L5_4.ped
        L6_4 = "mp_common"
        L7_4 = "givetake1_a"
        L8_4 = 2.0
        L9_4 = 1.0
        L10_4 = 2000
        L11_4 = 16
        L4_4(L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4)
        L4_4 = SetTimeout
        L5_4 = 100
        function L6_4()
          local L0_5, L1_5, L2_5, L3_5, L4_5, L5_5, L6_5
          L0_5 = GetEntityCoords
          L1_5 = L3_4
          L0_5 = L0_5(L1_5)
          L1_5 = ClearAreaOfObjects
          L2_5 = L0_5.x
          L3_5 = L0_5.y
          L4_5 = L0_5.z
          L5_5 = 3.0
          L6_5 = 17
          L1_5(L2_5, L3_5, L4_5, L5_5, L6_5)
        end
        L4_4(L5_4, L6_4)
        L4_4 = Wait
        L5_4 = 2000
        L4_4(L5_4)
        L4_4 = TaskPlayAnim
        L5_4 = L3_4
        L6_4 = "mp_common"
        L7_4 = "givetake1_a"
        L8_4 = 2.0
        L9_4 = 1.0
        L10_4 = 3000
        L11_4 = 16
        L4_4(L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4)
        L4_4 = LR
        L4_4 = L4_4.notify
        L5_4 = locale
        L6_4 = "supplier_purchase_complete"
        L5_4 = L5_4(L6_4)
        L6_4 = "success"
        L4_4(L5_4, L6_4)
        L4_4 = false
        L2_1 = L4_4
      end
      L1_3(L2_3)
      L1_3 = nil
      return L1_3
    end
    L1_3 = A0_3.id
    if "pos_buy" == L1_3 then
      L1_3 = {}
      L2_3 = locale
      L3_3 = "supplier_available_items"
      L2_3 = L2_3(L3_3)
      L1_3.question = L2_3
      L2_3 = L5_2
      L1_3.answerItems = L2_3
      return L1_3
    end
    L1_3 = A0_3.itemName
    if L1_3 then
      L1_3 = A0_3.itemName
      L6_2 = L1_3
      L1_3 = nil
      L2_3 = 1
      L3_3 = L4_2.items
      L3_3 = #L3_3
      L4_3 = 1
      for L5_3 = L2_3, L3_3, L4_3 do
        L6_3 = L4_2.items
        L6_3 = L6_3[L5_3]
        L6_3 = L6_3.name
        L7_3 = L6_2
        if L6_3 == L7_3 then
          L6_3 = L4_2.items
          L1_3 = L6_3[L5_3]
          break
        end
      end
      if not L1_3 then
        L2_3 = false
        L2_1 = L2_3
        return
      end
      L2_3 = locale
      L3_3 = "supplier_how_many"
      L4_3 = L1_3.price
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = {}
      L3_3.question = L2_3
      L4_3 = locale
      L5_3 = "supplier_enter_amount"
      L4_3 = L4_3(L5_3)
      L3_3.answerNumberInput = L4_3
      return L3_3
    end
    L1_3 = A0_3.value
    if L1_3 then
      L1_3 = A0_3.value
      L7_2 = L1_3
      L1_3 = L7_2
      if L1_3 then
        L1_3 = L7_2
        if not (L1_3 <= 0) then
          goto lbl_89
        end
      end
      L1_3 = {}
      L2_3 = locale
      L3_3 = "supplier_invalid_amount"
      L2_3 = L2_3(L3_3)
      L1_3.question = L2_3
      L2_3 = locale
      L3_3 = "supplier_enter_amount"
      L2_3 = L2_3(L3_3)
      L1_3.answerNumberInput = L2_3
      do return L1_3 end
      ::lbl_89::
      L1_3 = nil
      L2_3 = nil
      L3_3 = 1
      L4_3 = L4_2.items
      L4_3 = #L4_3
      L5_3 = 1
      for L6_3 = L3_3, L4_3, L5_3 do
        L7_3 = L4_2.items
        L7_3 = L7_3[L6_3]
        L7_3 = L7_3.name
        L8_3 = L6_2
        if L7_3 == L8_3 then
          L7_3 = L4_2.items
          L1_3 = L7_3[L6_3]
          L2_3 = L6_3
          break
        end
      end
      if not L1_3 or not L2_3 then
        L3_3 = false
        L2_1 = L3_3
        return
      end
      L3_3 = L7_2
      L4_3 = L1_3.price
      L3_3 = L3_3 * L4_3
      L4_3 = locale
      L5_3 = "supplier_confirm_purchase"
      L6_3 = L7_2
      L7_3 = Utils
      L7_3 = L7_3.getItemLabel
      L8_3 = L1_3.name
      L7_3 = L7_3(L8_3)
      L8_3 = L3_3
      L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
      L5_3 = {}
      L5_3.question = L4_3
      L6_3 = {}
      L7_3 = {}
      L7_3.id = "pos_confirm_purchase"
      L8_3 = locale
      L9_3 = "supplier_confirm_yes"
      L8_3 = L8_3(L9_3)
      L7_3.label = L8_3
      L7_3.icon = "circle-check"
      L8_3 = {}
      L8_3.id = "neg_cancel"
      L9_3 = locale
      L10_3 = "supplier_confirm_no"
      L9_3 = L9_3(L10_3)
      L8_3.label = L9_3
      L8_3.icon = "circle-xmark"
      L6_3[1] = L7_3
      L6_3[2] = L8_3
      L5_3.answers = L6_3
      return L5_3
    end
  end
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = 1
  L1_2 = L0_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = 1
    L5_2 = L0_1
    L5_2 = L5_2[L3_2]
    L5_2 = #L5_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L0_1
      L8_2 = L8_2[L3_2]
      L8_2 = L8_2[L7_2]
      L8_2 = L8_2.remove
      L8_2()
    end
  end
  L0_2 = 1
  L1_2 = L1_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L1_1
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.remove
    L4_2()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  L1_2 = L0_1
  L0_2(L1_2)
  L0_2 = table
  L0_2 = L0_2.wipe
  L1_2 = L1_1
  L0_2(L1_2)
  L0_2 = 1
  L1_2 = ServerConfig
  L1_2 = L1_2.suppliers
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = ServerConfig
    L4_2 = L4_2.suppliers
    L4_2 = L4_2[L3_2]
    L5_2 = L0_1
    L6_2 = {}
    L5_2[L3_2] = L6_2
    L5_2 = 1
    L6_2 = L4_2.locations
    L6_2 = #L6_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L4_2.locations
      L9_2 = L9_2[L8_2]
      L10_2 = L0_1
      L10_2 = L10_2[L3_2]
      L11_2 = Utils
      L11_2 = L11_2.createPed
      L12_2 = L9_2
      L13_2 = L4_2.model
      L14_2 = {}
      L15_2 = {}
      L16_2 = locale
      L17_2 = "supplier_talk"
      L16_2 = L16_2(L17_2)
      L15_2.label = L16_2
      L15_2.icon = "comments"
      L16_2 = L3_1
      L15_2.onSelect = L16_2
      L16_2 = {}
      L16_2.index = L3_2
      L16_2.locationIndex = L8_2
      L15_2.args = L16_2
      function L16_2()
        local L0_3, L1_3
        L0_3 = L2_1
        L0_3 = not L0_3
        return L0_3
      end
      L15_2.canInteract = L16_2
      L14_2[1] = L15_2
      L15_2 = L4_2.target
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      L10_2[L8_2] = L11_2
      L10_2 = L4_2.blipEnabled
      if L10_2 then
        L10_2 = L1_1
        L10_2 = #L10_2
        L11_2 = L10_2 + 1
        L10_2 = L1_1
        L12_2 = Utils
        L12_2 = L12_2.createBlip
        L13_2 = L9_2
        L14_2 = {}
        L15_2 = Config
        L15_2 = L15_2.blipsFont
        if L15_2 then
          L15_2 = Config
          L15_2 = L15_2.blipsFont
          if "" ~= L15_2 then
            L15_2 = "<font face=\"%s\">%s</font>"
            L16_2 = L15_2
            L15_2 = L15_2.format
            L17_2 = Config
            L17_2 = L17_2.blipsFont
            L18_2 = L4_2.label
            L15_2 = L15_2(L16_2, L17_2, L18_2)
            if L15_2 then
              goto lbl_115
            end
          end
        end
        L15_2 = L4_2.label
        ::lbl_115::
        L14_2.name = L15_2
        L15_2 = L4_2.blipData
        L15_2 = L15_2.sprite
        L14_2.sprite = L15_2
        L15_2 = L4_2.blipData
        L15_2 = L15_2.color
        L14_2.color = L15_2
        L15_2 = L4_2.blipData
        L15_2 = L15_2.size
        L15_2 = L15_2 + 0.0
        L14_2.size = L15_2
        L12_2 = L12_2(L13_2, L14_2)
        L10_2[L11_2] = L12_2
      end
    end
  end
end
L5_1 = {}
L5_1.reload = L4_1
Suppliers = L5_1
