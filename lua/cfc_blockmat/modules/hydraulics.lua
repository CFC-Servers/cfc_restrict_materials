local IsBad = CFCBlockMats.IsBad
local original = constraint.Hydraulic
CFCBlockMats.originals.Hydraulic = original

constraint.Hydraulic = function( a, b, c, d, e, f, g, h, i, j, k, l, m, material, ... )
    if IsBad( material ) then return end
    return original( a, b, c, d, e, f, g, h, i, j, k, l, m, material, ... )
end
