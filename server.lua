ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('cmt_farm:additem')
AddEventHandler('cmt_farm:additem', function(item, count)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem(item, count)  
end)

RegisterServerEvent('cmt_farm:addblackmoney')
AddEventHandler('cmt_farm:addblackmoney', function(money)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addAccountMoney('black_money', money)
end)

RegisterServerEvent('cmt_farm:addmoney')
AddEventHandler('cmt_farm:addmoney', function(money)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addMoney(money) 
end)

ESX.RegisterServerCallback('cmt_farm:getinventory', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local inventory = xPlayer.getInventory()
    cb(inventory)
end)    

RegisterServerEvent('cmt_farm:removeitem')
AddEventHandler('cmt_farm:removeitem', function(item, count)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem(item, count)  
end)