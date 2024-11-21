--[[ AddEventHandler('playerSpawned', function()

end) ]]

local function ekrangel()
    ShutdownLoadingScreen()
    ShutdownLoadingScreenNui()
    Wait(500)
    SendNUIMessage({
     type = "ekranigetir" 
     })
    SetNuiFocus(true, true)
end

CreateThread(function()
	while true do
		Wait(0)
		if NetworkIsSessionStarted() then
			ekrangel()
			return
		end
	end
end)

RegisterNUICallback('pressed', function(data, cb)
    SetNuiFocus(false, false)
    -- what ever you want after client pressing [space]
    cb('ok')
end)