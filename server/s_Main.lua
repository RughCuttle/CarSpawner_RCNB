outputChatBox("3c")
addEvent("requestSpawnVehicle", true)
addEventHandler("requestSpawnVehicle", resourceRoot, spawnVehicle) 
addEventHandler("onMarkerHit", resourceRoot, replyToCreateGUI)
--addEventHandler("onMarkerHit", resourceRoot, MarkerSpawnVeh)         
addEventHandler("onMarkerHit", resourceRoot, destroyMarker)
addCommandHandler("pos", ShowElementCurrentRotation)
addCommandHandler ( "gui", replyToCreateGUI )
--test