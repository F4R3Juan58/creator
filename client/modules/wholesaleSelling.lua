-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = false
L1_1 = lib
L1_1 = L1_1.addKeybind
L2_1 = {}
L2_1.name = "wholesale_accept"
L2_1.description = "Accept the offer"
L2_1.defaultKey = "PAGEUP"
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if not L0_2 then
    return
  end
  L0_2 = TriggerServerEvent
  L1_2 = "lunar_drugscreator:wholesale:accept"
  L0_2(L1_2)
  L0_2 = LR
  L0_2 = L0_2.hideUI
  L0_2()
  L0_2 = false
  L0_1 = L0_2
end
L2_1.onPressed = L3_1
L1_1 = L1_1(L2_1)
L2_1 = lib
L2_1 = L2_1.addKeybind
L3_1 = {}
L3_1.name = "wholesale_decline"
L3_1.description = "Decline the offer"
L3_1.defaultKey = "PAGEDOWN"
function L4_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if not L0_2 then
    return
  end
  L0_2 = TriggerServerEvent
  L1_2 = "lunar_drugscreator:wholesale:decline"
  L0_2(L1_2)
  L0_2 = LR
  L0_2 = L0_2.hideUI
  L0_2()
  L0_2 = false
  L0_1 = L0_2
end
L3_1.onPressed = L4_1
L2_1 = L2_1(L3_1)
L3_1 = RegisterNetEvent
L4_1 = "lunar_drugscreator:wholesale:started"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L1_2 = LR
    L1_2 = L1_2.progressBar
    L2_2 = locale
    L3_2 = "init_wholesale"
    L2_2 = L2_2(L3_2)
    L3_2 = 7500
    L4_2 = false
    L5_2 = {}
    L5_2.scenario = "WORLD_HUMAN_STAND_MOBILE"
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = LR
  L1_2 = L1_2.showObjective
  L2_2 = locale
  L3_2 = "wholesale_title"
  L2_2 = L2_2(L3_2)
  L3_2 = locale
  L4_2 = "obj_waiting_offer"
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L3_1(L4_1, L5_1)
L3_1 = {}
L3_1["1009"] = "PAGEUP"
L3_1["1010"] = "PAGEDOWN"
L4_1 = RegisterNetEvent
L5_1 = "lunar_drugscreator:wholesale:offer"
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = LR
  L3_2 = L3_2.showObjective
  L4_2 = locale
  L5_2 = "wholesale_title"
  L4_2 = L4_2(L5_2)
  L5_2 = locale
  L6_2 = "obj_offer"
  L7_2 = A1_2
  L8_2 = Utils
  L8_2 = L8_2.getItemLabel
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L9_2 = A2_2
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = LR
  L3_2 = L3_2.showUI
  L4_2 = locale
  L5_2 = "offer_keybinds"
  L6_2 = L1_1
  L7_2 = L6_2
  L6_2 = L6_2.getCurrentKey
  L6_2 = L6_2(L7_2)
  L7_2 = L3_1
  L6_2 = L7_2[L6_2]
  if not L6_2 then
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.getCurrentKey
    L6_2 = L6_2(L7_2)
  end
  L7_2 = L2_1
  L8_2 = L7_2
  L7_2 = L7_2.getCurrentKey
  L7_2 = L7_2(L8_2)
  L8_2 = L3_1
  L7_2 = L8_2[L7_2]
  if not L7_2 then
    L7_2 = L2_1
    L8_2 = L7_2
    L7_2 = L7_2.getCurrentKey
    L7_2 = L7_2(L8_2)
  end
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = true
  L0_1 = L3_2
