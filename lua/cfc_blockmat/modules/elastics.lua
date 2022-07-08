local rawget = rawget
local string_sub = string.sub
local badPrefixes = CFCBlockMats.badConstraintPrefixes

local original = constraint.Elastic
CFCBlockMats.originals.Elastic = original

constraint.Elastic = function( a, b, c, d, e, f, g, h, i, material, k, l, m )
    if rawget( badPrefixes, string_sub( material, 1, 3 ) ) then return end
    return original( a, b, c, d, e, f, g, h, i, material, k, l, m )
end
