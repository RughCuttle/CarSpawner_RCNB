function CreateWindow(WindowTitle)
    Element_GUI = guiCreateWindow(0.5, 0.5, 0.25, 0.25, WindowTitle, true)
    button1 = guiCreateButton(0.5, 0.7, 0.15, 0.20, "Spawn", true, Element_GUI) 
    guiSetVisible(Element_GUI, false)
    addEventHandler("onClientGUIClick", button1, s_SpawnVeh, false)
end
function s_SpawnVeh()
    triggerServerEvent("s_SpawnVeh",  resourceRoot)
    guiSetInputEnabled(false)
    guiSetVisible(Element_GUI, false)
    showCursor(false)
end
function WindowHandler(WindowTitle)
    CreateWindow(WindowTitle)
    if (Element_GUI ~= nil) then
        guiSetVisible(Element_GUI, true)
        showCursor(true)
        guiSetInputEnabled(true)
    else 
        outputChatBox("An unexpected error has occurred and the login GUI has not been created.")
    end
end