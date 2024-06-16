local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Shared = require(script.Parent.Shared)

local container = ReplicatedStorage:WaitForChild(Shared.REMOTE_CONTAINER_NAME)

local LinkClient = {}


function LinkClient.event(): RemoteEvent
    return container[Shared.GenerateRemoteId()]
end


function LinkClient.unreliableEvent(): UnreliableRemoteEvent
    return container[Shared.GenerateRemoteId()]
end


function LinkClient.fn(): RemoteFunction
    return container[Shared.GenerateRemoteId()]
end


return LinkClient
