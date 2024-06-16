local RunService = game:GetService('RunService')

--[=[
    @class Link

    Extremely simple networking library that allows you to create shared modules for remotes that are the same between both the client and server.

    ```lua
    --// Shared
    local Link = require(ReplicatedStorage.Packages.Link)

    local Remotes = {
        MoneyNamespace = {
            Get = Link.fn(),
        },
    }

    return Remotes

    --// Server
    local Remotes = require(ReplicatedStorage.Remotes)

    Remotes.MoneyNamespace.Get.OnServerInvoke = function()
        return 42
    end

    --// Client
    local Remotes = require(ReplicatedStorage.Remotes)

    local money = Remotes.MoneyNamespace.Get:InvokeServer()
    print('I have $' .. tostring(money))
    ```
]=]

--[=[
    @function event
    @return RemoteEvent
    @within Link

    If being called on the server, it will create a new RemoteEvent, but if being called on the client, it will instead find the server created
    RemoteEvent by the line the function was called at.

    Since Link is meant to be used in shared modules, the line is guaranteed to be the same between both environments, thus making this method possible.
]=]

--[=[
    @function unreliableEvent
    @return UnreliableRemoteEvent
    @within Link

    Same as [Link.event], but returns an UnreliableRemoteEvent instead.
]=]

--[=[
    @function fn
    @return RemoteFunction
    @within Link

    Similar to [Link.event], but returns a RemoteFunction instead.
]=]

return if RunService:IsServer() then
    require(script.LinkServer)
else
    require(script.LinkClient)
