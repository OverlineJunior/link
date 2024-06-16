local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Shared = require(script.Parent.Shared)

local container = Instance.new('Folder')
container.Name = Shared.REMOTE_CONTAINER_NAME
container.Parent = ReplicatedStorage

local LinkServer = {}


function LinkServer.event(): RemoteEvent
    local remEvent = Instance.new('RemoteEvent')
    remEvent.Name = Shared.GenerateRemoteId()
    remEvent.Parent = container

    return remEvent
end


function LinkServer.unreliableEvent(): UnreliableRemoteEvent
    local remEvent = Instance.new('UnreliableRemoteEvent')
    remEvent.Name = Shared.GenerateRemoteId()
    remEvent.Parent = container

    return remEvent
end


function LinkServer.fn(): RemoteFunction
    local remFn = Instance.new('RemoteFunction')
    remFn.Name = Shared.GenerateRemoteId()
    remFn.Parent = container

    return remFn
end


return LinkServer
