outputChatBox("1a")
function getPositionFromElementOffset(element,offX,offY,offZ) -- Utility func not. mine
    local m = getElementMatrix ( element )  -- Get the matrix
    local x = offX * m[1][1] + offY * m[2][1] + offZ * m[3][1] + m[4][1]  -- Apply transform
    local y = offX * m[1][2] + offY * m[2][2] + offZ * m[3][2] + m[4][2]
    local z = offX * m[1][3] + offY * m[2][3] + offZ * m[3][3] + m[4][3]
    --iprint(string.format("matrix info -> %.2f  %.2f %.2f", m[2][1], m[2][2], m[2][3]))
    return x, y, z                               -- Return the transformed point
end
function ShowElementCurrentRotation(element, commandName)
    local eRotX, eRotY, eRotZ = getElementRotation(element)
    local ePosX, ePosY, ePosZ = getElementPosition(element)
    local elementType = getElementType(element)
    --iprint(string.format("%s Pos -> x: %.2f y: %.2f z: %.2f -- Rotation -> z: %.2f", elementType, ePosX, ePosY, ePosZ ,eRotZ))
end
