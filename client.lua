ESX = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local CanFarm = true

Citizen.CreateThread(function()
    Citizen.Wait(10000)
    for i=1, #Config.farms, 1 do
        farm = Config.farms[i]
        if farm.blip.enabled then
            local blip = AddBlipForCoord(farm.location)
            SetBlipSprite(blip, farm.blip.blip)
            SetBlipAsShortRange(blip, true)
            SetBlipColour(blip, farm.blip.color)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString(farm.blip.label)
            EndTextCommandSetBlipName(blip)
        end
    end

    for i=1, #Config.workers, 1 do
        worker = Config.workers[i]
        if worker.blip.enabled then
            local blip = AddBlipForCoord(worker.location)
            SetBlipSprite(blip, worker.blip.blip)
            SetBlipAsShortRange(blip, true)
            SetBlipColour(blip, worker.blip.color)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString(worker.blip.label)
            EndTextCommandSetBlipName(blip)
        end
    end

    for i=1, #Config.sellers, 1 do
        seller = Config.sellers[i]
        if seller.blip.enabled then
            local blip = AddBlipForCoord(seller.location)
            SetBlipSprite(blip, seller.blip.blip)
            SetBlipAsShortRange(blip, true)
            SetBlipColour(blip, seller.blip.color)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString(seller.blip.label)
            EndTextCommandSetBlipName(blip)
        end
    end
    RequestAnimDict("random@domestic")
    while not HasAnimDictLoaded("random@domestic") do
        Citizen.Wait(100)
    end
end)

