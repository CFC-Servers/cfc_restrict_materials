local function checkMat( mat )
    local prop = ents.Create( "prop_physics" )
    local mat1 = prop:GetMaterial()
    prop:SetMaterial( mat )
    local mat2 = prop:GetMaterial()

    prop:Remove()
    return mat1 == mat2
end
return {
    {
        name = "It should work properly with unblocked materials",
        func = function()
            local same = checkMat( "brick/brick_model" )
            expect( !same )
        end
    },
    {
        name = "It should prevent blocked materials from being used",
        func = function()
            local same = checkMat( "pp/copy" )
            expect( same )
        end
    },
}
