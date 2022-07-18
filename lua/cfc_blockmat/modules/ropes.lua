local IsBad = CFCBlockMats.IsBad
local original = constraint.Rope
CFCBlockMats.originals.Rope = original

constraint.Rope = function( a, b, c, d, e, f, g, h, i, j, material, ... )
    if IsBad( material ) then return end
    return original( a, b, c, d, e, f, g, h, i, j, material, ... )
end
