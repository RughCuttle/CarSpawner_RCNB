outputChatBox("3c")
addEvent("s_SpawnVeh", true)
addEventHandler("s_SpawnVeh", resourceRoot, MarkerSpawnVeh) 
addEventHandler("onMarkerHit", resourceRoot, s_ClientCreateWindow)
--addEventHandler("onMarkerHit", resourceRoot, MarkerSpawnVeh)         
addEventHandler("onMarkerHit", resourceRoot, DestroyMarker)
addCommandHandler("pos", ShowElementCurrentRotation)
addCommandHandler ( "gui", s_ClientCreateWindow )