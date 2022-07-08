local rawget = rawget
local string_sub = string.sub
local badPrefixes = CFCBlockMats.badConstraintPrefixes

local original = constraint.Rope
CFCBlockMats.originals.Rope = original

constraint.Rope = function( a, b, c, d, e, f, g, h, i, j, material, l, m )
    if rawget( badPrefixes, string_sub( material, 1, 3 ) ) then return end
    return original( a, b, c, d, e, f, g, h, i, j, material, l, m )
end
