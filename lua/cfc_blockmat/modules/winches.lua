local rawget = rawget
local string_sub = string.sub
local badPrefixes = CFCBlockMats.badConstraintPrefixes

local original = constraint.Winch
CFCBlockMats.originals["Winch"] = original

constraint.Winch = function( a, b, c, d, e, f, g, h, i, j, k, l, material, n, o )
    if rawget( badPrefixes, string_sub( material, 1, 3 ) ) then return end
    return original( a, b, c, d, e, f, g, h, i, j, k, l, material, n, o )
end
