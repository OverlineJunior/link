local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Remotes = require(ReplicatedStorage.Shared.Remotes)

Remotes.Namespace.SendMessage.OnClientEvent:Connect(function(msg: string)
    print(msg)
end)

local money = Remotes.GetMoney:InvokeServer()
print('Money:', money)
