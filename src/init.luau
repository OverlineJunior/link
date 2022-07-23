local RunService = game:GetService('RunService')

return if RunService:IsServer() then
    require(script.LinkServer)
else
    require(script.LinkClient)
