outputChatBox("4d")
local mPosX, mPosY, mPosZ = -2429.3, -613.3, 131.2 
local listMarkers = {
    createMarker(mPosX, mPosY, mPosZ, "cylinder", 1.5, 255, 0, 0, 90),
    createMarker(mPosX+10, mPosY, mPosZ, "cylinder", 1.5, 255, 0, 0, 90),
    createMarker(mPosX-10, mPosY, mPosZ, "cylinder", 1.5, 255, 0, 0, 90)
    } 
function DestroyMarker(hitElement)
	local elementType = getElementType(hitElement)
    local playerName = getPlayerName(hitElement)
        if (elementType == "player") then
            destroyElement(source)
        end
    end