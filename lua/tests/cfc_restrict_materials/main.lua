return {
    groupName = "SetMaterial",

    beforeEach = function( state )
        state.prop = ents.Create( "prop_physics" )
        state.prop:Spawn()
    end,

    afterEach = function( state )
        if IsValid( state.prop ) then
            state.prop:Remove()
        end
    end,

    cases = {
        {
            name = "Should work properly with unblocked materials",
            func = function( state )
                local mat = "brick/brick_model"
                expect( state.prop:GetMaterial() == mat ).to.beFalse()

                state.prop:SetMaterial( mat )
                expect( state.prop:GetMaterial() ).to.equal( mat )
            end
        },
        {
            name = "Should prevent blocked materials from being used",
            func = function()
                local mat = "pp/copy"
                local baseMat = state.prop:GetMaterial()

                expect( mat == baseMat ).to.beFalse()

                state.prop:SetMaterial( mat )
                expect( state.prop:GetMaterial() ).to.equal( baseMat )
            end
        },
    }
}
