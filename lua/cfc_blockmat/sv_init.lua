local rawget = rawget
local string_sub = string.sub
local string_find = string.find

local badConstraintPrefixes = {
    ["pp/"] = true,
    ["effects/"] = true,
    ["sprites/"] = true,
    ["particle/"] = true,
    ["shadertest/"] = true,
    ["debug/"] = true
}

CFCBlockMats = {
    originals = {},
    IsBad = function( material )
        local firstSlash = string_find( material, "/", 3, 11, true )
        if not firstSlash then return false end

        material = string_sub( material, 1, firstSlash )
        return rawget( badConstraintPrefixes, material ) or false
    end
}

include( "modules/elastics.lua" )
include( "modules/hydraulics.lua" )
include( "modules/keyframe_ropes.lua" )
include( "modules/muscles.lua" )
include( "modules/pulleys.lua" )
include( "modules/ropes.lua" )
include( "modules/sliders.lua" )
include( "modules/winches.lua" )
