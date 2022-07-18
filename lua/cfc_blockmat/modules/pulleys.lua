local IsBad = CFCBlockMats.IsBad
local original = constraint.Pulley
CFCBlockMats.originals["Pulley"] = original

constraint.Pulley = function( a, b, c, d, e, f, g, h, i, j, k, material, ... )
    if IsBad( material ) then return end
    return original( a, b, c, d, e, f, g, h, i, j, k, material, ... )
end
