local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Link = require(ReplicatedStorage.Shared.Link)

local Remotes = {
    Namespace = {
        SendMessage = Link.event(),
    },
    GetMoney = Link.fn(),
}

return Remotes
