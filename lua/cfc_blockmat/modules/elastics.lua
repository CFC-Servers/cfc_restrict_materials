local IsBad = CFCBlockMats.IsBad
local original = constraint.Elastic
CFCBlockMats.originals.Elastic = original

constraint.Elastic = function( a, b, c, d, e, f, g, h, i, material, ... )
    if IsBad( material ) then return end
    return original( a, b, c, d, e, f, g, h, i, material, ... )
end
