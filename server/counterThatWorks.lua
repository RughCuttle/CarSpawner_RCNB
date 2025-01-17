local count2 = 0
local count = 0
function launchItem ()
    poffx, poffy, poffz = getPositionFromElementOffset(localPlayer,0,1.5,0)
    rX, rY, rotZ = getElementRotation(localPlayer)
    setElementPosition(tree001, poffx, poffy, poffz)
    setElementRotation(tree001, 0 , 0, rotZ)
    if count < 5 then
        playerVx1, playerVy1, playerVz1 = getElementVelocity(localPlayer)
        --outputChatBox(string.format("contar: %s", count))
        if (playerVx1 ~= 0 and playerVy1 ~= 0) then
            --Just so we can set where it should throw this shit correctly
            playerVx2, playerVy2, playerVz2 = getElementVelocity(localPlayer)
        end
        count = count + 1
    else 
        if count2 < 2 then
            count2 = count2 + 1
            --outputChatBox(string.format("contar 2: %s", count2))
        else 
            count = 0
            count2 = 0
        end
    end
    if getControlState(localPlayer, "jump") then
        setElementVelocity(tree001, 2*playerVx2, 2*playerVy2, 0.1)
        --outputChatBox(string.format("velocitX: X %s Y %s ", playerVx2 ,playerVy2))
        removeEventHandler("onClientRender", root, launchItem)
    end
end
addEventHandler("onClientRender", root, launchItem)
