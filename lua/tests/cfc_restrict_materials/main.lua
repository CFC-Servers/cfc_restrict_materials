local function checkMat( mat )
    local prop = ents.Create( "prop_physics" )
    local mat1 = prop:GetMaterial()
    prop:SetMaterial( mat )
    local mat2 = prop:GetMaterial()
    return mat1 == mat2
end

return {
    {
        name = "Check if allowed materials are properly changed.",
        func = function()
            local same = checkMat( "brick/brick_model" )
            expect( !same )
        end
    },
    {
        name = "Check if not materials are not applied.",
        func = function()
            local same = checkMat( "pp/copy" )
            expect( same )
        end
    },
}
