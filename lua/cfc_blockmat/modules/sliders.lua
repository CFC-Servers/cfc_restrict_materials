local rawget = rawget
local string_sub = string.sub
local badPrefixes = CFCBlockMats.badConstraintPrefixes

local original = constraint.Slider
CFCBlockMats.originals.Slider = original

constraint.Slider = function( a, b, c, d, e, f, g, material, i )
    if rawget( badPrefixes, string_sub( material, 1, 3 ) ) then return end
    return original( a, b, c, d, e, f, g, material, i )
end
