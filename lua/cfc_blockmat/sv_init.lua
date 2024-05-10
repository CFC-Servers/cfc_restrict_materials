local rawget = rawget
local string_sub = string.sub
local string_find = string.find

local badConstraintPrefixes = {
    ["pp/"] = true,
    ["effects/"] = true,
    ["sprites/"] = true,
    ["trails/"] = true,
    ["shadertest/"] = true,
    ["particle/"] = true,
    ["shadertest/"] = true,
    ["debug/"] = true,
    ["models/"] = true
}

CFCBlockMats = {
    originals = {},
    IsBad = function( material )
        if not material then return false end

        local firstSlash = string_find( material, "/", 3, 11, true )
        if not firstSlash then return false end

        material = string_sub( material, 1, firstSlash )
        return rawget( badConstraintPrefixes, material ) or false
    end
}

include( "modules/keyframe_ropes.lua" )
