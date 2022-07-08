local rawget = rawget
local string_sub = string.sub
local badPrefixes = CFCBlockMats.badConstraintPrefixes

local original = constraint.CreateKeyframeRope
CFCBlockMats.originals.CreateKeyframeRope = original

constraint.CreateKeyframeRope = function( a, b, material, d, e, f, g, h, i, j, k )
    if rawget( badPrefixes, string_sub( material, 1, 3 ) ) then return end
    return original( a, b, material, d, e, f, g, h, i, j, k )
end
