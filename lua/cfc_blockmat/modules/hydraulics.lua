local rawget = rawget
local string_sub = string.sub
local badPrefixes = CFCBlockMats.badConstraintPrefixes

local original = constraint.Hydraulic
CFCBlockMats.originals.Hydraulic = original

constraint.Hydraulic = function( a, b, c, d, e, f, g, h, i, j, k, l, m, material, o )
    if rawget( badPrefixes, string_sub( material, 1, 3 ) ) then return end
    return original( a, b, c, d, e, f, g, h, i, j, k, l, m, material, o )
end
