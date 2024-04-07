outputChatBox("2b") 
function spawnVehicle()
    iprint(getPlayerName(client)) 
    local ePosX, ePosY, ePosZ = getPositionFromElementOffset(client, 0, 3, 0)
    local x, y, rotZ = getElementRotation(client)
    local playerName = getPlayerName(client)
    local vehicle = createVehicle(445, ePosX, ePosY, ePosZ, 0, 0, rotZ+90)
    if vehicle then 
        outputChatBox("Elemento ("..playerName.."), spawnar carro.") 
    end
end
function replyToCreateGUI(hitElement)
     --if isElement(hitElement) and getElementType(hitElement) == "player" and not getPedOccupiedVehicle(hitElement) then
    if isPlayerOnFoot(hitElement) then
        triggerClientEvent(hitElement, "clientCreateGUI", hitElement, "Car Spawner")
     end
end