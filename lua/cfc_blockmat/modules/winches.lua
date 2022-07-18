local IsBad = CFCBlockMats.IsBad
local original = constraint.Winch
CFCBlockMats.originals.Winch = original

constraint.Winch = function( a, b, c, d, e, f, g, h, i, j, k, l, material, ... )
    if IsBad( material ) then return end
    return original( a, b, c, d, e, f, g, h, i, j, k, l, material, ... )
end
