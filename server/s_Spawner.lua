outputChatBox("2b") 
function spawnVehicle()
    iprint(getPlayerName(client)) 
    local ePosX, ePosY, ePosZ = getPositionFromElementOffset(client, 0, 3, 0)
    local x, y, rotZ = getElementRotation(client)
    local playerName = getPlayerName(client)
    local veh = createVehicle(445, ePosX, ePosY, ePosZ, 0, 0, rotZ+90)
    outputChatBox("Elemento ("..playerName.."), spawnar carro.") 
end
function replyToCreateGUI(client)
    triggerClientEvent(client, "clientCreateGUI", client, "Car Spawner")
end