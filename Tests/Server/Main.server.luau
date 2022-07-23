local Players = game:GetService('Players')
local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Remotes = require(ReplicatedStorage.Shared.Remotes)

Players.PlayerAdded:Connect(function(player)
    Remotes.Namespace.SendMessage:FireClient(player, 'Message from the server')
end)

Remotes.GetMoney.OnServerInvoke = function()
    return 10
end
