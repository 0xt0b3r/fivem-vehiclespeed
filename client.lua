local ped = GetPlayerPed()
-- To view class types please visit https://runtime.fivem.net/doc/natives/?_0x29439776AAA00A62
local maxspeeds = {

	{class = 0, speed = 120},
	{class = 1, speed = 120},
	{class = 2, speed = 120},
	{class = 3, speed = 120},
	{class = 4, speed = 120},
	{class = 5, speed = 120},
	{class = 6, speed = 120},
	{class = 7, speed = 120},
	{class = 8, speed = 120},
	{class = 9, speed = 120},
	{class = 10, speed = 120},
	{class = 11, speed = 120},
	{class = 12, speed = 120},
	{class = 13, speed = 120},
	{class = 14, speed = 120},
	{class = 15, speed = 120},
	{class = 16, speed = 120},
	{class = 17, speed = 120},
	{class = 18, speed = 120},
	{class = 19, speed = 120},
	{class = 20, speed = 120}

}

Citizen.CreateThread(function()
	while true do
		if IsPedInAnyVehicle(ped, false) then
				local veh = GetVehiclePedIsUsing(ped)
				local speed = GetEntitySpeed(veh)
				local mph = (speed * 2.236936)
				if GetPedInVehicleSeat(veh, -1) == ped then   
					for a=1, #maxspeeds do
						if maxspeeds[a].class == GetVehicleClass(veh) then
							if speed > maxspeeds[a].speed  then
								SetVehicleEngineHealth( veh, (GetVehicleEngineHealth(veh) - 100))
							end
						end
					end
				end
		end
	end
end)
