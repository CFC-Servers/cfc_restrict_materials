local rawget = rawget
local string_sub = string.sub
local badPrefixes = CFCBlockMats.badConstraintPrefixes

local original = constraint.Muscle
CFCBlockMats.originals.Muscle = original

constraint.Muscle = function( a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, material, q )
    if rawget( badPrefixes, string_sub( material, 1, 3 ) ) then return end
    return original( a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, material, q )
end