end
L4_1(L5_1, L6_1)
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = Utils
  L2_2 = L2_2.offsetCoords
  L3_2 = ServerConfig
  L3_2 = L3_2.wholesaleSettings
  L3_2 = L3_2.locations
  L3_2 = L3_2[A0_2]
  L4_2 = 2.0
  L5_2 = 5.5
  L6_2 = 0.0
  L7_2 = 0.0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if 1 == A1_2 then
    L3_2 = "hs3f_all_drp2"
    if L3_2 then
      goto lbl_18
    end
  end
  L3_2 = "hs3f_all_drp1"
  ::lbl_18::
  L4_2 = RequestCutscene
  L5_2 = L3_2
  L4_2(L5_2)
  while true do
    L4_2 = HasCutsceneLoaded
    L4_2 = L4_2()
    if L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 0
    L4_2(L5_2)
  end
  L4_2 = DoScreenFadeIn
  L5_2 = 1000
  L4_2(L5_2)
  L4_2 = SetCutsceneOrigin
  L5_2 = L2_2.x
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  L7_2 = L7_2 - 1.0
  L8_2 = 0.0
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = SetEntityVisible
  L5_2 = cache
  L5_2 = L5_2.ped
  L6_2 = false
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = NetworkSetEntityInvisibleToNetwork
  L5_2 = cache
  L5_2 = L5_2.ped
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = ClonePed
  L5_2 = cache
  L5_2 = L5_2.ped
  L6_2 = false
  L7_2 = true
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = SetEntityHeading
  L6_2 = L4_2
  L7_2 = L2_2.w
  L5_2(L6_2, L7_2)
  L5_2 = RegisterEntityForCutscene
  L6_2 = L4_2
  L7_2 = "MP_1"
  L8_2 = 0
  L9_2 = GetEntityModel
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  L10_2 = 64
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = SetCutsceneEntityStreamingFlags
  L6_2 = "MP_1"
  L7_2 = 0
  L8_2 = 1
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = {}
  L6_2 = 2
  L7_2 = 4
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = CreatePed
    L11_2 = 4
    L12_2 = 1885233650
    L13_2 = L2_2.x
    L14_2 = L2_2.y
    L15_2 = L2_2.z
    L16_2 = 0.0
    L17_2 = false
    L18_2 = true
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L5_2[L9_2] = L10_2
    L11_2 = RegisterEntityForCutscene
    L12_2 = L10_2
    L13_2 = "MP_"
    L14_2 = L9_2
    L13_2 = L13_2 .. L14_2
    L14_2 = 0
    L15_2 = GetEntityModel
    L16_2 = L10_2
    L15_2 = L15_2(L16_2)
    L16_2 = 64
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L11_2 = SetCutsceneEntityStreamingFlags
    L12_2 = "MP_"
    L13_2 = L9_2
    L12_2 = L12_2 .. L13_2
    L13_2 = 0
    L14_2 = 1
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = SetEntityVisible
    L12_2 = L10_2
    L13_2 = false
    L14_2 = false
    L11_2(L12_2, L13_2, L14_2)
  end
  L6_2 = StartCutscene
  L7_2 = 0
  L6_2(L7_2)
  L6_2 = Wait
  L7_2 = 10
  L6_2(L7_2)
  L6_2 = ClonePedToTarget
  L7_2 = cache
  L7_2 = L7_2.ped
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = Wait
  if 1 == A1_2 then
    L7_2 = 9000
    if L7_2 then
      goto lbl_134
    end
  end
  L7_2 = 5000
  ::lbl_134::
  L6_2(L7_2)
  L6_2 = DoScreenFadeOut
  L7_2 = 1000
  L6_2(L7_2)
  L6_2 = Wait
  L7_2 = 1000
  L6_2(L7_2)
  L6_2 = StopCutsceneImmediately
  L6_2()
  L6_2 = NetworkSetEntityInvisibleToNetwork
  L7_2 = cache
  L7_2 = L7_2.ped
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = SetEntityVisible
  L7_2 = cache
  L7_2 = L7_2.ped
  L8_2 = true
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = DeleteEntity
  L7_2 = L4_2
  L6_2(L7_2)
  L6_2 = 2
  L7_2 = 4
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = DeleteEntity
    L11_2 = L5_2[L9_2]
    L10_2(L11_2)
  end
  L6_2 = SetEntityCoords
  L7_2 = cache
  L7_2 = L7_2.ped
  L8_2 = L2_2.x
  L9_2 = L2_2.y
  L10_2 = L2_2.z
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = SetGameplayCamRelativeHeading
  L7_2 = 0.0
  L6_2(L7_2)
  L6_2 = Wait
  L7_2 = 2000
  L6_2(L7_2)
  L6_2 = DoScreenFadeIn
  L7_2 = 1000
  L6_2(L7_2)
  L6_2 = TriggerServerEvent
  L7_2 = "lunar_drugscreator:wholesale:completeOffer"
  L8_2 = A0_2
  L6_2(L7_2, L8_2)
