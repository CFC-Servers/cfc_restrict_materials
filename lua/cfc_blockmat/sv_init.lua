CFCBlockMats = {
    originals = {},
    badConstraintPrefixes = {
        ["pp/"] = true,
        ["effects/"] = true,
        ["sprits/"] = true,
        ["particle/"] = true,
        ["shadertest/"] = true,
        ["debug/"] = true
    }

}

include( "modules/elastics.lua" )
include( "modules/hydraulics.lua" )
include( "modules/materials.lua" )
include( "modules/muscles.lua" )
include( "modules/pulleys.lua" )
include( "modules/ropes.lua" )
include( "modules/sliders.lua" )
include( "modules/winches.lua" )
