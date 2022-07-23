local Shared = {
    REMOTE_CONTAINER_NAME = 'LinkContainer',
}


function Shared.GenerateRemoteId()
    return tostring(debug.info(3, 'l'))
end


return Shared