end
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:wholesale:mission"
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ServerConfig
  L2_2 = L2_2.wholesaleSettings
  L2_2 = L2_2.locations
  L2_2 = L2_2[A0_2]
  L3_2 = LR
  L3_2 = L3_2.showObjective
  L4_2 = locale
  L5_2 = "wholesale_title"
  L4_2 = L4_2(L5_2)
  L5_2 = locale
  L6_2 = "obj_go_to_gps"
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = Utils
  L3_2 = L3_2.createBlip
  L4_2 = L2_2
  L5_2 = {}
  L6_2 = locale
  L7_2 = "wholesale_blip"
  L6_2 = L6_2(L7_2)
  L5_2.name = L6_2
  L5_2.sprite = 480
  L5_2.color = 2
  L5_2.size = 0.8
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = SetBlipRoute
  L5_2 = L3_2.value
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = Utils
  L4_2 = L4_2.createPed
  L5_2 = L2_2
  L6_2 = {}
  if 1 == A1_2 then
    L7_2 = 1466037421
    if L7_2 then
      goto lbl_42
    end
  end
  L7_2 = -236444766
  ::lbl_42::
  L6_2.model = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = CreateThread
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    while true do
      L0_3 = L0_1
      if not L0_3 then
        break
      end
      L0_3 = Utils
      L0_3 = L0_3.distanceCheck
      L1_3 = cache
      L1_3 = L1_3.ped
      L2_3 = L2_2
      L3_3 = 50.0
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      if L0_3 then
        L0_3 = L4_2.get
        L0_3 = L0_3()
        if L0_3 then
          L1_3 = SetPedDefaultComponentVariation
          L2_3 = L0_3
          L1_3(L2_3)
        end
      end
      L0_3 = Wait
      L1_3 = 1000
      L0_3(L1_3)
    end
  end
  L5_2(L6_2)
  while true do
    L5_2 = Utils
    L5_2 = L5_2.distanceCheck
    L6_2 = cache
    L6_2 = L6_2.ped
    L7_2 = L2_2
    L8_2 = 10.0
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      L5_2 = IsPedInAnyVehicle
      L6_2 = cache
      L6_2 = L6_2.ped
      L7_2 = false
      L5_2 = L5_2(L6_2, L7_2)
      if not L5_2 then
        break
      end
    end
    L5_2 = Wait
    L6_2 = 100
    L5_2(L6_2)
  end
  L5_2 = L4_2.remove
  L5_2()
  L5_2 = L3_2.remove
  L5_2()
  L5_2 = L4_1
  L6_2 = A0_2
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
end
L5_1(L6_1, L7_1)
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:wholesale:stop"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = LR
    L1_2 = L1_2.notify
    L2_2 = locale
    L3_2 = "no_items_to_sell"
    L2_2 = L2_2(L3_2)
    L3_2 = "error"
    L1_2(L2_2, L3_2)
  end
  L1_2 = LR
  L1_2 = L1_2.hideObjective
  L1_2()
end
L5_1(L6_1, L7_1)