Citizen.CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        for i=1, #Config.farms, 1 do
            farm = Config.farms[i]
            local distance = GetDistanceBetweenCoords(coords, farm.location, true)
            if distance < farm.radius then
                ESX.ShowHelpNotification("Drücke~g~ E ~w~um ~".. farm.item.color .."~" .. farm.item.label .. "~w~ zu farmen")
            end
        end
        for i=1, #Config.workers, 1 do
            worker = Config.workers[i]
            local distance = GetDistanceBetweenCoords(coords, worker.location, true)
            if distance < worker.radius then
                ESX.ShowHelpNotification("Drücke~g~ E ~w~um ~".. worker.reward.color .."~" .. worker.reward.label .. "~w~ zu produzieren")
            end
        end
        for i=1, #Config.sellers, 1 do
            seller = Config.sellers[i]
            local distance = GetDistanceBetweenCoords(coords, seller.location, true)
            if distance < seller.radius then
                ESX.ShowHelpNotification("Drücke~g~ E ~w~um ~".. seller.item.color .."~" .. seller.item.label .. "~w~ zu verkaufen")
            end
        end
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId() 
		local coords = GetEntityCoords(playerPed)
		local canSleep = true

        for i=1, #Config.farms, 1 do
            local farm = Config.farms[i]
            local distance = GetDistanceBetweenCoords(coords, farm.location, true)
            if CheckCanFarm() then
                if distance < farm.radius then
                    if farm.cooldown > 5 then
                        ESX.ShowNotification("~" .. worker.reward.color .. "~" .. worker.reward.label .. "~w~sammeln gestartet", "RZR | Farm")
                    end
                    canSleep = false
                    if IsControlJustReleased(0, 38) then
                        CanFarm = false
                        TaskPlayAnim(playerPed, farm.animation.dictionary, farm.animation.animation, 2.0, 2.0, farm.animation.duration, 1, 0, false, false, false)
                        Citizen.Wait(farm.cooldown*1000)
                        TriggerServerEvent("cmt_farm:additem", farm.item.item, farm.item.count)
                        --ESX.ShowNotification("+ " .. farm.item.count .. " " .. farm.item.label .. " hinzugefügt", "RZR | Farm")
                        CanFarm = true
                    end
                end
            end
        end

        for i=1, #Config.workers, 1 do
            local worker = Config.workers[i]
            local distance = GetDistanceBetweenCoords(coords, worker.location, true)
            if CheckCanFarm() then
                if distance < worker.radius then
                    canSleep = false
                    if IsControlJustReleased(0, 38) then
                        ESX.TriggerServerCallback('cmt_farm:getinventory', function(inv)
                            for i=1, #inv, 1 do
                                item = inv[i]
                                if item.name == worker.item.item then
                                    if item.count >= worker.item.count then
                                        if worker.cooldown > 5 then
                                            ESX.ShowNotification("~" .. worker.reward.color .. "~" .. worker.reward.label .. "~w~produktion gestartet", "RZR | Farm")
                                        end
                                        CanFarm = false
                                        TaskPlayAnim(playerPed, worker.animation.dictionary, worker.animation.animation, 2.0, 2.0, worker.animation.duration, 1, 0, false, false, false)
                                        Citizen.Wait(worker.cooldown*500)
                                        TriggerServerEvent("cmt_farm:removeitem", worker.item.item, worker.item.count)
                                        --ESX.ShowNotification("- " .. worker.item.count .. " " .. worker.item.label .. " entfernt", "RZR | Farm")
                                        Citizen.Wait(worker.cooldown*500)
                                        TriggerServerEvent("cmt_farm:additem", worker.reward.item, worker.reward.count)
                                        --ESX.ShowNotification("+ " .. worker.reward.count .. " " .. worker.reward.label .. " hinzugefügt", "RZR | Farm")
                                        CanFarm = true
                                    else
                                        ESX.ShowNotification("Du brauchst minestens ~r~" .. worker.item.count .. "x " .. worker.item.label .. "~w~ um ~" .. worker.reward.color .. "~" .. worker.reward.label .. " ~w~zu produzieren!", "RZR | Farm")
                                    end
                                end
                            end
                        end)
                    end
                end
            end
        end

        for i=1, #Config.sellers, 1 do
            local seller = Config.sellers[i]
            local distance = GetDistanceBetweenCoords(coords, seller.location, true)
            if CheckCanFarm() then
                if distance < seller.radius then
                    canSleep = false
                    if IsControlJustReleased(0, 38) then
                        ESX.TriggerServerCallback('cmt_farm:getinventory', function(inv)
                            for i=1, #inv, 1 do
                                item = inv[i]
                                if item.name == seller.item.item then
                                    if item.count >= seller.item.count then
                                        if seller.cooldown > 5 then
                                            ESX.ShowNotification("~" .. seller.reward.color .. "~" .. seller.reward.label .. "~w~verkauf gestartet", "RZR | Farm")
                                        end
                                        CanFarm = false

                                        TriggerEvent("rzrp:emote", "pickup")
                                        Citizen.Wait(seller.cooldown*500)
                                        TriggerServerEvent("cmt_farm:removeitem", seller.item.item, seller.item.count)
                                        ESX.ShowNotification("- " .. seller.item.count .. " " .. seller.item.label .. " entfernt", "RZR | Farm")
                                        Citizen.Wait(seller.cooldown*500)
                                        if seller.reward.isBlack then
                                            TriggerServerEvent("cmt_farm:addblackmoney", seller.reward.money)
                                            ESX.ShowNotification("Hier hast du dein Geld\n+ ~r~$" .. seller.reward.money, "RZR | Farm")
                                        else
                                            TriggerServerEvent("cmt_farm:addmoney", seller.reward.money)
                                            ESX.ShowNotification("Hier hast du dein Geld\n+ ~g~$" .. seller.reward.money, "RZR | Farm")
                                        end
                                        CanFarm = true
                                    else
                                        ESX.ShowNotification("Verpiss dich ich will mindestens ~" .. seller.item.color .. "~" .. seller.item.count .. "x " .. seller.item.label .. "!", "RZR | Farm")
                                    end
                                end
                            end
                        end)
                    end
                end
            end
        end
	end
end)

function pickupHack()
    local ped = GetPlayerPed(-1)
    local x,y,z = table.unpack(GetEntityCoords(playerPed, true))
      if not IsEntityPlayingAnim(ped, "random@domestic", "pickup_low", 3) then
      FreezeEntityPosition(ped,true)
        RequestAnimDict("random@domestic")
          while not HasAnimDictLoaded("random@domestic") do
            Citizen.Wait(100)
          end
        TaskPlayAnim(ped, "random@domestic", "pickup_low", 8.0, -8, -1, 49, 0, 0, 0, 0)
      end
end

function CheckCanFarm()
	local playerPed = PlayerPedId()
	if IsPedSittingInAnyVehicle(playerPed) then
		return true
	end
    if CanFarm then
        return true
    end
    return false
end

Citizen.CreateThread(function()

    for _,v in pairs(Config.npcs) do
      RequestModel(GetHashKey(v[6]))
      while not HasModelLoaded(GetHashKey(v[6])) do
        Wait(1)
      end
  
      RequestAnimDict("mini@strip_club@idles@bouncer@base")
      while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
        Wait(1)
      end
      ped =  CreatePed(4, v[5],v[1],v[2],v[3], 3374176, false, true)
      SetEntityHeading(ped, v[4])
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
      TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)